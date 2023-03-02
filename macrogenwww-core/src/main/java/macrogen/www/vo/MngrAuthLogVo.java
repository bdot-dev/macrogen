package macrogen.www.vo;

import java.util.List;


import com.fasterxml.jackson.annotation.JsonProperty;

@SuppressWarnings("serial")
public class MngrAuthLogVo extends UserVo {

	private String roleId;
	private String roleNm;
	private String url;
	
	private Long mngrHisSeq;
	private Long mngrurlHisSeq;
	private Long mngrmenuHisSeq;
	private String result;
	private String ip;
	private Long registerSn;
	
	private String menuNmPath;
	

	private Long menuSn;

	private Long upperMenuSn;

	private String menuNm;
	private String menuUrl;
	private Integer sortOrdr;

	private String topmostYn;
	private String notEmptyUrlYn;
	private String menuSnPath;

	private Long topMenuSn;

	private List<String> menuNmList;
	private List<String> urlList;
	private String pendncyYn;
	
	private String regDt;
	private Integer menuCnt;
	private Integer urlCnt;
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleNm() {
		return roleNm;
	}
	public void setRoleNm(String roleNm) {
		this.roleNm = roleNm;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Long getMngrHisSeq() {
		return mngrHisSeq;
	}
	public void setMngrHisSeq(Long mngrHisSeq) {
		this.mngrHisSeq = mngrHisSeq;
	}
	public Long getMngrurlHisSeq() {
		return mngrurlHisSeq;
	}
	public void setMngrurlHisSeq(Long mngrurlHisSeq) {
		this.mngrurlHisSeq = mngrurlHisSeq;
	}
	public Long getMngrmenuHisSeq() {
		return mngrmenuHisSeq;
	}
	public void setMngrmenuHisSeq(Long mngrmenuHisSeq) {
		this.mngrmenuHisSeq = mngrmenuHisSeq;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Long getRegisterSn() {
		return registerSn;
	}
	public void setRegisterSn(Long registerSn) {
		this.registerSn = registerSn;
	}
	public String getMenuNmPath() {
		return menuNmPath;
	}
	public void setMenuNmPath(String menuNmPath) {
		this.menuNmPath = menuNmPath;
	}
	public Long getMenuSn() {
		return menuSn;
	}
	public void setMenuSn(Long menuSn) {
		this.menuSn = menuSn;
	}
	public Long getUpperMenuSn() {
		return upperMenuSn;
	}
	public void setUpperMenuSn(Long upperMenuSn) {
		this.upperMenuSn = upperMenuSn;
	}
	public String getMenuNm() {
		return menuNm;
	}
	public void setMenuNm(String menuNm) {
		this.menuNm = menuNm;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public String getTopmostYn() {
		return topmostYn;
	}
	public void setTopmostYn(String topmostYn) {
		this.topmostYn = topmostYn;
	}
	public String getNotEmptyUrlYn() {
		return notEmptyUrlYn;
	}
	public void setNotEmptyUrlYn(String notEmptyUrlYn) {
		this.notEmptyUrlYn = notEmptyUrlYn;
	}
	public String getMenuSnPath() {
		return menuSnPath;
	}
	public void setMenuSnPath(String menuSnPath) {
		this.menuSnPath = menuSnPath;
	}
	public Long getTopMenuSn() {
		return topMenuSn;
	}
	public void setTopMenuSn(Long topMenuSn) {
		this.topMenuSn = topMenuSn;
	}
	public List<String> getMenuNmList() {
		return menuNmList;
	}
	public void setMenuNmList(List<String> menuNmList) {
		this.menuNmList = menuNmList;
	}
	public List<String> getUrlList() {
		return urlList;
	}
	public void setUrlList(List<String> urlList) {
		this.urlList = urlList;
	}
	public String getPendncyYn() {
		return pendncyYn;
	}
	public void setPendncyYn(String pendncyYn) {
		this.pendncyYn = pendncyYn;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public Integer getMenuCnt() {
		return menuCnt;
	}
	public void setMenuCnt(Integer menuCnt) {
		this.menuCnt = menuCnt;
	}
	public Integer getUrlCnt() {
		return urlCnt;
	}
	public void setUrlCnt(Integer urlCnt) {
		this.urlCnt = urlCnt;
	}

}
