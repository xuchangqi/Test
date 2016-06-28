package service.impl;

import dao.RentcarDao;
import Util.Page;
import entity.Rentcar;
import service.RentcarService;

public class RentcarServiceImpl implements RentcarService {
	private RentcarDao rendao;
	public RentcarDao getRendao() {
		return rendao;
	}

	public void setRendao(RentcarDao rendao) {
		this.rendao = rendao;
	}

	@Override
	public Page<Rentcar> getAll(int pageSize, int pageIndex) {
		return rendao.getAll(pageSize, pageIndex);
	}

	@Override
	public String addOne(Rentcar rent) {
		return rendao.addOne(rent);
	}

	@Override
	public Rentcar getById(int id) {
		return rendao.getById(id);
	}

	@Override
	public String update(Rentcar re) {
		return rendao.update(re);
	}

	@Override
	public String delete(Rentcar re) {
		return rendao.delete(re);
	}

}
