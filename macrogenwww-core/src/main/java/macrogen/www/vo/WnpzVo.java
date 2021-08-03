package macrogen.www.vo;

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
	private String wnpzTmeCode;
	private String photoAtchId;
	private String wnpzNm;
	private String rm;
	private String wnpzCn;

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
}
