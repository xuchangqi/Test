package service;

import Util.Page;

import entity.Leave;

public interface LeaveService {

	public Page<Leave> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Leave leave);
	
	public Leave getById(int id);
	
	public String update(Leave le);
	
	public String delete(Leave le);
}
