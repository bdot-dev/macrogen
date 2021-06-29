package macrogen.www.vo;

@SuppressWarnings("serial")
public class MngrurlVo extends DefaultVo {
	private String url;
	private Long menuSn;
	private String menuNmPath;

	/* 등급별 접근 권한으로 추가 사항 */
	private String roleId;
	private String accFlag;

	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Long getMenuSn() {
		return menuSn;
	}
	public void setMenuSn(Long menuSn) {
		this.menuSn = menuSn;
	}
	public String getMenuNmPath() {
		return menuNmPath;
	}
	public void setMenuNmPath(String menuNmPath) {
		this.menuNmPath = menuNmPath;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getAccFlag() {
		return accFlag;
	}
	public void setAccFlag(String accFlag) {
		this.accFlag = accFlag;
	}

}
