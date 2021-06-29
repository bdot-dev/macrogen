package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ BbsVo.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 7. 오후 3:30:13
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class BbsVo extends DefaultVo{

	private String bbsId;
	private String bbsNm;

	public String getBbsId() {
		return bbsId;
	}
	public void setBbsId(String bbsId) {
		this.bbsId = bbsId;
	}
	public String getBbsNm() {
		return bbsNm;
	}
	public void setBbsNm(String bbsNm) {
		this.bbsNm = bbsNm;
	}
}
