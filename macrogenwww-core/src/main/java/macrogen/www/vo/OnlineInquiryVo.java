package macrogen.www.vo;

import java.io.Serializable;
import java.util.Date;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ OnlineInquiryVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 1. 오후 6:51:27
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class OnlineInquiryVo implements Serializable {
	private Long oNo;
	private String langCode;
	private String oName;
	private String oHp;
	private String oEmail;
	private String oIp;
	private String oTitle;
	private String oContent;
	private Date oRegdate;

	public Long getoNo() {
		return oNo;
	}
	public void setoNo(Long oNo) {
		this.oNo = oNo;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public String getoHp() {
		return oHp;
	}
	public void setoHp(String oHp) {
		this.oHp = oHp;
	}
	public String getoEmail() {
		return oEmail;
	}
	public void setoEmail(String oEmail) {
		this.oEmail = oEmail;
	}
	public String getoIp() {
		return oIp;
	}
	public void setoIp(String oIp) {
		this.oIp = oIp;
	}
	public String getoTitle() {
		return oTitle;
	}
	public void setoTitle(String oTitle) {
		this.oTitle = oTitle;
	}
	public String getoContent() {
		return oContent;
	}
	public void setoContent(String oContent) {
		this.oContent = oContent;
	}
	public Date getoRegdate() {
		return oRegdate;
	}
	public void setoRegdate(Date oRegdate) {
		this.oRegdate = oRegdate;
	}
}
