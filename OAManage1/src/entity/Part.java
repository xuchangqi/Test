package entity;


import java.util.HashSet;
import java.util.Set;

/**
 * Part entity. @author MyEclipse Persistence Tools
 * 角色表
 */

public class Part implements java.io.Serializable {

	// Fields

	private Integer pid;
	private String name;
	private String createdate;
	private String updatedate;
	private Integer state;
	private Set userses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Part() {
	}

	/** minimal constructor */
	public Part(Integer pid, String name, String createdate, Integer state) {
		this.pid = pid;
		this.name = name;
		this.createdate = createdate;
		this.state = state;
	}

	/** full constructor */
	public Part(Integer pId, String name, String createdate,
			String updatedate, Integer state, Set userses) {
		this.pid = pid;
		this.name = name;
		this.createdate = createdate;
		this.updatedate = updatedate;
		this.state = state;
		this.userses = userses;
	}

	// Property accessors



	public String getName() {
		return this.name;
	}



	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	public String getUpdatedate() {
		return this.updatedate;
	}

	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

}