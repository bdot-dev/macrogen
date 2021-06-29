package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.RoleMngrurlVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ RoleMngrurlService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 12. 12. 오전 11:35:44
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface RoleMngrurlService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 메뉴 접근 권한 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrurlVo
	 * @return
	 */
	List<RoleMngrurlVo> list(RoleMngrurlVo roleMngrurlVo);

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 메뉴 접근 권한 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrurlVo
	 * @return
	 */
	int count(RoleMngrurlVo roleMngrurlVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 메뉴 접근 권한 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrurlVo
	 */
	void insert(RoleMngrurlVo roleMngrurlVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 메뉴 접근 권한 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrurlVo
	 */
	void deleteByRoleId(RoleMngrurlVo roleMngrurlVo);

	void deleteByUrl(RoleMngrurlVo roleMngrurlVo);

	RoleMngrurlVo likeView(RoleMngrurlVo roleMngrurlVo) throws Exception;
}
