package service.impl;

import java.util.List;

import Util.Page;

import dao.CarDao;

import entity.Car;
import service.CarService;

public class CarServiceImpl implements CarService {
	private CarDao cardao;
	public CarDao getCardao() {
		return cardao;
	}
	public void setCardao(CarDao cardao) {
		this.cardao = cardao;
	}
	@Override
	public Page<Car> getAll(final int pageSize,final int pageIndex) {
		return cardao.getAll(pageSize,pageIndex);
	}
	@Override
	public String addCar(Car car) {
		return cardao.addCar(car);
	}
	@Override
	public String update(Car car) {
		return cardao.update(car);
	}
	@Override
	public Car byId(int id) {
		return cardao.byId(id);
	}
	

}
