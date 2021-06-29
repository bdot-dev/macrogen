package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ PrductImageVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 12. 6. 오후 4:20:32
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PrductImageVo extends DefaultVo {
	private Long prductSn;
	private String atchId;
	private Integer sortOrdr;
	private String physiclFlpth;

	public Long getPrductSn() {
		return prductSn;
	}
	public void setPrductSn(Long prductSn) {
		this.prductSn = prductSn;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public String getAtchId() {
		return atchId;
	}
	public void setAtchId(String atchId) {
		this.atchId = atchId;
	}
	public String getPhysiclFlpth() {
		return physiclFlpth;
	}
	public void setPhysiclFlpth(String physiclFlpth) {
		this.physiclFlpth = physiclFlpth;
	}
}
