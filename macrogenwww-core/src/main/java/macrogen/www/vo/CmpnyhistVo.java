package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ CmpnyhistVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:01:01
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class CmpnyhistVo extends DefaultVo {
	private Long cmpnyhistSn;
	private String langCode;
	private String year;
	private String mt;
	private String cm;

	public Long getCmpnyhistSn() {
		return cmpnyhistSn;
	}
	public void setCmpnyhistSn(Long cmpnyhistSn) {
		this.cmpnyhistSn = cmpnyhistSn;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMt() {
		return mt;
	}
	public void setMt(String mt) {
		this.mt = mt;
	}
	public String getCm() {
		return cm;
	}
	public void setCm(String cm) {
		this.cm = cm;
	}

}
