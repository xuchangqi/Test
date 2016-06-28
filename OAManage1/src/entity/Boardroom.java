package entity;


import java.util.HashSet;
import java.util.Set;

/**
 * Boardroom entity. @author MyEclipse Persistence Tools
 * 会议室信息表
 */

public class Boardroom implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Integer state=1;
	private String address;
	private Set reserverooms = new HashSet(0);

	// Constructors

	/** default constructor */
	public Boardroom() {
	}

	/** minimal constructor */
	public Boardroom(Integer id, String name, Integer state,
			String address) {
		this.id = id;
		this.name = name;
		this.state = state;
		this.address = address;
	}

	/** full constructor */
	public Boardroom(Integer id, String name, Integer state,
			String address, Set reserverooms) {
		this.id = id;
		this.name = name;
		this.state = state;
		this.address = address;
		this.reserverooms = reserverooms;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set getReserverooms() {
		return this.reserverooms;
	}

	public void setReserverooms(Set reserverooms) {
		this.reserverooms = reserverooms;
	}

}