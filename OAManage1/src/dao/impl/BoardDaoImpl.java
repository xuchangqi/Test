package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;

import dao.BoardDao;
import entity.Boardroom;
import entity.Car;

public class BoardDaoImpl extends HibernateDaoSupport implements BoardDao {

	@Override
	public Page<Boardroom> getAll(final int pageSize,final int pageIndex) {
		final Page<Boardroom> list = new Page<Boardroom>();
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session) throws HibernateException,SQLException{
						int totalPage = 0;
						Query query = session.createQuery("from Boardroom where state=?").setInteger(0, 1);
						List count = query.list();
						if(count.size()%pageSize>0){
							totalPage = count.size()/pageSize+1;
						}else{
							totalPage = count.size()/pageSize;
						}
						list.setTotalPage(totalPage);
						list.setPageIndex(pageIndex);
						query.setFirstResult((pageIndex-1)*pageSize);
						query.setMaxResults(pageSize);
						return query.list();
						}
					}
				);
		list.setList(result);
		return list;
	}

	@Override
	public String addOne(Boardroom room) {
		return super.getHibernateTemplate().save(room).toString();
	}

	@Override
	public String update(Boardroom room) {
		try {
			getHibernateTemplate().update(room);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

	@Override
	public Boardroom getById(int id) {
		List<Boardroom> list = getHibernateTemplate().find("from Boardroom where id=?",new Object[]{id});
		if(list.size()>0) return list.get(0);
		return null;
	}

}
