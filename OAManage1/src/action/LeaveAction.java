package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import service.LeaveService;

import Util.Page;

import entity.Leave;

public class LeaveAction{

	private LeaveService leavebiz;
	private Page<Leave> leaves;
	public LeaveService getLeavebiz() {
		return leavebiz;
	}
	public void setLeavebiz(LeaveService leavebiz) {
		this.leavebiz = leavebiz;
	}
	public Page<Leave> getLeaves() {
		return leaves;
	}
	public void setLeaves(Page<Leave> leaves) {
		this.leaves = leaves;
	}
	
	public String getAll(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer pageIndex = (Integer) request.getAttribute("pageIndex");
		int pageSize = 10;
		leaves = leavebiz.getAll(pageSize, pageIndex);
		if(leaves.getTotalPage()>0&&leaves.getList().size()>0){
			return "success";
		}else{
			return "error";
		}
	}
}
