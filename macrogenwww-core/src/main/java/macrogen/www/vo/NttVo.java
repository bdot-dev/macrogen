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
	private String langCode;

	private String nmbrWrterNm;
	private String mbtlnum;
	private String thumbBassImageUseYn;
	private String thumbAtchId;
	private String thumbFlpth;
	private String thumbBassImageCode;
	private String thumbBassImageCodeNm;
	private String mvpUrl;

	private List<NttAtchVo> atchList;
	private List<Long> nttSnList;

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
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public List<Long> getNttSnList() {
		return nttSnList;
	}
	public void setNttSnList(List<Long> nttSnList) {
		this.nttSnList = nttSnList;
	}
	public String getMbtlnum() {
		return mbtlnum;
	}
	public void setMbtlnum(String mbtlnum) {
		this.mbtlnum = mbtlnum;
	}
	public String getThumbBassImageUseYn() {
		return thumbBassImageUseYn;
	}
	public void setThumbBassImageUseYn(String thumbBassImageUseYn) {
		this.thumbBassImageUseYn = thumbBassImageUseYn;
	}
	public String getThumbAtchId() {
		return thumbAtchId;
	}
	public void setThumbAtchId(String thumbAtchId) {
		this.thumbAtchId = thumbAtchId;
	}
	public String getThumbFlpth() {
		return thumbFlpth;
	}
	public void setThumbFlpth(String thumbFlpth) {
		this.thumbFlpth = thumbFlpth;
	}
	public String getThumbBassImageCode() {
		return thumbBassImageCode;
	}
	public void setThumbBassImageCode(String thumbBassImageCode) {
		this.thumbBassImageCode = thumbBassImageCode;
	}
	public String getThumbBassImageCodeNm() {
		return thumbBassImageCodeNm;
	}
	public void setThumbBassImageCodeNm(String thumbBassImageCodeNm) {
		this.thumbBassImageCodeNm = thumbBassImageCodeNm;
	}
	public String getMvpUrl() {
		return mvpUrl;
	}
	public void setMvpUrl(String mvpUrl) {
		this.mvpUrl = mvpUrl;
	}
	public String getNmbrWrterNm() {
		return nmbrWrterNm;
	}
	public void setNmbrWrterNm(String nmbrWrterNm) {
		this.nmbrWrterNm = nmbrWrterNm;
	}

}
