package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import service.PartService;
import service.SectorsService;
import service.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Part;
import entity.Sectors;
import entity.Users;

public class UserAction extends ActionSupport {
	private UserService userBiz;
	private Users employee;
	private ActionContext ac;
	private Users user;
	
	private PartService partbiz;
	private List<Part> parts;
	private SectorsService secbiz;
	private List<Sectors> sectors;

	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public SectorsService getSecbiz() {
		return secbiz;
	}
	public void setSecbiz(SectorsService secbiz) {
		this.secbiz = secbiz;
	}
	public List<Sectors> getSectors() {
		return sectors;
	}
	public void setSectors(List<Sectors> sectors) {
		this.sectors = sectors;
	}
	public List<Part> getParts() {
		return parts;
	}
	public void setParts(List<Part> parts) {
		this.parts = parts;
	}
	public PartService getPartbiz() {
		return partbiz;
	}
	public void setPartbiz(PartService partbiz) {
		this.partbiz = partbiz;
	}
	public ActionContext getAc() {
		return ac;
	}
	public void setAc(ActionContext ac) {
		this.ac = ac;
	}
	public UserService getUserBiz() {
		return userBiz;
	}
	public void setUserBiz(UserService userBiz) {
		this.userBiz = userBiz;
	}	
	public Users getEmployee() {
		return employee;
	}
	public void setEmployee(Users employee) {
		this.employee = employee;
	}
	//登录
	public String login(){
		Users user = new Users();
		user.setUId(employee.getUId());
		user.setPassword(employee.getPassword());
		Users login = userBiz.login(user);
		ac = ActionContext.getContext();
		ac.getSession().put("login", login);
		return SUCCESS;
	}
	//下拉框加载
	public String select(){
		parts = partbiz.getAll();
		sectors = secbiz.getAll();
		if(parts!=null&&sectors!=null){
			return SUCCESS;
		}else{
			return "error";
		}
	}
	//注册
	public String addOne(){
		Users user1 = new Users();
		user1.setUId(user.getUId());
		user1.setPassword(user.getPassword());
		user1.setName(user.getName());
		Part part1 = new Part();
		part1.setPid(user.getPart().getPid());
		user1.setPart(part1);
		user1.setJob(user.getJob());
		Sectors sec1 = new Sectors();
		sec1.setSId(user.getSectors().getSId());
		user1.setSectors(sec1);
		user1.setPhone(user.getPhone());
		System.out.println(user.getUId()+user.getName()+user.getPart().getPid());
		String res = userBiz.addOne(user);
		if("0".equals(res)){
			return "error";
		}else{
			return SUCCESS;
		}
		
	}
}
