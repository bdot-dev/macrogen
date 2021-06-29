package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MberVo;

@Mapper
public interface MberMapper {

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 회원 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @return
	 */
	MberVo view(MberVo mberVo);

	/**
	 * <pre>
	 * viewByLoginId
	 * 1. 개요   : 회원 상세 By LoginId
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @return
	 */
	MberVo viewByLoginId(MberVo mberVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 회원 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 */
	void insert(MberVo mberVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 회원 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 */
	void update(MberVo mberVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 회원 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 */
	void delete(MberVo mberVo);

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 회원 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @return
	 */
	List<MberVo> list(MberVo mberVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 회원 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mberVo
	 * @return
	 */
	int count(MberVo mberVo);

}
