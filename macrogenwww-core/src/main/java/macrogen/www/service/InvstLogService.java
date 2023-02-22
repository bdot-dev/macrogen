package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.InvstLogVo;

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
public interface InvstLogService {


	/**
	 * <pre>
	 * list
	 * 1. 개요   : 투자자 문의 로그 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<InvstLogVo> list(InvstLogVo logVo) throws Exception;
	
	List<InvstLogVo> listExcel(InvstLogVo logVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 투자자 문의 로그 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 * @throws Exception
	 */
	void insert(InvstLogVo logVo) throws Exception;
	
	/**
	 * <pre>
	 * count
	 * 1. 개요   : 투자자 문의 로그 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 * @return
	 * @throws Exception
	 */
	int count(InvstLogVo InvstLogVo) throws Exception;

}
