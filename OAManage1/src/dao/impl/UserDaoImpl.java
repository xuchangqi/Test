package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.UserDao;
import entity.Users;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public Users login(Users user) {
		Users login = new Users();
		
		List<Users> list = getHibernateTemplate().find("from Users where Uid=? and password=?",new Object[]{user.getUId(),user.getPassword()});
		System.out.println(list.size());
		if(list.size()>0){
			login = list.get(0);
		}
		return login;
	}

	@Override
	public String addOne(Users user) {
		return super.getHibernateTemplate().save(user).toString();
	}

	@Override
	public Users getOne(Users user) {
		List<Users> list = getHibernateTemplate().find("from Users where part.pid=?",new Object[]{user.getPart().getPid()+1});
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

}
