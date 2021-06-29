package macrogen.www.vo;

import java.math.BigDecimal;
import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ PrductVo.java
 * 개요 :
 * </pre>
 * 1.작성일 : 2019. 1. 25. 오전 10:47:59
 * 2.작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PrductVo extends DefaultVo {
	private Long prductSn;
	private String prductKndCode;
	private String prductKndCodeNm;
	private String prductNm;
	private BigDecimal prductPc;
	private String reprsntImageAtchId;
	private String reprsntImageFlpth;
	private Long reprsntCtgrySn;
	private String reprsntCtgryNm;
	private String reprsntCtgryNmPath;
	private String prductIntrcn;
	private String expsrYn;
	private Integer sortOrdr;

	private List<PrductImageVo> imageList;
	private List<PrductPrductctgryVo> prductctgryList;
	private List<RelatePrductVo> relatePrductList;

	private Long searchPrductctgrySn;
	private List<Long> prductctgrySnList;

	public Long getPrductSn() {
		return prductSn;
	}
	public void setPrductSn(Long prductSn) {
		this.prductSn = prductSn;
	}
	public String getPrductKndCode() {
		return prductKndCode;
	}
	public void setPrductKndCode(String prductKndCode) {
		this.prductKndCode = prductKndCode;
	}
	public String getPrductNm() {
		return prductNm;
	}
	public void setPrductNm(String prductNm) {
		this.prductNm = prductNm;
	}
	public BigDecimal getPrductPc() {
		return prductPc;
	}
	public void setPrductPc(BigDecimal prductPc) {
		this.prductPc = prductPc;
	}
	public String getReprsntImageAtchId() {
		return reprsntImageAtchId;
	}
	public void setReprsntImageAtchId(String reprsntImageAtchId) {
		this.reprsntImageAtchId = reprsntImageAtchId;
	}
	public String getReprsntImageFlpth() {
		return reprsntImageFlpth;
	}
	public void setReprsntImageFlpth(String reprsntImageFlpth) {
		this.reprsntImageFlpth = reprsntImageFlpth;
	}
	public String getPrductIntrcn() {
		return prductIntrcn;
	}
	public void setPrductIntrcn(String prductIntrcn) {
		this.prductIntrcn = prductIntrcn;
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
	public String getPrductKndCodeNm() {
		return prductKndCodeNm;
	}
	public void setPrductKndCodeNm(String prductKndCodeNm) {
		this.prductKndCodeNm = prductKndCodeNm;
	}
	public List<Long> getPrductctgrySnList() {
		return prductctgrySnList;
	}
	public void setPrductctgrySnList(List<Long> prductctgrySnList) {
		this.prductctgrySnList = prductctgrySnList;
	}
	public Long getSearchPrductctgrySn() {
		return searchPrductctgrySn;
	}
	public void setSearchPrductctgrySn(Long searchPrductctgrySn) {
		this.searchPrductctgrySn = searchPrductctgrySn;
	}
	public List<PrductImageVo> getImageList() {
		return imageList;
	}
	public void setImageList(List<PrductImageVo> imageList) {
		this.imageList = imageList;
	}
	public List<PrductPrductctgryVo> getPrductctgryList() {
		return prductctgryList;
	}
	public void setPrductctgryList(List<PrductPrductctgryVo> prductctgryList) {
		this.prductctgryList = prductctgryList;
	}
	public Long getReprsntCtgrySn() {
		return reprsntCtgrySn;
	}
	public void setReprsntCtgrySn(Long reprsntCtgrySn) {
		this.reprsntCtgrySn = reprsntCtgrySn;
	}
	public String getReprsntCtgryNm() {
		return reprsntCtgryNm;
	}
	public void setReprsntCtgryNm(String reprsntCtgryNm) {
		this.reprsntCtgryNm = reprsntCtgryNm;
	}
	public String getReprsntCtgryNmPath() {
		return reprsntCtgryNmPath;
	}
	public void setReprsntCtgryNmPath(String reprsntCtgryNmPath) {
		this.reprsntCtgryNmPath = reprsntCtgryNmPath;
	}
	public List<RelatePrductVo> getRelatePrductList() {
		return relatePrductList;
	}
	public void setRelatePrductList(List<RelatePrductVo> relatePrductList) {
		this.relatePrductList = relatePrductList;
	}
}
