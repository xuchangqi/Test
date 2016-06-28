package entity;

/**
 * Leave entity. @author MyEclipse Persistence Tools
 * 请假表
 */

public class Leave implements java.io.Serializable {

	// Fields

	private Integer LId;
	private Users usersByAppUid;
	private Users usersByUId;
	private Sectors sectors;
	private String cteatedate;
	private String overdate;
	private Integer daytime;
	private String reason;
	private Integer state;

	// Constructors

	/** default constructor */
	public Leave() {
	}

	/** full constructor */
	public Leave(Integer LId, Users usersByAppUid, Users usersByUId,
			Sectors sectors, String cteatedate, String overdate,
			Integer daytime, String reason, Integer state) {
		this.LId = LId;
		this.usersByAppUid = usersByAppUid;
		this.usersByUId = usersByUId;
		this.sectors = sectors;
		this.cteatedate = cteatedate;
		this.overdate = overdate;
		this.daytime = daytime;
		this.reason = reason;
		this.state = state;
	}

	// Property accessors

	public Integer getLId() {
		return this.LId;
	}

	public void setLId(Integer LId) {
		this.LId = LId;
	}

	public Users getUsersByAppUid() {
		return this.usersByAppUid;
	}

	public void setUsersByAppUid(Users usersByAppUid) {
		this.usersByAppUid = usersByAppUid;
	}

	public Users getUsersByUId() {
		return this.usersByUId;
	}

	public void setUsersByUId(Users usersByUId) {
		this.usersByUId = usersByUId;
	}

	public Sectors getSectors() {
		return this.sectors;
	}

	public void setSectors(Sectors sectors) {
		this.sectors = sectors;
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

	public Integer getDaytime() {
		return this.daytime;
	}

	public void setDaytime(Integer daytime) {
		this.daytime = daytime;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

}