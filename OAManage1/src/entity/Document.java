package entity;

/**
 * Document entity. @author MyEclipse Persistence Tools
 * 文档表
 */

public class Document implements java.io.Serializable {

	// Fields

	private Integer DId;
	private Sectors sectors;
	private String DName;
	private String owner;
	private String createdate;
	private Integer state=1;
	private String path;
	private String text;
	private String content;

	// Constructors

	/** default constructor */
	public Document() {
	}

	/** minimal constructor */
	public Document(Integer DId, String DName, String owner,
			String createdate, Integer state) {
		this.DId = DId;
		this.DName = DName;
		this.owner = owner;
		this.createdate = createdate;
		this.state = state;
	}

	/** full constructor */
	public Document(Integer DId, Sectors sectors, String DName,
			String owner, String createdate, Integer state, String path,
			String text, String content) {
		this.DId = DId;
		this.sectors = sectors;
		this.DName = DName;
		this.owner = owner;
		this.createdate = createdate;
		this.state = state;
		this.path = path;
		this.text = text;
		this.content = content;
	}

	// Property accessors

	public Integer getDId() {
		return this.DId;
	}

	public void setDId(Integer DId) {
		this.DId = DId;
	}

	public Sectors getSectors() {
		return this.sectors;
	}

	public void setSectors(Sectors sectors) {
		this.sectors = sectors;
	}

	public String getDName() {
		return this.DName;
	}

	public void setDName(String DName) {
		this.DName = DName;
	}

	public String getOwner() {
		return this.owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getPath() {
		return this.path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}