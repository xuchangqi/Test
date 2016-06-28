package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.InstDao;
import entity.Institution;

public class InstDaoImpl extends HibernateDaoSupport implements InstDao {

	@Override
	public List<Institution> getAll() {
		List<Institution> list = getHibernateTemplate().find("from Institution where IState=?",new Object[]{1});
		if(list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public String addOne(Institution ins) {
		return super.getHibernateTemplate().save(ins).toString();
	}

	@Override
	public Institution getById(int id) {
		List<Institution> list = getHibernateTemplate().find("from Institution where IId=?",new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public String update(Institution ins) {
		try {
			getHibernateTemplate().update(ins);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

}
