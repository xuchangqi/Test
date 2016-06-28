package dao;

import entity.Document;
import Util.Page;

public interface DocumentDao {

	public Page<Document> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Document doc);
	
	public Document getById(int id);
	
	public String update(Document oc);
}
