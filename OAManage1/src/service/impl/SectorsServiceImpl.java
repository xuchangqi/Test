package service.impl;

import java.util.List;

import dao.SectorsDao;

import entity.Sectors;
import service.SectorsService;

public class SectorsServiceImpl implements SectorsService {
	private SectorsDao secdao;
	public SectorsDao getSecdao() {
		return secdao;
	}
	public void setSecdao(SectorsDao secdao) {
		this.secdao = secdao;
	}
	@Override
	public List<Sectors> getAll() {
		return secdao.getAll();
	}
	@Override
	public String addOne(Sectors sectors) {
		return secdao.addOne(sectors);
	}
	@Override
	public Sectors getById(int id) {
		return secdao.getById(id);
	}
	@Override
	public String update(Sectors se) {
		return secdao.update(se);
	}
	@Override
	public String delete(Sectors se) {
		return secdao.delete(se);
	}

}
