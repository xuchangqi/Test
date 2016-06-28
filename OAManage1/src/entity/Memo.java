package entity;



/**
 * Memo entity. @author MyEclipse Persistence Tools
 * 便签表
 */

public class Memo implements java.io.Serializable {

	// Fields

	private Integer MId;
	private String MTitle;
	private String MTest;

	// Constructors

	/** default constructor */
	public Memo() {
	}

	/** minimal constructor */
	public Memo(Integer MId, String MTitle) {
		this.MId = MId;
		this.MTitle = MTitle;
	}

	/** full constructor */
	public Memo(Integer MId, String MTitle, String MTest) {
		this.MId = MId;
		this.MTitle = MTitle;
		this.MTest = MTest;
	}

	// Property accessors

	public Integer getMId() {
		return this.MId;
	}

	public void setMId(Integer MId) {
		this.MId = MId;
	}

	public String getMTitle() {
		return this.MTitle;
	}

	public void setMTitle(String MTitle) {
		this.MTitle = MTitle;
	}

	public String getMTest() {
		return this.MTest;
	}

	public void setMTest(String MTest) {
		this.MTest = MTest;
	}

}