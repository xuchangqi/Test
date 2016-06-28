package service;

import Util.Page;
import entity.Document;

public interface DocumentService {

	public Page<Document> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Document doc);
	
	public Document getById(int id);
	
	public String update(Document oc);
}
