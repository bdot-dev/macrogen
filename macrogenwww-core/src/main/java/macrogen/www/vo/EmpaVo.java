package macrogen.www.vo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ EmpaVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 11. 오후 2:23:50
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class EmpaVo extends DefaultVo {
	private Long empaSn;
	private String langCode;
	private String empaSj;
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date rceptBeginDe;
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date rceptEndDe;
	private String rceptSttusCode;
	private String rceptSttusCodeNm;
	private String sportSeCode;
	private String sportSeCodeNm;
	private String atchId;
	private String logicNm;
	private String empaCn;

	private String periodSearchCondition;
	private String searchRceptSttusCode;
	private String searchSportSeCode;

	private List<Long> empaSnList;

	public Long getEmpaSn() {
		return empaSn;
	}
	public void setEmpaSn(Long empaSn) {
		this.empaSn = empaSn;
	}
	public String getEmpaSj() {
		return empaSj;
	}
	public void setEmpaSj(String empaSj) {
		this.empaSj = empaSj;
	}
	public Date getRceptBeginDe() {
		return rceptBeginDe;
	}
	public void setRceptBeginDe(Date rceptBeginDe) {
		this.rceptBeginDe = rceptBeginDe;
	}
	public Date getRceptEndDe() {
		return rceptEndDe;
	}
	public void setRceptEndDe(Date rceptEndDe) {
		this.rceptEndDe = rceptEndDe;
	}
	public String getRceptSttusCode() {
		return rceptSttusCode;
	}
	public void setRceptSttusCode(String rceptSttusCode) {
		this.rceptSttusCode = rceptSttusCode;
	}
	public String getRceptSttusCodeNm() {
		return rceptSttusCodeNm;
	}
	public void setRceptSttusCodeNm(String rceptSttusCodeNm) {
		this.rceptSttusCodeNm = rceptSttusCodeNm;
	}
	public String getSportSeCode() {
		return sportSeCode;
	}
	public void setSportSeCode(String sportSeCode) {
		this.sportSeCode = sportSeCode;
	}
	public String getSportSeCodeNm() {
		return sportSeCodeNm;
	}
	public void setSportSeCodeNm(String sportSeCodeNm) {
		this.sportSeCodeNm = sportSeCodeNm;
	}
	public String getAtchId() {
		return atchId;
	}
	public void setAtchId(String atchId) {
		this.atchId = atchId;
	}
	public String getLogicNm() {
		return logicNm;
	}
	public void setLogicNm(String logicNm) {
		this.logicNm = logicNm;
	}
	public String getEmpaCn() {
		return empaCn;
	}
	public void setEmpaCn(String empaCn) {
		this.empaCn = empaCn;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public List<Long> getEmpaSnList() {
		return empaSnList;
	}
	public void setEmpaSnList(List<Long> empaSnList) {
		this.empaSnList = empaSnList;
	}
	public String getPeriodSearchCondition() {
		return periodSearchCondition;
	}
	public void setPeriodSearchCondition(String periodSearchCondition) {
		this.periodSearchCondition = periodSearchCondition;
	}
	public String getSearchRceptSttusCode() {
		return searchRceptSttusCode;
	}
	public void setSearchRceptSttusCode(String searchRceptSttusCode) {
		this.searchRceptSttusCode = searchRceptSttusCode;
	}
	public String getSearchSportSeCode() {
		return searchSportSeCode;
	}
	public void setSearchSportSeCode(String searchSportSeCode) {
		this.searchSportSeCode = searchSportSeCode;
	}
}
