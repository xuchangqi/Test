package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Util.Page;

import dao.CarDao;
import entity.Car;

public class CarDaoImpl extends HibernateDaoSupport implements CarDao {

	@Override
	public Page<Car> getAll(final int pageSize,final int pageIndex) {
		final Page<Car> list = new Page<Car>();
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session) throws HibernateException,SQLException{
						int totalPage = 0;
						Query query = session.createQuery("from Car where CState=?").setInteger(0, 1);
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
	public String addCar(Car car) {
		String result = getHibernateTemplate().save(car).toString();
		return result;
	}

	@Override
	public String update(Car car) {
		try {
			getHibernateTemplate().update(car);
			return "true";
		} catch (Exception e) {
			return "false";
		}
	}

	@Override
	public Car byId(int id) {
		List<Car> list = getHibernateTemplate().find("from Car where CId=?",new Object[]{id});
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

}
