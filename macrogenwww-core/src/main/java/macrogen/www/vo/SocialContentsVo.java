package macrogen.www.vo;

import java.util.Date;
import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ SocialContentVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:00:43
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class SocialContentsVo extends DefaultVo {
	private Long cntntsSn;
	private String langCode;
	private String cntntsCtgryCode;
	private String cntntsCtgryCodeNm;
	private String cntntsCtgryCodeNmKo;
	private String cntntsCtgryCodeNmEn;
	private String imageAtchId;
	private String imageFlpth;
	private String cntntsSj;
	private Integer sortOrdr;
	private Date postDt;
	private Date nowDt;
	private String logicNm;

	private String searchCntntsCtgryCode;

	private List<Long> cntntsSnList;

	public Long getCntntsSn() {
		return cntntsSn;
	}

	public void setCntntsSn(Long cntntsSn) {
		this.cntntsSn = cntntsSn;
	}

	public String getLangCode() {
		return langCode;
	}

	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}

	public String getCntntsCtgryCode() {
		return cntntsCtgryCode;
	}

	public void setCntntsCtgryCode(String cntntsCtgryCode) {
		this.cntntsCtgryCode = cntntsCtgryCode;
	}

	public String getCntntsCtgryCodeNm() {
		return cntntsCtgryCodeNm;
	}

	public void setCntntsCtgryCodeNm(String cntntsCtgryCodeNm) {
		this.cntntsCtgryCodeNm = cntntsCtgryCodeNm;
	}

	public String getCntntsCtgryCodeNmKo() {
		return cntntsCtgryCodeNmKo;
	}

	public void setCntntsCtgryCodeNmKo(String cntntsCtgryCodeNmKo) {
		this.cntntsCtgryCodeNmKo = cntntsCtgryCodeNmKo;
	}

	public String getCntntsCtgryCodeNmEn() {
		return cntntsCtgryCodeNmEn;
	}

	public void setCntntsCtgryCodeNmEn(String cntntsCtgryCodeNmEn) {
		this.cntntsCtgryCodeNmEn = cntntsCtgryCodeNmEn;
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

	public String getCntntsSj() {
		return cntntsSj;
	}

	public void setCntntsSj(String cntntsSj) {
		this.cntntsSj = cntntsSj;
	}

	public Integer getSortOrdr() {
		return sortOrdr;
	}

	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
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

	public String getSearchCntntsCtgryCode() {
		return searchCntntsCtgryCode;
	}

	public void setSearchCntntsCtgryCode(String searchCntntsCtgryCode) {
		this.searchCntntsCtgryCode = searchCntntsCtgryCode;
	}

	public List<Long> getCntntsSnList() {
		return cntntsSnList;
	}

	public void setCntntsSnList(List<Long> cntntsSnList) {
		this.cntntsSnList = cntntsSnList;
	}

	public String getLogicNm() {
		return logicNm;
	}

	public void setLogicNm(String logicNm) {
		this.logicNm = logicNm;
	}
}
