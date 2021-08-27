package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ ApplFormVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 12. 오후 5:22:55
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class ApplFormVo extends DefaultVo {
	private String applFormWordAtchId;
	private String applFormWordLogicNm;
	private String applFormHwpAtchId;
	private String applFormHwpLogicNm;

	public String getApplFormWordAtchId() {
		return applFormWordAtchId;
	}
	public void setApplFormWordAtchId(String applFormWordAtchId) {
		this.applFormWordAtchId = applFormWordAtchId;
	}
	public String getApplFormWordLogicNm() {
		return applFormWordLogicNm;
	}
	public void setApplFormWordLogicNm(String applFormWordLogicNm) {
		this.applFormWordLogicNm = applFormWordLogicNm;
	}
	public String getApplFormHwpAtchId() {
		return applFormHwpAtchId;
	}
	public void setApplFormHwpAtchId(String applFormHwpAtchId) {
		this.applFormHwpAtchId = applFormHwpAtchId;
	}
	public String getApplFormHwpLogicNm() {
		return applFormHwpLogicNm;
	}
	public void setApplFormHwpLogicNm(String applFormHwpLogicNm) {
		this.applFormHwpLogicNm = applFormHwpLogicNm;
	}
}
