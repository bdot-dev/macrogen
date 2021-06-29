package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ SchedulerErrorVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 3. 8. 오후 1:33:13
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class SchedulerErrorVo extends DefaultVo {
	private Long errorSn;
	private String schedulerId;
	private String errorCn;
	private String refrnId;

	public Long getErrorSn() {
		return errorSn;
	}
	public void setErrorSn(Long errorSn) {
		this.errorSn = errorSn;
	}
	public String getSchedulerId() {
		return schedulerId;
	}
	public void setSchedulerId(String schedulerId) {
		this.schedulerId = schedulerId;
	}
	public String getErrorCn() {
		return errorCn;
	}
	public void setErrorCn(String errorCn) {
		this.errorCn = errorCn;
	}
	public String getRefrnId() {
		return refrnId;
	}
	public void setRefrnId(String refrnId) {
		this.refrnId = refrnId;
	}
}
