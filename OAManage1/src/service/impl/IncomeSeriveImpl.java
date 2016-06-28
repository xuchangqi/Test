package service.impl;

import dao.IncomeDao;
import Util.Page;
import entity.Income;
import service.IncomeService;

public class IncomeSeriveImpl implements IncomeService{

	private IncomeDao indao;


	public IncomeDao getIndao() {
		return indao;
	}

	public void setIndao(IncomeDao indao) {
		this.indao = indao;
	}

	@Override
	public Page<Income> getAll(int pageSize, int pageIndex) {
		return indao.getAll(pageSize, pageIndex);
	}

	@Override
	public String addOne(Income income) {
		return indao.addOne(income);
	}

	@Override
	public Income getById(int id) {
		return indao.getById(id);
	}

	@Override
	public String update(Income in) {
		return indao.update(in);
	}

	@Override
	public String delete(Income in) {
		return indao.delete(in);
	}

}
