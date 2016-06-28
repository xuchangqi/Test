package action;

import service.ReserveService;
import Util.Page;
import entity.Reserveroom;

public class ReserveAction {

	private ReserveService sebiz;
	private Reserveroom room;
	private Page<Reserveroom> page;
	private int pageIndex;
	
	public Reserveroom getRoom() {
		return room;
	}

	public void setRoom(Reserveroom room) {
		this.room = room;
	}

	public Page<Reserveroom> getPage() {
		return page;
	}

	public void setPage(Page<Reserveroom> page) {
		this.page = page;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public ReserveService getSebiz() {
		return sebiz;
	}

	public void setSebiz(ReserveService sebiz) {
		this.sebiz = sebiz;
	}
	
	//分页查询
	public String query(){
		int pageSize = 2;
		page=sebiz.getAll(pageSize, pageSize);
		if(page.getList().size()>0&&page.getTotalPage()>0){
			return "success";
		}else{
			return "error";
		}
	}
}
