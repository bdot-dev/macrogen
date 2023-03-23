package macrogen.www.vo;

import java.util.List;

@SuppressWarnings("serial")
public class ContactVo extends DefaultVo {

	private Long contactSn;
	private String langCode;
	
	private String nationCode;
	private String nationCodeNm;
	private String nationCodeNmKo;
	private String nationCodeNmEn;
	
	private String nmbrWriterNm;
	private String contactSj;
	private String contactCn;
	
	private String company;
	private String mbtlnum;
	private String email;
	private String field;
	
	private String searchNationCode;	// 검색 국가
	
	private List<Long> contactSnList;	// 체크 삭제 리스트
	
	private String captchaString;
	
	
	public Long getContactSn() {
		return contactSn;
	}
	public void setContactSn(Long contactSn) {
		this.contactSn = contactSn;
	}
	public String getNationCode() {
		return nationCode;
	}
	public void setNationCode(String nationCode) {
		this.nationCode = nationCode;
	}
	
	public String getNationCodeNm() {
		return nationCodeNm;
	}
	public void setNationCodeNm(String nationCodeNm) {
		this.nationCodeNm = nationCodeNm;
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
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	
	public String getNmbrWriterNm() {
		return nmbrWriterNm;
	}
	public void setNmbrWriterNm(String nmbrWriterNm) {
		this.nmbrWriterNm = nmbrWriterNm;
	}
	public String getContactSj() {
		return contactSj;
	}
	public void setContactSj(String contactSj) {
		this.contactSj = contactSj;
	}
	public String getContactCn() {
		return contactCn;
	}
	public void setContactCn(String contactCn) {
		this.contactCn = contactCn;
	}	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getMbtlnum() {
		return mbtlnum;
	}
	public void setMbtlnum(String mbtlnum) {
		this.mbtlnum = mbtlnum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getSearchNationCode() {
		return searchNationCode;
	}
	public void setSearchNationCode(String searchNationCode) {
		this.searchNationCode = searchNationCode;
	}
	public List<Long> getContactSnList() {
		return contactSnList;
	}
	public void setContactSnList(List<Long> contactSnList) {
		this.contactSnList = contactSnList;
	}
	public String getCaptchaString() {
		return captchaString;
	}
	public void setCaptchaString(String captchaString) {
		this.captchaString = captchaString;
	}
	
	
}
