package entity;

import java.lang.Integer;

/**
 * Reserveroom entity. @author MyEclipse Persistence Tools
 * 会议室预定表
 */

public class Reserveroom implements java.io.Serializable {

	// Fields

	private Integer RId;
	private Users users;
	private Boardroom boardroom;
	private String cteatedate;
	private String overdate;
	private String meettype;
	private Integer state;

	// Constructors

	/** default constructor */
	public Reserveroom() {
	}

	/** minimal constructor */
	public Reserveroom(Integer RId, Users users, Boardroom boardroom,
			String cteatedate, String overdate, Integer state) {
		this.RId = RId;
		this.users = users;
		this.boardroom = boardroom;
		this.cteatedate = cteatedate;
		this.overdate = overdate;
		this.state = state;
	}

	/** full constructor */
	public Reserveroom(Integer RId, Users users, Boardroom boardroom,
			String cteatedate, String overdate, String meettype,
			Integer state) {
		this.RId = RId;
		this.users = users;
		this.boardroom = boardroom;
		this.cteatedate = cteatedate;
		this.overdate = overdate;
		this.meettype = meettype;
		this.state = state;
	}

	// Property accessors

	public Integer getRId() {
		return this.RId;
	}

	public void setRId(Integer RId) {
		this.RId = RId;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Boardroom getBoardroom() {
		return this.boardroom;
	}

	public void setBoardroom(Boardroom boardroom) {
		this.boardroom = boardroom;
	}

	public String getCteatedate() {
		return this.cteatedate;
	}

	public void setCteatedate(String cteatedate) {
		this.cteatedate = cteatedate;
	}

	public String getOverdate() {
		return this.overdate;
	}

	public void setOverdate(String overdate) {
		this.overdate = overdate;
	}

	public String getMeettype() {
		return this.meettype;
	}

	public void setMeettype(String meettype) {
		this.meettype = meettype;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

}