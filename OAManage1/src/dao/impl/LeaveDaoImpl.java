package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;


import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;

import dao.LeaveDao;
import entity.Leave;

public class LeaveDaoImpl extends HibernateDaoSupport implements LeaveDao {

	@Override
	public Page<Leave> getAll(final int pageSize, final int pageIndex) {
		final Page<Leave> list = new Page<Leave>();
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session) throws HibernateException,SQLException{
						int totalCount = 0;
						Query query = session.createQuery("from Leave");
						List count = query.list();
						if(count.size()%pageSize>0){
							totalCount = count.size()/pageSize+1;
						}else{
							totalCount = count.size()/pageSize;
						}
						list.setTotalPage(totalCount);
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
	public String addOne(Leave leave) {
		return super.getHibernateTemplate().save(leave).toString();
	}

	@Override
	public Leave getById(int id) {
		List<Leave> list = getHibernateTemplate().find("from Leave where LId = ?", new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

	@Override
	public String update(Leave le) {
		try {
			getHibernateTemplate().update(le);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

	@Override
	public String delete(Leave le) {
		try {
			getHibernateTemplate().delete(le);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

}
