package action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import entity.Document;
import entity.Institution;
import entity.Sectors;
import service.InstService;

public class InstAction {

	private InstService isbiz;
	private Institution in;//新增对象
	private Institution ins;//按ID查询对象
	private Institution inn;//修改对象
	private List<Institution> list;
	private int id;
	
	public Institution getIns() {
		return ins;
	}

	public void setIns(Institution ins) {
		this.ins = ins;
	}

	public Institution getInn() {
		return inn;
	}

	public void setInn(Institution inn) {
		this.inn = inn;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Institution getIn() {
		return in;
	}

	public void setIn(Institution in) {
		this.in = in;
	}

	public List<Institution> getList() {
		return list;
	}

	public void setList(List<Institution> list) {
		this.list = list;
	}

	public InstService getIsbiz() {
		return isbiz;
	}

	public void setIsbiz(InstService isbiz) {
		this.isbiz = isbiz;
	}
	
	//查询全部
	public String getall(){
		isbiz.getAll();
		return "success";
	}
	//添加
	public String save(){
		Institution itn=new Institution();
		itn.setIName(in.getIName());
		itn.setIAbb(in.getIAbb());
		itn.setIState(in.getIState());
		String res = isbiz.addOne(itn);
		if("0".equals(res)){
			return "success";
		}else{
			return "error";
		}
	}
	//根据ID查询信息
	public String getById(){
		int i = id;
		ins = isbiz.getById(i);
		if("".equals(ins)){
			return "success";
		}else{
			return "error";
		}
	}
	//修改
	public String update(){
		inn.setIId(ins.getIId());
		String res = isbiz.addOne(inn);
		if("true".equals(res)){
			return "success";
		}else{
			return "error";
		}
	}
	//删除
	public String delete(){
		Institution a = new Institution();
		HttpSession session = ServletActionContext.getRequest().getSession();
		String id = session.getAttribute("id").toString();
		a.setIId(Integer.valueOf(id));
		a.setIState(0);
		String result = isbiz.update(a);
		if("true".equals(result) ){
			return "success";
		}
		return "error";
	}
		
	}


