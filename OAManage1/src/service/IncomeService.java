package service;

import Util.Page;
import entity.Income;

public interface IncomeService {

	public Page<Income> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Income income);
	
	public Income getById(int id);
	
	public String update(Income in);
	
	public String delete(Income in);
}
