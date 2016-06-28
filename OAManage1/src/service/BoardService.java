package service;

import Util.Page;
import entity.Boardroom;

public interface BoardService {

	public Page<Boardroom> getAll(final int pageSize,final int pageIndex);
	//新增
	public String addOne(Boardroom room);
	//修改
	public String update(Boardroom room);
	//根据ID查询
	public Boardroom getById(int id);
}
