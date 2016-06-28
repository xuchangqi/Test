package service.impl;

import dao.ReserveDao;
import Util.Page;
import entity.Reserveroom;
import service.ReserveService;

public class ReserveServiceImpl implements ReserveService {

	private ReserveDao sedao;
	public ReserveDao getSedao() {
		return sedao;
	}

	public void setSedao(ReserveDao sedao) {
		this.sedao = sedao;
	}

	@Override
	public Page<Reserveroom> getAll(int pageSize, int pageIndex) {
		return sedao.getAll(pageSize, pageIndex);
	}

	@Override
	public String addOne(Reserveroom rent) {
		return sedao.addOne(rent);
	}

	@Override
	public Reserveroom getById(int id) {
		return sedao.getById(id);
	}

	@Override
	public String update(Reserveroom re) {
		return sedao.update(re);
	}

	@Override
	public String delete(Reserveroom re) {
		return sedao.delete(re);
	}

}
