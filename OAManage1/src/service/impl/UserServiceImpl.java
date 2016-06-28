package service.impl;

import java.util.List;

import dao.UserDao;
import entity.Users;
import service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public Users login(Users user) {
		return userDao.login(user);
	}
	@Override
	public String addOne(Users user) {
		return userDao.addOne(user);
	}
	@Override
	public Users getOne(Users user) {
		return userDao.getOne(user);
	}

}
