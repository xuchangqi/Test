package service;

import Util.Page;

import entity.Car;

public interface CarService {
	public Page<Car> getAll(final int pageSize,final int pageIndex);
	
	public String addCar(Car car);
	
	public String update(Car car);
	
	//根据ID查询
	public Car byId(int id);
}
