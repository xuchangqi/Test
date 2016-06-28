package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.SectorsDao;
import entity.Sectors;

public class SectorsDaoImpl extends HibernateDaoSupport implements SectorsDao {

	@Override
	public List<Sectors> getAll() {
		List<Sectors> list = getHibernateTemplate().find("from Sectors");
		if(list.size()>0){
			return list;
		}else{
			return null;
		}
	}

	@Override
	public String addOne(Sectors sectors) {
		return super.getHibernateTemplate().save(sectors).toString();
	}

	@Override
	public Sectors getById(int id) {
		List<Sectors> list = getHibernateTemplate().find("from Sectors where SId=?",new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

	@Override
	public String update(Sectors se) {
		try {
			getHibernateTemplate().update(se);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

	@Override
	public String delete(Sectors se) {
		try {
			getHibernateTemplate().delete(se);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

}
