package service.impl;

import dao.TravelDao;
import Util.Page;
import entity.Travel;
import service.TravelService;

public class TravelSeriveImpl implements TravelService {

	private TravelDao trdao;
	public TravelDao getTrdao() {
		return trdao;
	}

	public void setTrdao(TravelDao trdao) {
		this.trdao = trdao;
	}

	
	@Override
	public String addOne(Travel travel) {
		return trdao.addOne(travel);
	}

	
}
