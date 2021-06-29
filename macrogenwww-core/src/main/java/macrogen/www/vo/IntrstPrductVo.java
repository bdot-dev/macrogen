package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ IntrstPrductVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 8. 오전 11:09:08
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class IntrstPrductVo extends PrductVo{

	private Long userSn;

	public Long getUserSn() {
		return userSn;
	}
	public void setUserSn(Long userSn) {
		this.userSn = userSn;
	}

}
