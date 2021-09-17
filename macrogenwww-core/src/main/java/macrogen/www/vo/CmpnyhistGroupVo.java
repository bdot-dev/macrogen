package macrogen.www.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ CmpnyhistGroupVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 4:55:01
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class CmpnyhistGroupVo extends DefaultVo {
	private Long cmpnyhistGroupSn;
	private String beginYear;
	private String endYear;
	private String groupnmKo;
	private String groupnmEn;
	private Integer sortOrdr;

	private List<CmpnyhistVo> cmpnyhistList = new ArrayList<CmpnyhistVo>();
	private List<CmpnyhistGroupPhotoVo> cmpnyhistGroupPhotoList = new ArrayList<CmpnyhistGroupPhotoVo>();
	private List<YearCmpnyhistVo> yearCmpnyhistList = new ArrayList<YearCmpnyhistVo>();

	public Long getCmpnyhistGroupSn() {
		return cmpnyhistGroupSn;
	}
	public void setCmpnyhistGroupSn(Long cmpnyhistGroupSn) {
		this.cmpnyhistGroupSn = cmpnyhistGroupSn;
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
	public String getGroupnmKo() {
		return groupnmKo;
	}
	public void setGroupnmKo(String groupnmKo) {
		this.groupnmKo = groupnmKo;
	}
	public String getGroupnmEn() {
		return groupnmEn;
	}
	public void setGroupnmEn(String groupnmEn) {
		this.groupnmEn = groupnmEn;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public List<CmpnyhistVo> getCmpnyhistList() {
		return cmpnyhistList;
	}
	public void setCmpnyhistList(List<CmpnyhistVo> cmpnyhistList) {
		this.cmpnyhistList = cmpnyhistList;
	}
	public List<CmpnyhistGroupPhotoVo> getCmpnyhistGroupPhotoList() {
		return cmpnyhistGroupPhotoList;
	}
	public void setCmpnyhistGroupPhotoList(List<CmpnyhistGroupPhotoVo> cmpnyhistGroupPhotoList) {
		this.cmpnyhistGroupPhotoList = cmpnyhistGroupPhotoList;
	}
	public List<YearCmpnyhistVo> getYearCmpnyhistList() {
		return yearCmpnyhistList;
	}
	public void setYearCmpnyhistList(List<YearCmpnyhistVo> yearCmpnyhistList) {
		this.yearCmpnyhistList = yearCmpnyhistList;
	}
}
