package macrogen.www.vo;


@SuppressWarnings("serial")
public class InvstLogVo extends DefaultVo {
	private Long invHisSeq;
	private Long nttSn;
	private String loginId;
	private String userNm;
	private String nttSj;
	private String result;
	private String regDt;
	private String ip;
	public Long getInvHisSeq() {
		return invHisSeq;
	}
	public void setInvHisSeq(Long invHisSeq) {
		this.invHisSeq = invHisSeq;
	}
	public Long getNttSn() {
		return nttSn;
	}
	public void setNttSn(Long nttSn) {
		this.nttSn = nttSn;
	}
	
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserName(String userNm) {
		this.userNm = userNm;
	}
	public String getNttSj() {
		return nttSj;
	}
	public void setNttSj(String nttSj) {
		this.nttSj = nttSj;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
}
