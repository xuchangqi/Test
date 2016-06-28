package service;

import java.util.List;

import entity.Users;

public interface UserService {

	public Users login(Users user);
	
	public String addOne(Users user);
	
	public Users getOne(Users user);
}
