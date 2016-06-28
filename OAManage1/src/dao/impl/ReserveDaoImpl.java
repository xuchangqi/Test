package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;

import dao.ReserveDao;
import entity.Rentcar;
import entity.Reserveroom;

public class ReserveDaoImpl extends HibernateDaoSupport implements ReserveDao {

	@Override
	public Page<Reserveroom> getAll(final int pageSize,final int pageIndex) {
		final Page<Reserveroom> list = new Page<Reserveroom>();
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session) throws HibernateException,SQLException{
						int totalPage = 0;
						Query query = session.createQuery("from Reserveroom");
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
	public String addOne(Reserveroom rent) {
		return super.getHibernateTemplate().save(rent).toString();
	}

	@Override
	public Reserveroom getById(int id) {
		List<Reserveroom> list = getHibernateTemplate().find("from Reserveroom where RId=?",new Object[]{id});
		if(list.size()>0) return list.get(0);
		return null;
	}

	@Override
	public String update(Reserveroom re) {
		try {
			getHibernateTemplate().update(re);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

	@Override
	public String delete(Reserveroom re) {
		try {
			getHibernateTemplate().delete(re);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

}
