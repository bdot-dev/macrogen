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
	private String linkUrl;

	private String atchId;
	private String imageAtchId;
	private String imageFlpth;
	private String PeopleUrl;
	private Integer sortOrdr;

	private List<MainPeopleVo> dataVoList;

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

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public String getImageAtchId() {
		return imageAtchId;
	}

	public void setImageAtchId(String imageAtchId) {
		this.imageAtchId = imageAtchId;
	}

	public String getImageFlpth() {
		return imageFlpth;
	}

	public void setImageFlpth(String imageFlpth) {
		this.imageFlpth = imageFlpth;
	}

	public String getPeopleUrl() {
		return PeopleUrl;
	}

	public void setPeopleUrl(String peopleUrl) {
		PeopleUrl = peopleUrl;
	}

	public Integer getSortOrdr() {
		return sortOrdr;
	}

	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}

	public String getAtchId() {
		return atchId;
	}

	public void setAtchId(String atchId) {
		this.atchId = atchId;
	}

	public List<MainPeopleVo> getDataVoList() {
		return dataVoList;
	}

	public void setDataVoList(List<MainPeopleVo> dataVoList) {
		this.dataVoList = dataVoList;
	}

}
