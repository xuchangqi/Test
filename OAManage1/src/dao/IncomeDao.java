package dao;

import entity.Income;
import Util.Page;

public interface IncomeDao {

	public Page<Income> getAll(final int pageSize,final int pageIndex);
	
	public String addOne(Income income);
	
	public Income getById(int id);
	
	public String update(Income in);
	
	public String delete(Income in);
}
