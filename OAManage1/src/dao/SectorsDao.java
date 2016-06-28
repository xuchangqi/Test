package dao;

import java.util.List;

import entity.Sectors;

public interface SectorsDao {

	public List<Sectors> getAll();
	
	public String addOne(Sectors sectors);
	
	public Sectors getById(int id);
	
	public String update(Sectors se);
	
	public String delete(Sectors se);
}
