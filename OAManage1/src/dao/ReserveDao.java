package dao;

import Util.Page;
import entity.Reserveroom;

public interface ReserveDao {

	public Page<Reserveroom> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Reserveroom rent);
	
	public Reserveroom getById(int id);
	
	public String update(Reserveroom re);
	
	public String delete(Reserveroom re);
}
