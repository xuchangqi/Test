package action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import Util.Page;
import entity.Rentcar;
import entity.Travel;
import entity.Users;
import service.TravelService;
import service.UserService;

public class TravelAction {
	private Users user;
	private UserService usess;
	private TravelService trbiz;
	private Page<Travel> list;
	private Travel ta;//新增对象
	
	

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public UserService getUsess() {
		return usess;
	}

	public void setUsess(UserService usess) {
		this.usess = usess;
	}

	public Page<Travel> getList() {
		return list;
	}

	public void setList(Page<Travel> list) {
		this.list = list;
	}

	
	public Travel getTa() {
		return ta;
	}

	public void setTa(Travel ta) {
		this.ta = ta;
	}


	public TravelService getTrbiz() {
		return trbiz;
	}

	public void setTrbiz(TravelService trbiz) {
		this.trbiz = trbiz;
	}
	
	
	//审批人列表
	public String getNextUser(){
		HttpSession session = ServletActionContext.getRequest().getSession();		
		Users u = (Users) session.getAttribute("login");
		user = usess.getOne(u);
		if(user!=null){
			return "success";
		}else{
			return "error";
		}
	}
	//新增
	public String addOne1(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		Travel t=new Travel();
		t.setCteatedate(ta.getCteatedate());
		t.setOverdate(ta.getOverdate());
		t.setPlace(ta.getPlace());
		t.setVehicle(ta.getVehicle());
		t.setReason(ta.getReason());
		t.setMission(ta.getMission());
		t.setMoney(ta.getMoney());
		Users us = (Users)session.getAttribute("usersByAppUid");
		t.setUsersByUId(ta.getUsersByUId());
		t.setState(ta.getState());
		String res = trbiz.addOne(t);
		if("0".equals(res)){
			return "success";
		}else{
			return "error";
		}
	
}
}