package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;

import dao.DocumentDao;
import entity.Annunciate;
import entity.Document;

public class DocumentDaoImpl extends HibernateDaoSupport implements DocumentDao {

	@Override
	public Page<Document> getAll(final int pageSize,final int pageIndex) {
		final Page<Document> list = new Page<Document>();
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session) throws HibernateException,SQLException{
						int totalPage = 0;
						Query query = session.createQuery("from Document where state=?").setInteger(0, 1);
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
	public String addOne(Document doc) {
		return super.getHibernateTemplate().save(doc).toString();
	}

	@Override
	public Document getById(int id) {
		List<Document> list = getHibernateTemplate().find("from Document where DId=?",new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

	@Override
	public String update(Document oc) {
		try {
			getHibernateTemplate().update(oc);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

}
