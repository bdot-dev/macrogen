package macrogen.www.vo;

import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ PatentVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:01:37
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PatentVo extends DefaultVo {

	private Long patentSn;
	private String langCode;
	private String ctgryCode;
	private String ctgryCodeNm;
	private String ctgryCodeNmKo;
	private String ctgryCodeNmEn;
	private String nationCode;
	private String nationCodeNm;
	private String nationCodeNmKo;
	private String nationCodeNmEn;
	private String patentCn;

	private String searchCtgryCode;
	private String searchNationCode;

	private List<Long> patentSnList;

	public Long getPatentSn() {
		return patentSn;
	}
	public void setPatentSn(Long patentSn) {
		this.patentSn = patentSn;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public String getCtgryCode() {
		return ctgryCode;
	}
	public void setCtgryCode(String ctgryCode) {
		this.ctgryCode = ctgryCode;
	}
	public String getNationCode() {
		return nationCode;
	}
	public void setNationCode(String nationCode) {
		this.nationCode = nationCode;
	}
	public String getPatentCn() {
		return patentCn;
	}
	public void setPatentCn(String patentCn) {
		this.patentCn = patentCn;
	}
	public List<Long> getPatentSnList() {
		return patentSnList;
	}
	public void setPatentSnList(List<Long> patentSnList) {
		this.patentSnList = patentSnList;
	}
	public String getSearchCtgryCode() {
		return searchCtgryCode;
	}
	public void setSearchCtgryCode(String searchCtgryCode) {
		this.searchCtgryCode = searchCtgryCode;
	}
	public String getSearchNationCode() {
		return searchNationCode;
	}
	public void setSearchNationCode(String searchNationCode) {
		this.searchNationCode = searchNationCode;
	}
	public String getCtgryCodeNm() {
		return ctgryCodeNm;
	}
	public void setCtgryCodeNm(String ctgryCodeNm) {
		this.ctgryCodeNm = ctgryCodeNm;
	}
	public String getNationCodeNm() {
		return nationCodeNm;
	}
	public void setNationCodeNm(String nationCodeNm) {
		this.nationCodeNm = nationCodeNm;
	}
	public String getCtgryCodeNmKo() {
		return ctgryCodeNmKo;
	}
	public void setCtgryCodeNmKo(String ctgryCodeNmKo) {
		this.ctgryCodeNmKo = ctgryCodeNmKo;
	}
	public String getCtgryCodeNmEn() {
		return ctgryCodeNmEn;
	}
	public void setCtgryCodeNmEn(String ctgryCodeNmEn) {
		this.ctgryCodeNmEn = ctgryCodeNmEn;
	}
	public String getNationCodeNmKo() {
		return nationCodeNmKo;
	}
	public void setNationCodeNmKo(String nationCodeNmKo) {
		this.nationCodeNmKo = nationCodeNmKo;
	}
	public String getNationCodeNmEn() {
		return nationCodeNmEn;
	}
	public void setNationCodeNmEn(String nationCodeNmEn) {
		this.nationCodeNmEn = nationCodeNmEn;
	}
}
