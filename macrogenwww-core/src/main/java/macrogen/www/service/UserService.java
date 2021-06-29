package macrogen.www.service;

import macrogen.www.vo.UserVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ UserService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:42:50
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface UserService {

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 사용자 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 * @throws Exception
	 */
	void insert(UserVo userVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 사용자 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 * @throws Exception
	 */
	void update(UserVo userVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 사용자 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 * @throws Exception
	 */
	void delete(UserVo userVo) throws Exception;

	/**
	 * <pre>
	 * increasePasswordInputErrorCo
	 * 1. 개요   : 사용자 패스워드 에러 카운터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 * @throws Exception
	 */
	void increasePasswordInputErrorCo(UserVo userVo) throws Exception;

	/**
	 * <pre>
	 * initPasswordInputErrorCo
	 * 1. 개요   : 사용자 패스워드 에러 카운터 초기화
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 * @throws Exception
	 */
	void initPasswordInputErrorCo(UserVo userVo) throws Exception;

	UserVo view(UserVo userVo) throws Exception;

	UserVo viewByLoginId(String loginId) throws Exception;

	void increaseLoginCo(UserVo userVo) throws Exception;

}
