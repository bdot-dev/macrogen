package macrogen.www.vo;

import java.util.Date;

import macrogen.www.enums.Codes.UserSeCode;

@SuppressWarnings("serial")
public class UserVo extends DefaultVo {
	private Long userSn;
	private String userNm;
	private String loginId;
	private String loginPassword;
	private String currentPassword;
	private String email;
	private String telno;
	private String mbtlnum;
	private Date lastPasswordChangeDt;
	private Integer passwordInputErrorCo;
	private Integer loginCo;
	private Date lastLoginDt;
	private UserSeCode userSeCode;
	private String passwordInitlYn;

	public Long getUserSn() {
		return userSn;
	}
	public void setUserSn(Long userSn) {
		this.userSn = userSn;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	public String getCurrentPassword() {
		return currentPassword;
	}
	public void setCurrentPassword(String currentPassword) {
		this.currentPassword = currentPassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getLastPasswordChangeDt() {
		return lastPasswordChangeDt;
	}
	public void setLastPasswordChangeDt(Date lastPasswordChangeDt) {
		this.lastPasswordChangeDt = lastPasswordChangeDt;
	}
	public Integer getPasswordInputErrorCo() {
		return passwordInputErrorCo;
	}
	public void setPasswordInputErrorCo(Integer passwordInputErrorCo) {
		this.passwordInputErrorCo = passwordInputErrorCo;
	}
	public Integer getLoginCo() {
		return loginCo;
	}
	public void setLoginCo(Integer loginCo) {
		this.loginCo = loginCo;
	}
	public Date getLastLoginDt() {
		return lastLoginDt;
	}
	public void setLastLoginDt(Date lastLoginDt) {
		this.lastLoginDt = lastLoginDt;
	}
	public String getTelno() {
		return telno;
	}
	public void setTelno(String telno) {
		this.telno = telno;
	}
	public UserSeCode getUserSeCode() {
		return userSeCode;
	}
	public void setUserSeCode(UserSeCode userSeCode) {
		this.userSeCode = userSeCode;
	}
	public String getMbtlnum() {
		return mbtlnum;
	}
	public void setMbtlnum(String mbtlnum) {
		this.mbtlnum = mbtlnum;
	}
	public String getPasswordInitlYn() {
		return passwordInitlYn;
	}
	public void setPasswordInitlYn(String passwordInitlYn) {
		this.passwordInitlYn = passwordInitlYn;
	}

}
