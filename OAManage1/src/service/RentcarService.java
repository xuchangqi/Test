package service;

import Util.Page;
import entity.Rentcar;

public interface RentcarService {

	public Page<Rentcar> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Rentcar rent);
	
	public Rentcar getById(int id);
	
	public String update(Rentcar re);
	
	public String delete(Rentcar re);
}
