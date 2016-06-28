package service.impl;

import dao.BoardDao;
import Util.Page;
import entity.Boardroom;
import service.BoardService;

public class BoardServiceImpl implements BoardService {

	private BoardDao bodao;
	public BoardDao getBodao() {
		return bodao;
	}

	public void setBodao(BoardDao bodao) {
		this.bodao = bodao;
	}

	@Override
	public Page<Boardroom> getAll(int pageSize, int pageIndex) {
		return bodao.getAll(pageSize, pageIndex);
	}

	@Override
	public String addOne(Boardroom room) {
		return bodao.addOne(room);
	}

	@Override
	public String update(Boardroom room) {
		return bodao.update(room);
	}

	@Override
	public Boardroom getById(int id) {
		return bodao.getById(id);
	}

}
