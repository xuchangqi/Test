package service.impl;

import dao.AnnunciateDao;
import Util.Page;
import entity.Annunciate;
import service.AnnunciateService;

public class AnnunciateServiceImpl implements AnnunciateService {
	private AnnunciateDao anndao;
	public AnnunciateDao getAnndao() {
		return anndao;
	}
	public void setAnndao(AnnunciateDao anndao) {
		this.anndao = anndao;
	}
	@Override
	public Page<Annunciate> getAll(int pageSize, int pageIndex) {
		return anndao.getAll(pageSize, pageIndex);
	}
	@Override
	public String addOne(Annunciate ann) {
		return anndao.addOne(ann);
	}
	@Override
	public String update(Annunciate ann) {
		return anndao.update(ann);
	}
	@Override
	public Annunciate byId(int id) {
		return anndao.byId(id);
	}
	@Override
	public String delete(Annunciate ann) {
		return anndao.delete(ann);
	}

}
