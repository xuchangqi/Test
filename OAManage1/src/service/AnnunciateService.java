package service;

import Util.Page;
import entity.Annunciate;

public interface AnnunciateService {

	public Page<Annunciate> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Annunciate ann);
	
	public String update(Annunciate ann);
	
	public Annunciate byId(int id);
	
	public String delete(Annunciate ann);
}
