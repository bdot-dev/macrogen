package macrogen.www.vo;

import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ ThesisVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:02:01
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class ThesisVo extends DefaultVo {
	private Long thesisSn;
	private String langCode;
	private String thesisSj;
	private String jrnl;
	private String linkUrl;
	private String registYear;
	private String registMt;

	private String periodSearchCondition;

	private List<Long> thesisSnList;

	public Long getThesisSn() {
		return thesisSn;
	}
	public void setThesisSn(Long thesisSn) {
		this.thesisSn = thesisSn;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public String getThesisSj() {
		return thesisSj;
	}
	public void setThesisSj(String thesisSj) {
		this.thesisSj = thesisSj;
	}
	public String getJrnl() {
		return jrnl;
	}
	public void setJrnl(String jrnl) {
		this.jrnl = jrnl;
	}
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	public String getRegistYear() {
		return registYear;
	}
	public void setRegistYear(String registYear) {
		this.registYear = registYear;
	}
	public String getRegistMt() {
		return registMt;
	}
	public void setRegistMt(String registMt) {
		this.registMt = registMt;
	}
	public List<Long> getThesisSnList() {
		return thesisSnList;
	}
	public void setThesisSnList(List<Long> thesisSnList) {
		this.thesisSnList = thesisSnList;
	}
	public String getPeriodSearchCondition() {
		return periodSearchCondition;
	}
	public void setPeriodSearchCondition(String periodSearchCondition) {
		this.periodSearchCondition = periodSearchCondition;
	}
}
