package service;

import java.util.List;

import entity.Sectors;

public interface SectorsService {

	public List<Sectors> getAll();
	
	public String addOne(Sectors sectors);
	
	public Sectors getById(int id);
	
	public String update(Sectors se);
	
	public String delete(Sectors se);	
}
