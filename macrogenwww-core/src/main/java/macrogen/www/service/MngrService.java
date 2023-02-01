package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MngrVo;
import macrogen.www.vo.UserVo;

public interface MngrService {

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 관리자 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	MngrVo view(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * viewByLoginId
	 * 1. 개요   : 관리자 상세 By LoginId
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	MngrVo viewByLoginId(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	List<MngrVo> list(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @throws Exception
	 */
	void insert(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 관리자 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @throws Exception
	 */
	void update(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @throws Exception
	 */
	void delete(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * infoUpdate
	 * 1. 개요   : 관리자 정보 업데이트
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @throws Exception
	 */
	void updateMyinfo(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 관리자 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	int count(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * initPasswordInputErrorCo
	 * 1. 개요   : 패스워드입력오류회수 초기화
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @throws Exception
	 */
	void initPasswordInputErrorCo(MngrVo mngrVo) throws Exception;

	/**
	 * <pre>
	 * increaseLoginCo
	 * 1. 개요   : 관리자 로그인 수 증가
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @throws Exception
	 */
	void increaseLoginCo(MngrVo mngrVo) throws Exception;

	void initPassword(MngrVo mngrVo) throws Exception;

	void updateInitPassword(MngrVo mngrVo) throws Exception;
	
	MngrVo userAuth(MngrVo mngrVo) throws Exception;
	
	/** 
	 * <pre>
	 * increaseMngrLoginToken
	 * 1. 개요   : 관리자 로그인 토큰 생성  
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param userVo
	 * @throws Exception
	 */ 	
	void increaseMngrLoginToken(UserVo userVo) throws Exception;
}
