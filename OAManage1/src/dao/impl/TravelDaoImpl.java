package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;

import dao.TravelDao;
import entity.Travel;

public class TravelDaoImpl extends HibernateDaoSupport implements TravelDao {

	@Override
	public String addOne(Travel travel) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().save(travel).toString();
	}

	


	
}

