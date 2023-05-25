package macrogen.www.vo;

import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ MainPeopleVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2023. 03. 03. 오전 11:48:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class MainPeopleVo extends DefaultVo {
	private Long peopleSn;
	private String langCode;
	private String peopleNm;
	private String peopleDept;
	private String cnPc;
	private String cnMo;

	private String atchIdPc;
	private String imageAtchIdPc;
	private String imageFlpthPc;
	private String atchIdMo;
	private String imageAtchIdMo;
	private String imageFlpthMo;

	private Integer sortOrdr = 99;
	private String viewYn = "N";

	private List<MainPeopleVo> sortOrdrList;

	public Long getPeopleSn() {
		return peopleSn;
	}

	public void setPeopleSn(Long peopleSn) {
		this.peopleSn = peopleSn;
	}

	public String getLangCode() {
		return langCode;
	}

	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}

	public String getPeopleNm() {
		return peopleNm;
	}

	public void setPeopleNm(String peopleNm) {
		this.peopleNm = peopleNm;
	}

	public String getPeopleDept() {
		return peopleDept;
	}

	public void setPeopleDept(String peopleDept) {
		this.peopleDept = peopleDept;
	}

	public String getCnPc() {
		return cnPc;
	}

	public void setCnPc(String cnPc) {
		this.cnPc = cnPc;
	}

	public String getCnMo() {
		return cnMo;
	}

	public void setCnMo(String cnMo) {
		this.cnMo = cnMo;
	}

	public String getAtchIdPc() {
		return atchIdPc;
	}

	public void setAtchIdPc(String atchIdPc) {
		this.atchIdPc = atchIdPc;
	}

	public String getImageAtchIdPc() {
		return imageAtchIdPc;
	}

	public void setImageAtchIdPc(String imageAtchIdPc) {
		this.imageAtchIdPc = imageAtchIdPc;
	}

	public String getImageFlpthPc() {
		return imageFlpthPc;
	}

	public void setImageFlpthPc(String imageFlpthPc) {
		this.imageFlpthPc = imageFlpthPc;
	}

	public String getAtchIdMo() {
		return atchIdMo;
	}

	public void setAtchIdMo(String atchIdMo) {
		this.atchIdMo = atchIdMo;
	}

	public String getImageAtchIdMo() {
		return imageAtchIdMo;
	}

	public void setImageAtchIdMo(String imageAtchIdMo) {
		this.imageAtchIdMo = imageAtchIdMo;
	}

	public String getImageFlpthMo() {
		return imageFlpthMo;
	}

	public void setImageFlpthMo(String imageFlpthMo) {
		this.imageFlpthMo = imageFlpthMo;
	}

	public Integer getSortOrdr() {
		return sortOrdr;
	}

	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}

	public String getViewYn() {
		return viewYn;
	}

	public void setViewYn(String viewYn) {
		this.viewYn = viewYn;
	}

	public List<MainPeopleVo> getSortOrdrList() {
		return sortOrdrList;
	}

	public void setSortOrdrList(List<MainPeopleVo> sortOrdrList) {
		this.sortOrdrList = sortOrdrList;
	}

}
