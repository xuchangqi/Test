package action;

import org.apache.struts2.ServletActionContext;

import service.CarService;

import Util.Page;

import entity.Car;

public class CarAction{
	private Page<Car> list;
	private CarService carbiz;
	private int index;
	private Car car;
	private int[] Cid;
	private Car car2;
	private Car car3;
	public Car getCar3() {
		return car3;
	}
	public void setCar3(Car car3) {
		this.car3 = car3;
	}
	public Car getCar2() {
		return car2;
	}
	public void setCar2(Car car2) {
		this.car2 = car2;
	}
	public int[] getCid() {
		return Cid;
	}
	public void setCid(int[] cid) {
		Cid = cid;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public Page<Car> getList() {
		return list;
	}
	public void setList(Page<Car> list) {
		this.list = list;
	}
	public CarService getCarbiz() {
		return carbiz;
	}
	public void setCarbiz(CarService carbiz) {
		this.carbiz = carbiz;
	}
	//分页查询
	public String getAll(){
		int pageIndex = index;
		int pageSize = 10;		
		list = carbiz.getAll(pageSize,pageIndex);
		
		if(list.equals(null)){
			return "success";
		}else{
			return "error";
		}
	}
	//新增汽车
	public String addCar(){
		Car car1 = new Car();
		car1.setCType(car.getCType());
		car1.setCNumber(car.getCNumber());
		car1.setCText(car.getCText());
		String res = carbiz.addCar(car);
		if("0".equals(res)){
			return "error";
		}else{
			return "success";
		}
	}
	//根据ID查询信息
	public String byId(){
		int id = Cid[0];
		car2 = carbiz.byId(id);
		if(car2!=null){
			return "success";
		}else{
			return "error";
		}
	}
	//修改信息
	public String upCar(){
		car3.setCId(car2.getCId());
		String result = carbiz.update(car3);
		if("true".equals(result)){
			return "success";
		}else{
			return "error";
		}
	}
	
	//删除信息
	public String deCar(){
		for(int i:Cid){
			Car c = carbiz.byId(i);
			c.setCState(0);
			String res = carbiz.update(c);
			if("false".equals(res)){
				return "error";
			}
		}
		return "success";
	}
	
}
