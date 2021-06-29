package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.CodeVo;

@Mapper
public interface CodeMapper {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 코드 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<CodeVo> list(CodeVo param);

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 코드 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @return
	 */
	CodeVo view(CodeVo codeVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 코드 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 */
	void insert(CodeVo codeVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 코드 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 */
	void update(CodeVo codeVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 코드 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 */
	void delete(CodeVo codeVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 코드 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @return
	 */
	int count(CodeVo codeVo);

}
