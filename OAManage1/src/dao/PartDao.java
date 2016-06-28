package dao;

import java.util.List;

import entity.Part;

public interface PartDao {

	public List<Part> getAll();
	
	public String addOne(Part part);
	
	public Part getById(int id);
	
	public String update(Part pa);
	
	public String delete(Part pa);
}
