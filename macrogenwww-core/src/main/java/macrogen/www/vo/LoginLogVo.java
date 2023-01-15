package macrogen.www.vo;


@SuppressWarnings("serial")
public class LoginLogVo extends DefaultVo {
	private Long logSeq;
	private String loginId;
	private String loginResult;
	private String reason;
	private String ip;
	private String regDt;
	
	public Long getLogSeq() {
		return logSeq;
	}
	public void setLogSeq(Long logSeq) {
		this.logSeq = logSeq;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginResult() {
		return loginResult;
	}
	public void setLoginResult(String loginResult) {
		this.loginResult = loginResult;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
}
