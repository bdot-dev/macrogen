package macrogen.www.vo;

import java.util.List;

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
	private Long cmpnyhistGroupSn;
	private String cmpnyhistGroupDispNmKo;
	private String cmpnyhistGroupDispNmEn;
	private String langCode;
	private String year;
	private String mt;
	private String cn;

	private String searchYear;
	private String searchMt;

	private List<Long> cmpnyhistSnList;

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
	public String getSearchYear() {
		return searchYear;
	}
	public void setSearchYear(String searchYear) {
		this.searchYear = searchYear;
	}
	public String getSearchMt() {
		return searchMt;
	}
	public void setSearchMt(String searchMt) {
		this.searchMt = searchMt;
	}
	public String getCn() {
		return cn;
	}
	public void setCn(String cn) {
		this.cn = cn;
	}
	public List<Long> getCmpnyhistSnList() {
		return cmpnyhistSnList;
	}
	public void setCmpnyhistSnList(List<Long> cmpnyhistSnList) {
		this.cmpnyhistSnList = cmpnyhistSnList;
	}
	public Long getCmpnyhistGroupSn() {
		return cmpnyhistGroupSn;
	}
	public void setCmpnyhistGroupSn(Long cmpnyhistGroupSn) {
		this.cmpnyhistGroupSn = cmpnyhistGroupSn;
	}
	public String getCmpnyhistGroupDispNmKo() {
		return cmpnyhistGroupDispNmKo;
	}
	public void setCmpnyhistGroupDispNmKo(String cmpnyhistGroupDispNmKo) {
		this.cmpnyhistGroupDispNmKo = cmpnyhistGroupDispNmKo;
	}
	public String getCmpnyhistGroupDispNmEn() {
		return cmpnyhistGroupDispNmEn;
	}
	public void setCmpnyhistGroupDispNmEn(String cmpnyhistGroupDispNmEn) {
		this.cmpnyhistGroupDispNmEn = cmpnyhistGroupDispNmEn;
	}
}
