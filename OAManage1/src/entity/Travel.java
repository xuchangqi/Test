package entity;



/**
 * Travel entity. @author MyEclipse Persistence Tools
 * 出差表
 */

public class Travel implements java.io.Serializable {

	// Fields

	private Integer TId;
	private Users usersByAppUid;
	private Users usersByUId;
	private Sectors sectors;
	private String cteatedate;
	private String overdate;
	private String place;
	private String vehicle;
	private String reason;
	private String mission;
	private Integer money;
	private Integer state;

	// Constructors

	/** default constructor */
	public Travel() {
	}

	/** full constructor */
	public Travel(Integer TId, Users usersByAppUid, Users usersByUId,
			Sectors sectors, String cteatedate, String overdate, String place,
			String vehicle, String reason, String mission, Integer money,
			Integer state) {
		this.TId = TId;
		this.usersByAppUid = usersByAppUid;
		this.usersByUId = usersByUId;
		this.sectors = sectors;
		this.cteatedate = cteatedate;
		this.overdate = overdate;
		this.place = place;
		this.vehicle = vehicle;
		this.reason = reason;
		this.mission = mission;
		this.money = money;
		this.state = state;
	}

	// Property accessors

	public Integer getTId() {
		return this.TId;
	}

	public void setTId(Integer TId) {
		this.TId = TId;
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

	public String getPlace() {
		return this.place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getVehicle() {
		return this.vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getMission() {
		return this.mission;
	}

	public void setMission(String mission) {
		this.mission = mission;
	}

	public Integer getMoney() {
		return this.money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

}