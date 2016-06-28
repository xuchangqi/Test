package service;

import java.util.List;

import entity.Institution;

public interface InstService {

	public List<Institution> getAll();
	
	public String addOne(Institution ins);
	
	public Institution getById(int id);
	
	public String update(Institution ins);
}
