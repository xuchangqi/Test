package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import entity.Annunciate;
import entity.Users;
import Util.Page;
import service.AnnunciateService;

public class AnnunciateAction {

	private AnnunciateService annbiz;
	private Page<Annunciate> lists;
	private int pageIndex;
	private Annunciate annun;
	private String condition;
	private int[] aid;
	private Annunciate byid;
	private Annunciate upAn;
	public Annunciate getByid() {
		return byid;
	}
	public void setByid(Annunciate byid) {
		this.byid = byid;
	}
	public Annunciate getUpAn() {
		return upAn;
	}
	public void setUpAn(Annunciate upAn) {
		this.upAn = upAn;
	}
	
    public int[] getAid() {
		return aid;
	}
	public void setAid(int[] aid) {
		this.aid = aid;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public Annunciate getAnnun() {
		return annun;
	}
	public void setAnnun(Annunciate annun) {
		this.annun = annun;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public AnnunciateService getAnnbiz() {
		return annbiz;
	}
	public void setAnnbiz(AnnunciateService annbiz) {
		this.annbiz = annbiz;
	}
	public Page<Annunciate> getLists() {
		return lists;
	}
	public void setLists(Page<Annunciate> lists) {
		this.lists = lists;
	}
	
	public String getAll(){
		int pageSize = 2;
		lists = annbiz.getAll(pageSize, pageIndex);
		if(lists.getList().size()>0&&lists.getTotalPage()>0){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String addOne(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		Annunciate ann = new Annunciate();
		ann.setTatil(annun.getTatil());
		ann.setName(annun.getName());
		ann.setCreatetime(annun.getCreatetime());
		Users us = (Users)session.getAttribute("login");
		ann.setUsers(us);
		if("1".equals(condition)){
			ann.setCondition(1);
		}else if("0".equals(condition)){
			ann.setCondition(0);
		}
		String res = annbiz.addOne(ann);
		if("0".equals(res)){
			return "error";
		}else{
			return "success";
		}
	}
	
	public String delete(){
		for(int i:aid){
			int id = i;
			Annunciate nn = annbiz.byId(id);
			String res = annbiz.delete(nn);
			if("false".equals(res)){
				return "error";
			}
		}
		return "success";
	}
	
	public String byId(){
		int id = aid[0];
		byid = annbiz.byId(id);
		if("".equals(byid)){
			return "error";
		}else{
			return "success";
		}
	}
	
	public String update(){
		upAn.setId(byid.getId());
		String result = annbiz.update(upAn);
		if("false".equals(result)){
			return "error";
		}else{
			return "success";
		}
	}
}
