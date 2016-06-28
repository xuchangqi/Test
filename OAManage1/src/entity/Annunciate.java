package entity;

/**
 * Annunciate entity. @author MyEclipse Persistence Tools
 * 通告表
 */
public class Annunciate implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private String name;
	private String tatil;
	private String createtime;
	private Integer condition;

	// Constructors

	/** default constructor */
	public Annunciate() {
	}

	/** minimal constructor */
	public Annunciate(Integer id, Users users, String name, String tatil,
			Integer condition) {
		this.id = id;
		this.users = users;
		this.name = name;
		this.tatil = tatil;
		this.condition = condition;
	}

	/** full constructor */
	public Annunciate(Integer id, Users users, String name, String tatil,
			String createtime, Integer condition) {
		this.id = id;
		this.users = users;
		this.name = name;
		this.tatil = tatil;
		this.createtime = createtime;
		this.condition = condition;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTatil() {
		return this.tatil;
	}

	public void setTatil(String tatil) {
		this.tatil = tatil;
	}

	public String getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public Integer getCondition() {
		return this.condition;
	}

	public void setCondition(Integer condition) {
		this.condition = condition;
	}

}