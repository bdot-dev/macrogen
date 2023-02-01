package macrogen.www.vo;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.map.HashedMap;

@SuppressWarnings("serial")
public class MngrVo extends UserVo {

	private String roleId;
	private String roleNm;
	private String userId;
	private String userPwd;
	private String loginTkn;
	
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
	public String getLoginTkn() {
		return loginTkn;
	}
	public void setLoginTkn(String loginTkn) {
		this.loginTkn = loginTkn;
	}
}
