package macrogen.www.vo;

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
	private Integer sortOrdr;
	private String bbsId;

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


}
