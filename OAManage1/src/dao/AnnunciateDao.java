package dao;

import entity.Annunciate;
import Util.Page;

public interface AnnunciateDao {

	public Page<Annunciate> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Annunciate ann);
	
	public String update(Annunciate ann);
	
	public Annunciate byId(int id);
	
	public String delete(Annunciate ann);
}
