package macrogen.www.service;

import java.util.List;
import java.util.Map;

import macrogen.www.vo.RoleVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ RoleService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:47:51
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface RoleService {

	/**
	 * <pre>
	 * allMapList
	 * 1. 개요   : 권한 Map 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @return
	 * @throws Exception
	 */
	Map<String, RoleVo> allMapList() throws Exception;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 권한 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<RoleVo> list(RoleVo param) throws Exception;

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 권한 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 * @return
	 * @throws Exception
	 */
	RoleVo view(RoleVo roleVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 권한 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 * @throws Exception
	 */
	void insert(RoleVo roleVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 권한 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 * @throws Exception
	 */
	void update(RoleVo roleVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 권한 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 * @throws Exception
	 */
	void delete(RoleVo roleVo) throws Exception;

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 권한 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 * @return
	 * @throws Exception
	 */
	int count(RoleVo roleVo) throws Exception;

}
