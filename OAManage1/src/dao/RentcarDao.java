package dao;

import entity.Rentcar;
import Util.Page;

public interface RentcarDao {

	public Page<Rentcar> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Rentcar rent);
	
	public Rentcar getById(int id);
	
	public String update(Rentcar re);
	
	public String delete(Rentcar re);
	
}
