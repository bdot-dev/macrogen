package macrogen.www.vo;

@SuppressWarnings("serial")
public class MngrVo extends UserVo {

	private String roleId;
	private String roleNm;

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

}
