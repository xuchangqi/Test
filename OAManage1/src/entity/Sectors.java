package entity;


import java.util.HashSet;
import java.util.Set;

/**
 * Sectors entity. @author MyEclipse Persistence Tools
 * 部门表
 */

public class Sectors implements java.io.Serializable {

	// Fields

	private Integer SId;
	private Institution institution;
	private String name;
	private Set documents = new HashSet(0);
	private Set rentcars = new HashSet(0);
	private Set incomes = new HashSet(0);
	private Set userses = new HashSet(0);
	private Set travels = new HashSet(0);
	private Set leaves = new HashSet(0);

	// Constructors

	/** default constructor */
	public Sectors() {
	}

	/** minimal constructor */
	public Sectors(Integer SId, String name) {
		this.SId = SId;
		this.name = name;
	}

	/** full constructor */
	public Sectors(Integer SId, Institution institution, String name,
			Set documents, Set rentcars, Set incomes, Set userses, Set travels,
			Set leaves) {
		this.SId = SId;
		this.institution = institution;
		this.name = name;
		this.documents = documents;
		this.rentcars = rentcars;
		this.incomes = incomes;
		this.userses = userses;
		this.travels = travels;
		this.leaves = leaves;
	}

	// Property accessors

	public Integer getSId() {
		return this.SId;
	}

	public void setSId(Integer SId) {
		this.SId = SId;
	}

	public Institution getInstitution() {
		return this.institution;
	}

	public void setInstitution(Institution institution) {
		this.institution = institution;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getDocuments() {
		return this.documents;
	}

	public void setDocuments(Set documents) {
		this.documents = documents;
	}

	public Set getRentcars() {
		return this.rentcars;
	}

	public void setRentcars(Set rentcars) {
		this.rentcars = rentcars;
	}

	public Set getIncomes() {
		return this.incomes;
	}

	public void setIncomes(Set incomes) {
		this.incomes = incomes;
	}

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

	public Set getTravels() {
		return this.travels;
	}

	public void setTravels(Set travels) {
		this.travels = travels;
	}

	public Set getLeaves() {
		return this.leaves;
	}

	public void setLeaves(Set leaves) {
		this.leaves = leaves;
	}

}