package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ PrductPrductCtgryVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 12. 31. 오후 2:51:50
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PrductPrductctgryVo extends PrductctgryVo {
	private Long prductSn;
	private Long ctgrySn;
	private Integer sortOrdr;

	public Long getPrductSn() {
		return prductSn;
	}
	public void setPrductSn(Long prductSn) {
		this.prductSn = prductSn;
	}
	public Long getCtgrySn() {
		return ctgrySn;
	}
	public void setCtgrySn(Long ctgrySn) {
		this.ctgrySn = ctgrySn;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
}
