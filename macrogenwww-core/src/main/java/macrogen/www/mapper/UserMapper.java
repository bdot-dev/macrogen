package macrogen.www.mapper;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.UserVo;

@Mapper
public interface UserMapper {

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 사용자 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 */
	void insert(UserVo userVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 사용자 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 */
	void update(UserVo userVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 사용자 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 */
	void delete(UserVo userVo);

	/**
	 * <pre>
	 * increasePasswordInputErrorCo
	 * 1. 개요   : 사용자 패스워드 에러 개수 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 */
	void increasePasswordInputErrorCo(UserVo userVo);

	/**
	 * <pre>
	 * initPasswordInputErrorCo
	 * 1. 개요   : 사용자 패스워드 에러 초기화
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 */
	void initPasswordInputErrorCo(UserVo userVo);

	/**
	 * <pre>
	 * increaseLoginCo
	 * 1. 개요   : 사용자 로그인 개수 및 날짜 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userVo
	 */
	void increaseLoginCo(UserVo userVo);

	Long seq();

	UserVo view(UserVo userVo);

	UserVo viewByLoginId(String loginId);

	void updatePasswordInitlYn(UserVo vo);

	void updateInitPassword(UserVo vo);
}
