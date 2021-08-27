package macrogen.www.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ PolicyVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 10. 오후 5:22:03
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PolicyVo extends DefaultVo {
	private Long policySn;
	private String langCode;
	private String policyCode;
	private Integer policyVer;
	private String expsrYn;
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date applcDe;
	private String policyCn;

	public Long getPolicySn() {
		return policySn;
	}
	public void setPolicySn(Long policySn) {
		this.policySn = policySn;
	}
	public String getPolicyCode() {
		return policyCode;
	}
	public void setPolicyCode(String policyCode) {
		this.policyCode = policyCode;
	}
	public Integer getPolicyVer() {
		return policyVer;
	}
	public void setPolicyVer(Integer policyVer) {
		this.policyVer = policyVer;
	}
	public String getExpsrYn() {
		return expsrYn;
	}
	public void setExpsrYn(String expsrYn) {
		this.expsrYn = expsrYn;
	}
	public Date getApplcDe() {
		return applcDe;
	}
	public void setApplcDe(Date applcDe) {
		this.applcDe = applcDe;
	}
	public String getPolicyCn() {
		return policyCn;
	}
	public void setPolicyCn(String policyCn) {
		this.policyCn = policyCn;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
}
