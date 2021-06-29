package macrogen.www.vo; 

/**
 * <pre>
 * macrogen.www.vo 
 *    |_ RoleMngrmenuVo.java
 * 
 * </pre>
 * 1. 작성일 : 2018. 6. 7. 오후 5:19:47
 * 2. 작성자 : eluocnc
 * @version : 
 */
@SuppressWarnings("serial")
public class RoleMngrmenuVo extends MngrmenuVo {
	private String pendncyYn;

	public String getPendncyYn() {
		return pendncyYn;
	}
	public void setPendncyYn(String pendncyYn) {
		this.pendncyYn = pendncyYn;
	}

}
