package service;

import java.util.List;

import entity.Part;

public interface PartService {

	public List<Part> getAll();
	
	public String addOne(Part part);
	
	public Part getById(int id);
	
	public String update(Part pa);
	
	public String delete(Part pa);
}
