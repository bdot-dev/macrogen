package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.IpFilterVo;

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
public interface IpFilterService {


	/**
	 * <pre>
	 * list
	 * 1. 개요   : ip 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<IpFilterVo> list(IpFilterVo ipFilterVo) throws Exception;
	
	List<IpFilterVo> listAll() throws Exception;

	/**
	 * <pre>
	 * view
	 * 1. 개요   : ip 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 * @return
	 * @throws Exception
	 */
	IpFilterVo view(IpFilterVo ipFilterVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : ip 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 * @throws Exception
	 */
	void insert(IpFilterVo ipFilterVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : ip 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 * @throws Exception
	 */
	void update(IpFilterVo ipFilterVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : ip 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 * @throws Exception
	 */
	void delete(IpFilterVo ipFilterVo) throws Exception;

	/**
	 * <pre>
	 * count
	 * 1. 개요   : ip 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 * @return
	 * @throws Exception
	 */
	int count(IpFilterVo ipFilterVo) throws Exception;

}
