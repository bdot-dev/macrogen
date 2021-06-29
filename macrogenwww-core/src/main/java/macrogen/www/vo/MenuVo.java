package macrogen.www.vo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ MenuVo.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 7. 오후 4:41:00
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class MenuVo extends DefaultVo{
	@JsonProperty("id")
	private Long menuSn;
	@JsonProperty("parentId")
	private Long upperMenuSn;
	@JsonProperty("text")
	private String menuNm;
	private String menuUrl;
	private Integer sortOrdr;
	private String metaTagDc;
	private String metaTagKwrd;
	private String expsrYn;
	private String menuSeCode;
	private String classNm;
	private String langId;
	private String topmostYn;
	private String notEmptyUrlYn;
	private String menuSnPath;
	private String menuNmPath;
	private Long topMenuSn;
	private String pendncyYn;
	private List<Long> searchMenuSnList;
	private List<MenuVo> children;

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
	public String getMetaTagDc() {
		return metaTagDc;
	}
	public void setMetaTagDc(String metaTagDc) {
		this.metaTagDc = metaTagDc;
	}
	public String getMetaTagKwrd() {
		return metaTagKwrd;
	}
	public void setMetaTagKwrd(String metaTagKwrd) {
		this.metaTagKwrd = metaTagKwrd;
	}
	public String getExpsrYn() {
		return expsrYn;
	}
	public void setExpsrYn(String expsrYn) {
		this.expsrYn = expsrYn;
	}
	public String getMenuSeCode() {
		return menuSeCode;
	}
	public void setMenuSeCode(String menuSeCode) {
		this.menuSeCode = menuSeCode;
	}
	public String getClassNm() {
		return classNm;
	}
	public void setClassNm(String classNm) {
		this.classNm = classNm;
	}
	public String getLangId() {
		return langId;
	}
	public void setLangId(String langId) {
		this.langId = langId;
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
	public String getMenuNmPath() {
		return menuNmPath;
	}
	public void setMenuNmPath(String menuNmPath) {
		this.menuNmPath = menuNmPath;
	}
	public Long getTopMenuSn() {
		return topMenuSn;
	}
	public void setTopMenuSn(Long topMenuSn) {
		this.topMenuSn = topMenuSn;
	}
	public String getPendncyYn() {
		return pendncyYn;
	}
	public void setPendncyYn(String pendncyYn) {
		this.pendncyYn = pendncyYn;
	}
	public List<Long> getSearchMenuSnList() {
		return searchMenuSnList;
	}
	public void setSearchMenuSnList(List<Long> searchMenuSnList) {
		this.searchMenuSnList = searchMenuSnList;
	}
	public List<MenuVo> getChildren() {
		return children;
	}
	public void setChildren(List<MenuVo> children) {
		this.children = children;
	}
}
