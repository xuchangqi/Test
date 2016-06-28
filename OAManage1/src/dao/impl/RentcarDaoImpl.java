package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;
import dao.RentcarDao;
import entity.Car;
import entity.Rentcar;

public class RentcarDaoImpl extends HibernateDaoSupport implements RentcarDao {

	@Override
	public Page<Rentcar> getAll(final int pageSize,final int pageIndex) {
		final Page<Rentcar> list = new Page<Rentcar>();
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session) throws HibernateException,SQLException{
						int totalPage = 0;
						Query query = session.createQuery("from Rentcar");
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
	public String addOne(Rentcar rent) {
		return super.getHibernateTemplate().save(rent).toString();
	}
	@Override
	public Rentcar getById(int id) {
		List<Rentcar> list = getHibernateTemplate().find("from Rentcar where RId=?",new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}
	@Override
	public String update(Rentcar re) {
		try {
			getHibernateTemplate().update(re);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}
	@Override
	public String delete(Rentcar re) {
		try {
			getHibernateTemplate().delete(re);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

}
