package service.impl;

import dao.DocumentDao;
import Util.Page;
import entity.Document;
import service.DocumentService;

public class DocumentServiceImpl implements DocumentService {

	private DocumentDao docdao;
	public DocumentDao getDocdao() {
		return docdao;
	}
	public void setDocdao(DocumentDao docdao) {
		this.docdao = docdao;
	}
	@Override
	public Page<Document> getAll(int pageSize, int pageIndex) {
		return docdao.getAll(pageSize, pageIndex);
	}
	@Override
	public String addOne(Document doc) {
		return docdao.addOne(doc);
	}
	@Override
	public Document getById(int id) {
		return docdao.getById(id);
	}
	@Override
	public String update(Document oc) {
		return docdao.update(oc);
	}

}
