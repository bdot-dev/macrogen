package macrogen.www.vo;

import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ BbsCtgryVo.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 18. 오후 4:18:55
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class BbsCtgryVo extends DefaultVo {

	private Long bbsCtgrySn;
	private String bbsCtgryNm;
	private String bbsCtgryNmKo;
	private String bbsCtgryNmEn;
	private Integer sortOrdr;
	private String bbsId;

	private List<NttVo> nttList;

	public Long getBbsCtgrySn() {
		return bbsCtgrySn;
	}
	public void setBbsCtgrySn(Long bbsCtgrySn) {
		this.bbsCtgrySn = bbsCtgrySn;
	}
	public String getBbsCtgryNm() {
		return bbsCtgryNm;
	}
	public void setBbsCtgryNm(String bbsCtgryNm) {
		this.bbsCtgryNm = bbsCtgryNm;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public String getBbsId() {
		return bbsId;
	}
	public void setBbsId(String bbsId) {
		this.bbsId = bbsId;
	}
	public String getBbsCtgryNmKo() {
		return bbsCtgryNmKo;
	}
	public void setBbsCtgryNmKo(String bbsCtgryNmKo) {
		this.bbsCtgryNmKo = bbsCtgryNmKo;
	}
	public String getBbsCtgryNmEn() {
		return bbsCtgryNmEn;
	}
	public void setBbsCtgryNmEn(String bbsCtgryNmEn) {
		this.bbsCtgryNmEn = bbsCtgryNmEn;
	}
	public List<NttVo> getNttList() {
		return nttList;
	}
	public void setNttList(List<NttVo> nttList) {
		this.nttList = nttList;
	}
}
