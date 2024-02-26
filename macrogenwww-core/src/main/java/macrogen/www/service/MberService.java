package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MberVo;

/**
 * <pre>
 * hanbang.service
 *    |_ MberService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 26. 오후 3:39:32
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface MberService {

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 회원 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @return
	 * @throws Exception
	 *
	MberVo view(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * viewByLoginId
	 * 1. 개요   : 회원 상세 By LoginId
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @return
	 * @throws Exception
	 *
	MberVo viewByLoginId(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 회원 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @return
	 * @throws Exception
	 *
	List<MberVo> list(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 회원 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @throws Exception
	 *
	void insert(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 회원 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @throws Exception
	 *
	void update(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 회원 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @throws Exception
	 *
	void delete(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * updateMyinfo
	 * 1. 개요   : 회원 정보 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @throws Exception
	 *
	void updateMyinfo(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 회원 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @return
	 * @throws Exception
	 *
	int count(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * initPasswordInputErrorCo
	 * 1. 개요   : 패스워드 에러
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @throws Exception
	 *
	void initPasswordInputErrorCo(MberVo mberVo) throws Exception;

	/**
	 * <pre>
	 * increaseLoginCo
	 * 1. 개요   : 로그인 카운터& 날짜 업데이트
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @throws Exception
	 *
	void increaseLoginCo(MberVo mberVo) throws Exception;
	*/
}
