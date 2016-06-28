package service.impl;

import java.util.List;

import dao.InstDao;

import entity.Institution;
import service.InstService;

public class InstServiceImpl implements InstService {

	private InstDao isdao;
	public InstDao getIsdao() {
		return isdao;
	}

	public void setIsdao(InstDao isdao) {
		this.isdao = isdao;
	}

	@Override
	public List<Institution> getAll() {
		return isdao.getAll();
	}

	@Override
	public String addOne(Institution ins) {
		return isdao.addOne(ins);
	}

	@Override
	public Institution getById(int id) {
		return isdao.getById(id);
	}

	@Override
	public String update(Institution ins) {
		return isdao.update(ins);
	}

}
