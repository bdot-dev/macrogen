package macrogen.www.vo;

import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ WnpzVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:02:37
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class WnpzVo extends DefaultVo {
	private Long wnpzSn;
	private String langCode;
	private String wnpzClCode;
	private String wnpzClCodeNm;
	private String wnpzClCodeNmKo;
	private String wnpzClCodeNmEn;
	private String wnpzTmeCode;
	private String wnpzTmeCodeNm;
	private String wnpzTmeCodeNmKo;
	private String wnpzTmeCodeNmEn;
	private String photoAtchId;
	private String photoFlpth;
	private String wnpzNm;
	private String rm;
	private String wnpzCn;

	private List<String> searchWnpzClCodeList;
	private String searchWnpzTmeCode;

	private List<Long> wnpzSnList;

	public Long getWnpzSn() {
		return wnpzSn;
	}
	public void setWnpzSn(Long wnpzSn) {
		this.wnpzSn = wnpzSn;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public String getWnpzClCode() {
		return wnpzClCode;
	}
	public void setWnpzClCode(String wnpzClCode) {
		this.wnpzClCode = wnpzClCode;
	}
	public String getWnpzTmeCode() {
		return wnpzTmeCode;
	}
	public void setWnpzTmeCode(String wnpzTmeCode) {
		this.wnpzTmeCode = wnpzTmeCode;
	}
	public String getPhotoAtchId() {
		return photoAtchId;
	}
	public void setPhotoAtchId(String photoAtchId) {
		this.photoAtchId = photoAtchId;
	}
	public String getWnpzNm() {
		return wnpzNm;
	}
	public void setWnpzNm(String wnpzNm) {
		this.wnpzNm = wnpzNm;
	}
	public String getRm() {
		return rm;
	}
	public void setRm(String rm) {
		this.rm = rm;
	}
	public String getWnpzCn() {
		return wnpzCn;
	}
	public void setWnpzCn(String wnpzCn) {
		this.wnpzCn = wnpzCn;
	}
	public List<Long> getWnpzSnList() {
		return wnpzSnList;
	}
	public void setWnpzSnList(List<Long> wnpzSnList) {
		this.wnpzSnList = wnpzSnList;
	}
	public String getSearchWnpzTmeCode() {
		return searchWnpzTmeCode;
	}
	public void setSearchWnpzTmeCode(String searchWnpzTmeCode) {
		this.searchWnpzTmeCode = searchWnpzTmeCode;
	}
	public List<String> getSearchWnpzClCodeList() {
		return searchWnpzClCodeList;
	}
	public void setSearchWnpzClCodeList(List<String> searchWnpzClCodeList) {
		this.searchWnpzClCodeList = searchWnpzClCodeList;
	}
	public String getWnpzClCodeNm() {
		return wnpzClCodeNm;
	}
	public void setWnpzClCodeNm(String wnpzClCodeNm) {
		this.wnpzClCodeNm = wnpzClCodeNm;
	}
	public String getWnpzClCodeNmKo() {
		return wnpzClCodeNmKo;
	}
	public void setWnpzClCodeNmKo(String wnpzClCodeNmKo) {
		this.wnpzClCodeNmKo = wnpzClCodeNmKo;
	}
	public String getWnpzClCodeNmEn() {
		return wnpzClCodeNmEn;
	}
	public void setWnpzClCodeNmEn(String wnpzClCodeNmEn) {
		this.wnpzClCodeNmEn = wnpzClCodeNmEn;
	}
	public String getWnpzTmeCodeNm() {
		return wnpzTmeCodeNm;
	}
	public void setWnpzTmeCodeNm(String wnpzTmeCodeNm) {
		this.wnpzTmeCodeNm = wnpzTmeCodeNm;
	}
	public String getWnpzTmeCodeNmKo() {
		return wnpzTmeCodeNmKo;
	}
	public void setWnpzTmeCodeNmKo(String wnpzTmeCodeNmKo) {
		this.wnpzTmeCodeNmKo = wnpzTmeCodeNmKo;
	}
	public String getWnpzTmeCodeNmEn() {
		return wnpzTmeCodeNmEn;
	}
	public void setWnpzTmeCodeNmEn(String wnpzTmeCodeNmEn) {
		this.wnpzTmeCodeNmEn = wnpzTmeCodeNmEn;
	}
	public String getPhotoFlpth() {
		return photoFlpth;
	}
	public void setPhotoFlpth(String photoFlpth) {
		this.photoFlpth = photoFlpth;
	}
}
