package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ NttAtchVo.java
 *
 * </pre>
 * 1. 작성일 : 2018. 10. 25. 오전 9:58:29
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class NttImageVo extends AtchVo {
	private Long nttSn;
	private String atchId;
	private Integer sortOrdr;

	public Long getNttSn() {
		return nttSn;
	}
	public void setNttSn(Long nttSn) {
		this.nttSn = nttSn;
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
}
