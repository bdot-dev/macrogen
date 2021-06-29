package macrogen.www.vo; 

/**
 * <pre>
 * macrogen.www.vo 
 *    |_ RoleMngrurlVo.java
 * 개요 : 
 * </pre>
 * 1. 작성일 : 2018. 12. 12. 오전 10:58:38
 * 2. 작성자 : eluocnc
 * @version : 
 */
@SuppressWarnings("serial")
public class RoleMngrurlVo extends MngrurlVo{

	/**
	 * 접근 가능 Role Id
	 */
	private String roleId;

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	
}
