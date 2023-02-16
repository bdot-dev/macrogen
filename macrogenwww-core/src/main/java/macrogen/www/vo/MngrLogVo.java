package macrogen.www.vo;

@SuppressWarnings("serial")
public class MngrLogVo extends UserVo {

	private String roleId;
	private String roleNm;
	private String userId;
	private String userPwd;
	private String regDt;
	
	private Long mngrHisSeq;
	private String changeInfo;
	private String pwdFailCleanYn;
	private String pwdCleanYn;
	private String result;
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleNm() {
		return roleNm;
	}
	public void setRoleNm(String roleNm) {
		this.roleNm = roleNm;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public Long getMngrHisSeq() {
		return mngrHisSeq;
	}
	public void setMngrHisSeq(Long mngrHisSeq) {
		this.mngrHisSeq = mngrHisSeq;
	}
	public String getChangeInfo() {
		return changeInfo;
	}
	public void setChangeInfo(String changeInfo) {
		this.changeInfo = changeInfo;
	}
	public String getPwdFailCleanYn() {
		return pwdFailCleanYn;
	}
	public void setPwdFailCleanYn(String pwdFailCleanYn) {
		this.pwdFailCleanYn = pwdFailCleanYn;
	}
	public String getPwdCleanYn() {
		return pwdCleanYn;
	}
	public void setPwdCleanYn(String pwdCleanYn) {
		this.pwdCleanYn = pwdCleanYn;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}

}
