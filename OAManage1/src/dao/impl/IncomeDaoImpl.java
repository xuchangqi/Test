package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;

import dao.IncomeDao;
import entity.Annunciate;
import entity.Income;

public class IncomeDaoImpl extends HibernateDaoSupport implements IncomeDao {

	@Override
	public Page<Income> getAll(final int pageSize, final int pageIndex) {
		final Page<Income> list = new Page<Income>();
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session) throws HibernateException,SQLException{
						int totalPage = 0;
						Query query = session.createQuery("from Income");
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
	public String addOne(Income income) {
		return super.getHibernateTemplate().save(income).toString();
	}

	@Override
	public Income getById(int id) {
		List<Income> list = getHibernateTemplate().find("from Income where IId=?",new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public String update(Income in) {
		try {
			getHibernateTemplate().update(in);
			return "true";
		} catch (Exception e) {
			// TODO: handle exception
			return "false";
		}
	}

	@Override
	public String delete(Income in) {
		try {
			getHibernateTemplate().delete(in);
			return "true";
		} catch (Exception e) {
			// TODO: handle exception
			return "false";
		}
	}

}
