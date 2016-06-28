package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;
import dao.AnnunciateDao;
import entity.Annunciate;
import entity.Car;

public class AnnunciateDaoImpl extends HibernateDaoSupport implements AnnunciateDao {

	@Override
	public Page<Annunciate> getAll(final int pageSize,final int pageIndex) {
		final Page<Annunciate> list = new Page<Annunciate>();
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session) throws HibernateException,SQLException{
						int totalPage = 0;
						Query query = session.createQuery("from Annunciate");
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
	public String addOne(Annunciate ann) {
		return super.getHibernateTemplate().save(ann).toString();
	}

	@Override
	public String update(Annunciate ann) {
		try {
			getHibernateTemplate().update(ann);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

	@Override
	public Annunciate byId(int id) {
		List<Annunciate> list = getHibernateTemplate().find("from Annunciate where id=?",new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

	@Override
	public String delete(Annunciate ann) {
		try {
			getHibernateTemplate().delete(ann);
			return "true";
		} catch (Exception e) {
			e.printStackTrace();
			return "false";
		}
	}
	
	

}
