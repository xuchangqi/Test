package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.PartDao;
import entity.Part;

public class PartDaoImpl extends HibernateDaoSupport implements PartDao {

	@Override
	public List<Part> getAll() {
		List<Part> list = getHibernateTemplate().find("from Part");
		if(list.size()>0){
			return list;
		}else{
			return null;	
		}
	}

	@Override
	public String addOne(Part part) {
		return super.getHibernateTemplate().save(part).toString();
	}

	@Override
	public Part getById(int id) {
		List<Part> list = getHibernateTemplate().find("from Part where pid=?",new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

	@Override
	public String update(Part pa) {
		try {
			getHibernateTemplate().update(pa);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

	@Override
	public String delete(Part pa) {
		try {
			getHibernateTemplate().delete(pa);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}
	
	
}
