package macrogen.www.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ YearCmpnyhistVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 16. 오후 2:19:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class YearCmpnyhistVo extends DefaultVo {
	String year;
	List<CmpnyhistVo> cmpnyhistList = new ArrayList<CmpnyhistVo>();

	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public List<CmpnyhistVo> getCmpnyhistList() {
		return cmpnyhistList;
	}
	public void setCmpnyhistList(List<CmpnyhistVo> cmpnyhistList) {
		this.cmpnyhistList = cmpnyhistList;
	}
}
