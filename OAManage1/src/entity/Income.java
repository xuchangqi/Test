package entity;

/**
 * Income entity. @author MyEclipse Persistence Tools
 * 收入表
 */

public class Income implements java.io.Serializable {

	// Fields

	private Integer IId;
	private Users usersByAppUid;
	private Users usersByUId;
	private Sectors sectors;
	private String cteatedate;
	private String reason;
	private Integer state;

	// Constructors

	/** default constructor */
	public Income() {
	}

	/** full constructor */
	public Income(Integer IId, Users usersByAppUid, Users usersByUId,
			Sectors sectors, String cteatedate, String reason, Integer state) {
		this.IId = IId;
		this.usersByAppUid = usersByAppUid;
		this.usersByUId = usersByUId;
		this.sectors = sectors;
		this.cteatedate = cteatedate;
		this.reason = reason;
		this.state = state;
	}

	// Property accessors

	public Integer getIId() {
		return this.IId;
	}

	public void setIId(Integer IId) {
		this.IId = IId;
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