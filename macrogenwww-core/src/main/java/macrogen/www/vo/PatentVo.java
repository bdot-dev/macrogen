package macrogen.www.vo;

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
	private String nationCode;
	private String patentCn;

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
}
