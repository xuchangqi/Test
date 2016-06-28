package entity;



/**
 * Rentcar entity. @author MyEclipse Persistence Tools
 * 用车信息表
 */

public class Rentcar implements java.io.Serializable {

	// Fields

	private Integer RId;
	private Users usersByUId;
	private Car car;
	private Sectors sectors;
	private Users usersByAddUid;
	private String RName;
	private String driver;
	private String createdate;
	private String overdate;
	private String destination;
	private Integer RNumber;
	private String reason;
	private Integer RState=0;

	// Constructors

	/** default constructor */
	public Rentcar() {
	}

	/** minimal constructor */
	public Rentcar(Integer RId, Users usersByUId, Car car, Sectors sectors,
			Users usersByAddUid, String driver, String createdate,
			String overdate, String destination, Integer RNumber,
			String reason, Integer RState) {
		this.RId = RId;
		this.usersByUId = usersByUId;
		this.car = car;
		this.sectors = sectors;
		this.usersByAddUid = usersByAddUid;
		this.driver = driver;
		this.createdate = createdate;
		this.overdate = overdate;
		this.destination = destination;
		this.RNumber = RNumber;
		this.reason = reason;
		this.RState = RState;
	}

	/** full constructor */
	public Rentcar(Integer RId, Users usersByUId, Car car, Sectors sectors,
			Users usersByAddUid, String RName, String driver,
			String createdate, String overdate, String destination,
			Integer RNumber, String reason, Integer RState) {
		this.RId = RId;
		this.usersByUId = usersByUId;
		this.car = car;
		this.sectors = sectors;
		this.usersByAddUid = usersByAddUid;
		this.RName = RName;
		this.driver = driver;
		this.createdate = createdate;
		this.overdate = overdate;
		this.destination = destination;
		this.RNumber = RNumber;
		this.reason = reason;
		this.RState = RState;
	}

	// Property accessors

	public Integer getRId() {
		return this.RId;
	}

	public void setRId(Integer RId) {
		this.RId = RId;
	}

	public Users getUsersByUId() {
		return this.usersByUId;
	}

	public void setUsersByUId(Users usersByUId) {
		this.usersByUId = usersByUId;
	}

	public Car getCar() {
		return this.car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public Sectors getSectors() {
		return this.sectors;
	}

	public void setSectors(Sectors sectors) {
		this.sectors = sectors;
	}

	public Users getUsersByAddUid() {
		return this.usersByAddUid;
	}

	public void setUsersByAddUid(Users usersByAddUid) {
		this.usersByAddUid = usersByAddUid;
	}

	public String getRName() {
		return this.RName;
	}

	public void setRName(String RName) {
		this.RName = RName;
	}

	public String getDriver() {
		return this.driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	public String getOverdate() {
		return this.overdate;
	}

	public void setOverdate(String overdate) {
		this.overdate = overdate;
	}

	public String getDestination() {
		return this.destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Integer getRNumber() {
		return this.RNumber;
	}

	public void setRNumber(Integer RNumber) {
		this.RNumber = RNumber;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Integer getRState() {
		return this.RState;
	}

	public void setRState(Integer RState) {
		this.RState = RState;
	}

}