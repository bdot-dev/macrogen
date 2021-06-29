package macrogen.www.vo;

import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ NttVo.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 7. 오후 4:50:40
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class NttVo extends DefaultVo {
	private Long nttSn;
	private String bbsId;
	private Long bbsCtgrySn;
	private String bbsCtgryNm;
	private String nttSj;
	private String nttCn;
	private String expsrYn;
	private Integer rdcnt;
	private String upendFixingYn;
	private Long wrterSn;
	private String wrterNm;

	private List<NttAtchVo> atchList;

	private Integer searchBbsCtgrySn;
	private String searchExpsrYn;

	public Long getNttSn() {
		return nttSn;
	}
	public void setNttSn(Long nttSn) {
		this.nttSn = nttSn;
	}
	public String getBbsId() {
		return bbsId;
	}
	public void setBbsId(String bbsId) {
		this.bbsId = bbsId;
	}
	public Long getBbsCtgrySn() {
		return bbsCtgrySn;
	}
	public void setBbsCtgrySn(Long bbsCtgrySn) {
		this.bbsCtgrySn = bbsCtgrySn;
	}
	public String getNttSj() {
		return nttSj;
	}
	public void setNttSj(String nttSj) {
		this.nttSj = nttSj;
	}
	public String getNttCn() {
		return nttCn;
	}
	public void setNttCn(String nttCn) {
		this.nttCn = nttCn;
	}
	public String getExpsrYn() {
		return expsrYn;
	}
	public void setExpsrYn(String expsrYn) {
		this.expsrYn = expsrYn;
	}
	public Integer getRdcnt() {
		return rdcnt;
	}
	public void setRdcnt(Integer rdcnt) {
		this.rdcnt = rdcnt;
	}
	public String getUpendFixingYn() {
		return upendFixingYn;
	}
	public void setUpendFixingYn(String upendFixingYn) {
		this.upendFixingYn = upendFixingYn;
	}
	public Long getWrterSn() {
		return wrterSn;
	}
	public void setWrterSn(Long wrterSn) {
		this.wrterSn = wrterSn;
	}
	public List<NttAtchVo> getAtchList() {
		return atchList;
	}
	public void setAtchList(List<NttAtchVo> atchList) {
		this.atchList = atchList;
	}
	public Integer getSearchBbsCtgrySn() {
		return searchBbsCtgrySn;
	}
	public void setSearchBbsCtgrySn(Integer searchBbsCtgrySn) {
		this.searchBbsCtgrySn = searchBbsCtgrySn;
	}
	public String getSearchExpsrYn() {
		return searchExpsrYn;
	}
	public void setSearchExpsrYn(String searchExpsrYn) {
		this.searchExpsrYn = searchExpsrYn;
	}
	public String getBbsCtgryNm() {
		return bbsCtgryNm;
	}
	public void setBbsCtgryNm(String bbsCtgryNm) {
		this.bbsCtgryNm = bbsCtgryNm;
	}
	public String getWrterNm() {
		return wrterNm;
	}
	public void setWrterNm(String wrterNm) {
		this.wrterNm = wrterNm;
	}
}
