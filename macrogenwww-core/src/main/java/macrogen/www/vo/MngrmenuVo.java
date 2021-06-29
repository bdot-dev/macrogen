package macrogen.www.vo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ MngrmenuVo.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 7. 오후 4:46:46
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class MngrmenuVo extends DefaultVo{
	@JsonProperty("id")
	private Long menuSn;
	@JsonProperty("parentId")
	private Long upperMenuSn;
	@JsonProperty("text")
	private String menuNm;
	private String menuUrl;
	private Integer sortOrdr;

	private String roleId;
	private String topmostYn;
	private String notEmptyUrlYn;
	private String menuSnPath;
	private String menuNmPath;
	private Long topMenuSn;

	private List<MngrmenuVo> children;
	private String pendncyYn;

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
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public Long getTopMenuSn() {
		return topMenuSn;
	}
	public void setTopMenuSn(Long topMenuSn) {
		this.topMenuSn = topMenuSn;
	}
	public List<MngrmenuVo> getChildren() {
		return children;
	}
	public void setChildren(List<MngrmenuVo> children) {
		this.children = children;
	}
	public String getMenuNmPath() {
		return menuNmPath;
	}
	public void setMenuNmPath(String menuNmPath) {
		this.menuNmPath = menuNmPath;
	}
	public String getPendncyYn() {
		return pendncyYn;
	}
	public void setPendncyYn(String pendncyYn) {
		this.pendncyYn = pendncyYn;
	}

}
