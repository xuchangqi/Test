package action;

import entity.Document;
import entity.Sectors;
import Util.Page;
import service.DocumentService;

public class DocumentAction {

	private DocumentService docbiz;
	private Page<Document> docList;
	private int pageIndex;
	private int[] aid;
	private Document ment;//新增对象
	private Document cum;//根据ID查询对象
	private Document doc;//修改对象
	public Document getCum() {
		return cum;
	}
	public void setCum(Document cum) {
		this.cum = cum;
	}
	public Document getMent() {
		return ment;
	}
	public void setMent(Document ment) {
		this.ment = ment;
	}
	public int[] getAid() {
		return aid;
	}
	public void setAid(int[] aid) {
		this.aid = aid;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public DocumentService getDocbiz() {
		return docbiz;
	}
	public void setDocbiz(DocumentService docbiz) {
		this.docbiz = docbiz;
	}
	public Page<Document> getDocList() {
		return docList;
	}
	public void setDocList(Page<Document> docList) {
		this.docList = docList;
	}
	
	public String getAll(){
		int pageSize = 1;
		docList = docbiz.getAll(pageSize, pageIndex);
		if(docList.getPageIndex()>0&&docList.getList().size()>0&&docList.getTotalPage()>0){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String addOne(){
		Document m = new Document();
		m.setDName(ment.getDName());
		m.setOwner(ment.getOwner());
		m.setPath(ment.getPath());
		m.setText(ment.getText());
		m.setContent(ment.getContent());
		m.setCreatedate(ment.getCreatedate());
		Sectors t = new Sectors();
		t = ment.getSectors();
		m.setSectors(t);
		String res = docbiz.addOne(m);
		if("0".equals(res)){
			return "success";
		}else{
			return "error";
		}
	}
	//根据ID查询信息
	public String getById(){
		int i = aid[0];
		cum = docbiz.getById(i);
		if("".equals(cum)){
			return "success";
		}else{
			return "error";
		}
	}
	
	//修改文档信息
	public String update(){
		doc.setDId(cum.getDId());
		String res = docbiz.update(doc);
		if("true".equals(res)){
			return "success";
		}else{
			return "error";
		}
	}
	//删除文档
	public String delete(){
		for(int i:aid){
			Document o = docbiz.getById(i);
			o.setState(0);
			String res = docbiz.update(o);
			if("false".equals(res)){
				return "error";
			}
		}
		return "success";
	}
	
}
