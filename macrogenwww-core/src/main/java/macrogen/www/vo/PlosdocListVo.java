package macrogen.www.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ PlosdocListVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 6. 오후 4:25:00
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PlosdocListVo extends DefaultVo {

    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date listUpdtDe;
    private List<PlosdocVo> plosdocList = new ArrayList<PlosdocVo>();

	public Date getListUpdtDe() {
		return listUpdtDe;
	}
	public void setListUpdtDe(Date listUpdtDe) {
		this.listUpdtDe = listUpdtDe;
	}
	public List<PlosdocVo> getPlosdocList() {
		return plosdocList;
	}
	public void setPlosdocList(List<PlosdocVo> plosdocList) {
		this.plosdocList = plosdocList;
	}
}
