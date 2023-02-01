package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.UserVo;

@Mapper
public interface MngrMapper {

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 관리자 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 */
	MngrVo view(MngrVo mngrVo);

	/**
	 * <pre>
	 * viewByLoginId
	 * 1. 개요   : 관리자 상세 By LoginId
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 */
	MngrVo viewByLoginId(MngrVo mngrVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param insertVo
	 */
	void insert(MngrVo insertVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 관리자 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param updateVo
	 */
	void update(MngrVo updateVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 */
	void delete(MngrVo mngrVo);

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 */
	List<MngrVo> list(MngrVo mngrVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 관리자 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 */
	int count(MngrVo mngrVo);
	
	/**
	 * <pre>
	 * userAuth
	 * 1. 개요   : 관리자 인증
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 */
	MngrVo userAuth(MngrVo mngrVo);
	
	/**
	 * <pre>
	 * increaseMngrLoginToken
	 * 1. 개요   : 관리자 토큰 생성 
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param mngrVo
	 */ 	
	void increaseMngrLoginToken(UserVo userVo);
}
