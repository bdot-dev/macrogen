package macrogen.www.vo;

@SuppressWarnings("serial")
public class RelatePrductVo extends DefaultVo {
	private Long prductSn;
	private Long relatePrductSn;
	private String relatePrductNm;
	private String relateReprsntImageAtchId;
	private String relateReprsntImageFlpth;
	private Integer sortOrdr;

	public Long getPrductSn() {
		return prductSn;
	}
	public void setPrductSn(Long prductSn) {
		this.prductSn = prductSn;
	}
	public Long getRelatePrductSn() {
		return relatePrductSn;
	}
	public void setRelatePrductSn(Long relatePrductSn) {
		this.relatePrductSn = relatePrductSn;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public String getRelatePrductNm() {
		return relatePrductNm;
	}
	public void setRelatePrductNm(String relatePrductNm) {
		this.relatePrductNm = relatePrductNm;
	}
	public String getRelateReprsntImageAtchId() {
		return relateReprsntImageAtchId;
	}
	public void setRelateReprsntImageAtchId(String relateReprsntImageAtchId) {
		this.relateReprsntImageAtchId = relateReprsntImageAtchId;
	}
	public String getRelateReprsntImageFlpth() {
		return relateReprsntImageFlpth;
	}
	public void setRelateReprsntImageFlpth(String relateReprsntImageFlpth) {
		this.relateReprsntImageFlpth = relateReprsntImageFlpth;
	}
}
