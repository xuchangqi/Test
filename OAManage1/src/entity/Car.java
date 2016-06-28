package entity;


import java.util.HashSet;
import java.util.Set;

/**
 * Car entity. @author MyEclipse Persistence Tools
 */

public class Car implements java.io.Serializable {

	// Fields

	private Integer CId;
	private String CType;
	private String CNumber;
	private String CText;
	private Integer CState=1;
	private Set rentcars = new HashSet(0);

	// Constructors

	/** default constructor */
	public Car() {
	}

	/** minimal constructor */
	public Car(Integer CId, String CType, String CNumber, Integer CState) {
		this.CId = CId;
		this.CType = CType;
		this.CNumber = CNumber;
		this.CState = CState;
	}

	/** full constructor */
	public Car(Integer CId, String CType, String CNumber, String CText,
			Integer CState, Set rentcars) {
		this.CId = CId;
		this.CType = CType;
		this.CNumber = CNumber;
		this.CText = CText;
		this.CState = CState;
		this.rentcars = rentcars;
	}

	// Property accessors

	public Integer getCId() {
		return this.CId;
	}

	public void setCId(Integer CId) {
		this.CId = CId;
	}

	public String getCType() {
		return this.CType;
	}

	public void setCType(String CType) {
		this.CType = CType;
	}

	public String getCNumber() {
		return this.CNumber;
	}

	public void setCNumber(String CNumber) {
		this.CNumber = CNumber;
	}

	public String getCText() {
		return this.CText;
	}

	public void setCText(String CText) {
		this.CText = CText;
	}

	public Integer getCState() {
		return this.CState;
	}

	public void setCState(Integer CState) {
		this.CState = CState;
	}

	public Set getRentcars() {
		return this.rentcars;
	}

	public void setRentcars(Set rentcars) {
		this.rentcars = rentcars;
	}

}