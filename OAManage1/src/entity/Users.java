package entity;


import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer UId;
	private Sectors sectors;
	private Part part;
	private String password;
	private String job;
	private String name;
	private Integer state=1;
	private String phone;
	private Set leavesForAppUid = new HashSet(0);
	private Set rentcarsForAddUid = new HashSet(0);
	private Set rentcarsForUId = new HashSet(0);
	private Set leavesForUId = new HashSet(0);
	private Set incomesForUId = new HashSet(0);
	private Set annunciates = new HashSet(0);
	private Set reserverooms = new HashSet(0);
	private Set incomesForAppUid = new HashSet(0);
	private Set travelsForUId = new HashSet(0);
	private Set travelsForAppUid = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(Integer UId, Sectors sectors, Part part, String password,
			String job, String name, Integer state) {
		this.UId = UId;
		this.sectors = sectors;
		this.part = part;
		this.password = password;
		this.job = job;
		this.name = name;
		this.state = state;
	}

	/** full constructor */
	public Users(Integer UId, Sectors sectors, Part part, String password,
			String job, String name, Integer state, String phone,
			Set leavesForAppUid, Set rentcarsForAddUid, Set rentcarsForUId,
			Set leavesForUId, Set incomesForUId, Set annunciates,
			Set reserverooms, Set incomesForAppUid, Set travelsForUId,
			Set travelsForAppUid) {
		this.UId = UId;
		this.sectors = sectors;
		this.part = part;
		this.password = password;
		this.job = job;
		this.name = name;
		this.state = state;
		this.phone = phone;
		this.leavesForAppUid = leavesForAppUid;
		this.rentcarsForAddUid = rentcarsForAddUid;
		this.rentcarsForUId = rentcarsForUId;
		this.leavesForUId = leavesForUId;
		this.incomesForUId = incomesForUId;
		this.annunciates = annunciates;
		this.reserverooms = reserverooms;
		this.incomesForAppUid = incomesForAppUid;
		this.travelsForUId = travelsForUId;
		this.travelsForAppUid = travelsForAppUid;
	}

	// Property accessors

	public Integer getUId() {
		return this.UId;
	}

	public void setUId(Integer UId) {
		this.UId = UId;
	}

	public Sectors getSectors() {
		return this.sectors;
	}

	public void setSectors(Sectors sectors) {
		this.sectors = sectors;
	}

	public Part getPart() {
		return this.part;
	}

	public void setPart(Part part) {
		this.part = part;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
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

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Set getLeavesForAppUid() {
		return this.leavesForAppUid;
	}

	public void setLeavesForAppUid(Set leavesForAppUid) {
		this.leavesForAppUid = leavesForAppUid;
	}

	public Set getRentcarsForAddUid() {
		return this.rentcarsForAddUid;
	}

	public void setRentcarsForAddUid(Set rentcarsForAddUid) {
		this.rentcarsForAddUid = rentcarsForAddUid;
	}

	public Set getRentcarsForUId() {
		return this.rentcarsForUId;
	}

	public void setRentcarsForUId(Set rentcarsForUId) {
		this.rentcarsForUId = rentcarsForUId;
	}

	public Set getLeavesForUId() {
		return this.leavesForUId;
	}

	public void setLeavesForUId(Set leavesForUId) {
		this.leavesForUId = leavesForUId;
	}

	public Set getIncomesForUId() {
		return this.incomesForUId;
	}

	public void setIncomesForUId(Set incomesForUId) {
		this.incomesForUId = incomesForUId;
	}

	public Set getAnnunciates() {
		return this.annunciates;
	}

	public void setAnnunciates(Set annunciates) {
		this.annunciates = annunciates;
	}

	public Set getReserverooms() {
		return this.reserverooms;
	}

	public void setReserverooms(Set reserverooms) {
		this.reserverooms = reserverooms;
	}

	public Set getIncomesForAppUid() {
		return this.incomesForAppUid;
	}

	public void setIncomesForAppUid(Set incomesForAppUid) {
		this.incomesForAppUid = incomesForAppUid;
	}

	public Set getTravelsForUId() {
		return this.travelsForUId;
	}

	public void setTravelsForUId(Set travelsForUId) {
		this.travelsForUId = travelsForUId;
	}

	public Set getTravelsForAppUid() {
		return this.travelsForAppUid;
	}

	public void setTravelsForAppUid(Set travelsForAppUid) {
		this.travelsForAppUid = travelsForAppUid;
	}

}