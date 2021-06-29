package macrogen.www.vo;

import java.util.List;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ RoleVo.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 7. 오후 5:17:18
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class RoleVo extends DefaultVo{
	private String roleId;
	private String roleNm;
	private List<Long> menuSnList;
	private List<Long> pendncyMenuSnList;
	private List<Long> accessSnList;

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
	public List<Long> getMenuSnList() {
		return menuSnList;
	}
	public void setMenuSnList(List<Long> menuSnList) {
		this.menuSnList = menuSnList;
	}
	public List<Long> getPendncyMenuSnList() {
		return pendncyMenuSnList;
	}
	public void setPendncyMenuSnList(List<Long> pendncyMenuSnList) {
		this.pendncyMenuSnList = pendncyMenuSnList;
	}
	public List<Long> getAccessSnList() {
		return accessSnList;
	}
	public void setAccessSnList(List<Long> accessSnList) {
		this.accessSnList = accessSnList;
	}

}
