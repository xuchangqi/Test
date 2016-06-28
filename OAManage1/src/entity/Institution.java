package entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Institution entity. @author MyEclipse Persistence Tools
 * 机构表
 */

public class Institution implements java.io.Serializable {

	// Fields

	private Integer IId;
	private String IName;
	private String IAbb;
	private Integer IState=1;
	private Set sectorses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Institution() {
	}

	/** minimal constructor */
	public Institution(Integer IId, String IName, String IAbb,
			Integer IState) {
		this.IId = IId;
		this.IName = IName;
		this.IAbb = IAbb;
		this.IState = IState;
	}

	/** full constructor */
	public Institution(Integer IId, String IName, String IAbb,
			Integer IState, Set sectorses) {
		this.IId = IId;
		this.IName = IName;
		this.IAbb = IAbb;
		this.IState = IState;
		this.sectorses = sectorses;
	}

	// Property accessors

	public Integer getIId() {
		return this.IId;
	}

	public void setIId(Integer IId) {
		this.IId = IId;
	}

	public String getIName() {
		return this.IName;
	}

	public void setIName(String IName) {
		this.IName = IName;
	}

	public String getIAbb() {
		return this.IAbb;
	}

	public void setIAbb(String IAbb) {
		this.IAbb = IAbb;
	}

	public Integer getIState() {
		return this.IState;
	}

	public void setIState(Integer IState) {
		this.IState = IState;
	}

	public Set getSectorses() {
		return this.sectorses;
	}

	public void setSectorses(Set sectorses) {
		this.sectorses = sectorses;
	}

}