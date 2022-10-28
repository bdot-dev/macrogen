package macrogen.www.vo;

import java.util.Date;
import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ MainSomlnkVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:00:43
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class MainSomlnkVo extends DefaultVo {
	private Long mainSomlnkSn;
	private String langCode;
	private String somlnkCtgryCode;
	private String somlnkCtgryCodeNm;
	private String somlnkCtgryCodeNmKo;
	private String somlnkCtgryCodeNmEn;
	private String imageAtchId;
	private String imageFlpth;
	private String somlnkSj;
	private String somlnkUrl;
	private Integer sortOrdr;
	private Date postDt;
	private Date nowDt;

	private String searchSomlnkCtgryCode;

	private List<Long> mainSomlnkSnList;

	public String getSomlnkCtgryCode() {
		return somlnkCtgryCode;
	}
	public void setSomlnkCtgryCode(String somlnkCtgryCode) {
		this.somlnkCtgryCode = somlnkCtgryCode;
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
	public String getSomlnkSj() {
		return somlnkSj;
	}
	public void setSomlnkSj(String somlnkSj) {
		this.somlnkSj = somlnkSj;
	}
	public String getSomlnkUrl() {
		return somlnkUrl;
	}
	public void setSomlnkUrl(String somlnkUrl) {
		this.somlnkUrl = somlnkUrl;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public Long getMainSomlnkSn() {
		return mainSomlnkSn;
	}
	public void setMainSomlnkSn(Long mainSomlnkSn) {
		this.mainSomlnkSn = mainSomlnkSn;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public String getSomlnkCtgryCodeNm() {
		return somlnkCtgryCodeNm;
	}
	public void setSomlnkCtgryCodeNm(String somlnkCtgryCodeNm) {
		this.somlnkCtgryCodeNm = somlnkCtgryCodeNm;
	}
	public String getSomlnkCtgryCodeNmKo() {
		return somlnkCtgryCodeNmKo;
	}
	public void setSomlnkCtgryCodeNmKo(String somlnkCtgryCodeNmKo) {
		this.somlnkCtgryCodeNmKo = somlnkCtgryCodeNmKo;
	}
	public String getSomlnkCtgryCodeNmEn() {
		return somlnkCtgryCodeNmEn;
	}
	public void setSomlnkCtgryCodeNmEn(String somlnkCtgryCodeNmEn) {
		this.somlnkCtgryCodeNmEn = somlnkCtgryCodeNmEn;
	}
	public List<Long> getMainSomlnkSnList() {
		return mainSomlnkSnList;
	}
	public void setMainSomlnkSnList(List<Long> mainSomlnkSnList) {
		this.mainSomlnkSnList = mainSomlnkSnList;
	}
	public String getSearchSomlnkCtgryCode() {
		return searchSomlnkCtgryCode;
	}
	public void setSearchSomlnkCtgryCode(String searchSomlnkCtgryCode) {
		this.searchSomlnkCtgryCode = searchSomlnkCtgryCode;
	}
	public Date getPostDt() {
		return postDt;
	}
	public void setPostDt(Date postDt) {
		this.postDt = postDt;
	}
	public Date getNowDt() {
		return nowDt;
	}
	public void setNowDt(Date nowDt) {
		this.nowDt = nowDt;
	}
}
