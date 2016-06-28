package service.impl;

import java.util.List;

import dao.PartDao;

import entity.Part;
import service.PartService;

public class PartServiceImpl implements PartService {

	private PartDao partdao;
	
	public PartDao getPartdao() {
		return partdao;
	}

	public void setPartdao(PartDao partdao) {
		this.partdao = partdao;
	}

	@Override
	public List<Part> getAll() {
		return partdao.getAll();
	}

	@Override
	public String addOne(Part part) {
		return partdao.addOne(part);
	}

	@Override
	public Part getById(int id) {
		return partdao.getById(id);
	}

	@Override
	public String update(Part pa) {
		return partdao.update(pa);
	}

	@Override
	public String delete(Part pa) {
		return partdao.delete(pa);
	}

}
