package macrogen.www.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ FnlttListVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 4. 오후 4:11:19
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class FnlttListVo extends DefaultVo {

    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date listUpdtDe;
    private List<FnlttVo> fnlttList = new ArrayList<FnlttVo>();

    public Date getListUpdtDe() {
		return listUpdtDe;
	}
	public void setListUpdtDe(Date listUpdtDe) {
		this.listUpdtDe = listUpdtDe;
	}
	public List<FnlttVo> getFnlttList() {
		return fnlttList;
	}
	public void setFnlttList(List<FnlttVo> fnlttList) {
		this.fnlttList = fnlttList;
	}
}
