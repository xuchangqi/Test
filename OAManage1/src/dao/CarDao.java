package dao;

import Util.Page;
import entity.Car;

public interface CarDao {
	public Page<Car> getAll(final int pageSize,final int pageIndex);
	//新增
	public String addCar(Car car);
	//修改
	public String update(Car car);
	//根据ID查询
	public Car byId(int id);

}
