package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MngrAuthLogVo;

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
public interface MngrAuthLogService {


	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 권한 로그 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<MngrAuthLogVo> list(MngrAuthLogVo logVo) throws Exception;
	
	List<MngrAuthLogVo> listExcel(MngrAuthLogVo logVo) throws Exception;
	
	MngrAuthLogVo view(MngrAuthLogVo logVo) throws Exception;
	
	MngrAuthLogVo viewRef(MngrAuthLogVo logVo) throws Exception;
	
	List<MngrAuthLogVo> viewMenuList(MngrAuthLogVo logVo) throws Exception;
	
	List<MngrAuthLogVo> viewUrlList(MngrAuthLogVo logVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 권한 로그 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 * @throws Exception
	 */
	void insert(MngrAuthLogVo logVo) throws Exception;
	
	void insertMngrMenu(MngrAuthLogVo logVo) throws Exception;
	
	void insertMngrUrl(MngrAuthLogVo logVo) throws Exception;
	
	/**
	 * <pre>
	 * count
	 * 1. 개요   : 관리자 권한 로그 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 * @return
	 * @throws Exception
	 */
	int count(MngrAuthLogVo MngrAuthLogVo) throws Exception;

}
