package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.RoleMngrmenuVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ RoleMngrmenuService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 11:06:31
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface RoleMngrmenuService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자별 접근 메뉴 권한 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrmenuVo
	 * @return
	 * @throws Exception
	 */
	List<RoleMngrmenuVo> list(RoleMngrmenuVo roleMngrmenuVo) throws Exception;

	/**
	 * <pre>
	 * first
	 * 1. 개요   : 관리자별 접근 메뉴 권한 목록 중 첫번째 권한
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrmenuVo
	 * @return
	 * @throws Exception
	 */
	RoleMngrmenuVo first(RoleMngrmenuVo roleMngrmenuVo) throws Exception;

	void deleteByMenuSn(RoleMngrmenuVo roleMngrmenuVo) throws Exception;

}
