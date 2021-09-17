package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ CmpnyhistGroupPhotoVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 4:55:17
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class CmpnyhistGroupPhotoVo extends DefaultVo {
	private Long cmpnyhistGroupPhotoSn;
	private Long cmpnyhistGroupSn;
	private String photoAtchId;
	private String photoFlpth;
	private String photoSjKo;
	private String photoSjEn;
	private String photoYear;
	private Integer sortOrdr;
	private String beginYear;
	private String endYear;

	private Long searchCmpnyhistGroupSn;

	public Long getCmpnyhistGroupSn() {
		return cmpnyhistGroupSn;
	}
	public void setCmpnyhistGroupSn(Long cmpnyhistGroupSn) {
		this.cmpnyhistGroupSn = cmpnyhistGroupSn;
	}
	public String getPhotoAtchId() {
		return photoAtchId;
	}
	public void setPhotoAtchId(String photoAtchId) {
		this.photoAtchId = photoAtchId;
	}
	public String getPhotoSjKo() {
		return photoSjKo;
	}
	public void setPhotoSjKo(String photoSjKo) {
		this.photoSjKo = photoSjKo;
	}
	public String getPhotoSjEn() {
		return photoSjEn;
	}
	public void setPhotoSjEn(String photoSjEn) {
		this.photoSjEn = photoSjEn;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public Long getSearchCmpnyhistGroupSn() {
		return searchCmpnyhistGroupSn;
	}
	public void setSearchCmpnyhistGroupSn(Long searchCmpnyhistGroupSn) {
		this.searchCmpnyhistGroupSn = searchCmpnyhistGroupSn;
	}
	public String getPhotoFlpth() {
		return photoFlpth;
	}
	public void setPhotoFlpth(String photoFlpth) {
		this.photoFlpth = photoFlpth;
	}
	public String getBeginYear() {
		return beginYear;
	}
	public void setBeginYear(String beginYear) {
		this.beginYear = beginYear;
	}
	public String getEndYear() {
		return endYear;
	}
	public void setEndYear(String endYear) {
		this.endYear = endYear;
	}
	public Long getCmpnyhistGroupPhotoSn() {
		return cmpnyhistGroupPhotoSn;
	}
	public void setCmpnyhistGroupPhotoSn(Long cmpnyhistGroupPhotoSn) {
		this.cmpnyhistGroupPhotoSn = cmpnyhistGroupPhotoSn;
	}
	public String getPhotoYear() {
		return photoYear;
	}
	public void setPhotoYear(String photoYear) {
		this.photoYear = photoYear;
	}
}
