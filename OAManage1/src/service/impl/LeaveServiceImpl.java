package service.impl;

import Util.Page;

import dao.LeaveDao;

import entity.Leave;
import service.LeaveService;

public class LeaveServiceImpl implements LeaveService {

	private LeaveDao leavedao;
	public LeaveDao getLeavedao() {
		return leavedao;
	}
	public void setLeavedao(LeaveDao leavedao) {
		this.leavedao = leavedao;
	}
	@Override
	public Page<Leave> getAll(int pageSize, int pageIndex) {
		return leavedao.getAll(pageSize, pageIndex);
	}
	@Override
	public String addOne(Leave leave) {
		return leavedao.addOne(leave);
	}
	@Override
	public Leave getById(int id) {
		return leavedao.getById(id);
	}
	@Override
	public String update(Leave le) {
		return leavedao.update(le);
	}
	@Override
	public String delete(Leave le) {
		return leavedao.delete(le);
	}
	

}
