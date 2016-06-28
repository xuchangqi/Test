package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import entity.Rentcar;
import entity.Users;
import Util.Page;
import service.RentcarService;
import service.UserService;

public class RentcarAction {
	private RentcarService renbiz;
	private Page<Rentcar> pages;
	private int pageIndex;
	private Rentcar ren;// 新增对象
	private Rentcar re;// 修改对象
	private Rentcar r;// 按ID查询对象
	private int id;
	private Users user;
	private UserService usess;

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Rentcar getRen() {
		return ren;
	}

	public void setRen(Rentcar ren) {
		this.ren = ren;
	}

	public Rentcar getRe() {
		return re;
	}

	public void setRe(Rentcar re) {
		this.re = re;
	}

	public Rentcar getR() {
		return r;
	}

	public void setR(Rentcar r) {
		this.r = r;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public RentcarService getRenbiz() {
		return renbiz;
	}

	public void setRenbiz(RentcarService renbiz) {
		this.renbiz = renbiz;
	}

	public Page<Rentcar> getPages() {
		return pages;
	}

	public void setPages(Page<Rentcar> pages) {
		this.pages = pages;
	}

	// 审批人列表
	public String getNextUsers() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		Users u = (Users) session.getAttribute("login");
		user = usess.getOne(u);
		if (user != null) {
			return "success";
		} else {
			return "error";
		}
	}

	// 分页显示
	public String getAll() {
		int pageSize = 10;
		pages = renbiz.getAll(pageSize, pageIndex);
		if (pages.getList().size() > 0 && pages.getTotalPage() > 0) {
			return "success";
		} else {
			return "error";
		}
	}


	// 按ID查询
	public String byId() {
		int i = id;
		r = renbiz.getById(i);
		if ("".equals(r)) {
			return "success";
		} else {
			return "error";
		}
	}

	// 修改
	public String updates() {
		re.setRId(r.getRId());
		String res = renbiz.addOne(re);
		if ("true".equals(res)) {
			return "success";
		} else {
			return "error";
		}
	}

	// 删除
	public String delete() {
		Rentcar rt = new Rentcar();
		HttpSession session = ServletActionContext.getRequest().getSession();
		String id = session.getAttribute("id").toString();
		rt.setRId(Integer.valueOf(id));
		rt.setRState(0);
		String result = renbiz.update(re);
		if ("true".equals(result)) {
			return "success";
		}
		return "error";
	}
}
