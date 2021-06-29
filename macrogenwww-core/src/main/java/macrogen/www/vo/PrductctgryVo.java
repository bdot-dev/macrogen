package macrogen.www.vo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ PrductctgryVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 11. 27. 오전 11:39:09
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PrductctgryVo extends DefaultVo {

	/**
	 * 카테고리_순번
	 */
	@JsonProperty("id")
	private Long ctgrySn;
	/**
	 * 부모_카테고리_순번
	 */
	@JsonProperty("parentId")
	private Long upperCtgrySn;
	/**
	 * 카테고리명
	 */
	@JsonProperty("text")
	private String ctgryNm;
	/**
	 * 노출_가부
	 */
	private String expsrYn;
	/**
	 * 정렬_순서
	 */
	private Integer sortOrdr;
	/**
	 * 하위 카테고리 목록
	 */
	private List<PrductctgryVo> children;

	/**
	 * 상위에서 현재까지 Path By Sn
	 */
	private String ctgrySnPath;
	/**
	 * 상위에서 현재까지 Path By Name
	 */
	private String ctgryNmPath;
	/**
	 * 최상위 카테고리 Sn
	 */
	private Long topCtgrySn;
	/**
	 * 레벨
	 */
	private Integer level;
	/**
	 * 검색용 (
	 */
	private String topmostYn;
	private String searchCtgryNmPath;

	public Long getCtgrySn() {
		return ctgrySn;
	}
	public void setCtgrySn(Long ctgrySn) {
		this.ctgrySn = ctgrySn;
	}
	public Long getUpperCtgrySn() {
		return upperCtgrySn;
	}
	public void setUpperCtgrySn(Long upperCtgrySn) {
		this.upperCtgrySn = upperCtgrySn;
	}
	public String getCtgryNm() {
		return ctgryNm;
	}
	public void setCtgryNm(String ctgryNm) {
		this.ctgryNm = ctgryNm;
	}
	public String getExpsrYn() {
		return expsrYn;
	}
	public void setExpsrYn(String expsrYn) {
		this.expsrYn = expsrYn;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public List<PrductctgryVo> getChildren() {
		return children;
	}
	public void setChildren(List<PrductctgryVo> children) {
		this.children = children;
	}
	public String getCtgrySnPath() {
		return ctgrySnPath;
	}
	public void setCtgrySnPath(String ctgrySnPath) {
		this.ctgrySnPath = ctgrySnPath;
	}
	public String getCtgryNmPath() {
		return ctgryNmPath;
	}
	public void setCtgryNmPath(String ctgryNmPath) {
		this.ctgryNmPath = ctgryNmPath;
	}
	public Long getTopCtgrySn() {
		return topCtgrySn;
	}
	public void setTopCtgrySn(Long topCtgrySn) {
		this.topCtgrySn = topCtgrySn;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public String getTopmostYn() {
		return topmostYn;
	}
	public void setTopmostYn(String topmostYn) {
		this.topmostYn = topmostYn;
	}
	public String getSearchCtgryNmPath() {
		return searchCtgryNmPath;
	}
	public void setSearchCtgryNmPath(String searchCtgryNmPath) {
		this.searchCtgryNmPath = searchCtgryNmPath;
	}

}
