package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ SetupVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 12. 오후 4:04:36
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class SetupVo extends DefaultVo {
	private String setupId;
	private String setupValue;

	public String getSetupId() {
		return setupId;
	}
	public void setSetupId(String setupId) {
		this.setupId = setupId;
	}
	public String getSetupValue() {
		return setupValue;
	}
	public void setSetupValue(String setupValue) {
		this.setupValue = setupValue;
	}
}
