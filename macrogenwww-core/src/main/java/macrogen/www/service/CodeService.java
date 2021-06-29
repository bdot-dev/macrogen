package macrogen.www.service;

import java.util.List;
import java.util.Map;

import macrogen.www.vo.CodeVo;

public interface CodeService {

	/**
	 * <pre>
	 * allMapList
	 * 1. 개요   : 코드 Map 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @return
	 * @throws Exception
	 */
	Map<String, CodeVo> allMapList() throws Exception;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 코드 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @return
	 * @throws Exception
	 */
	List<CodeVo> list(CodeVo codeVo) throws Exception;

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 코드 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @return
	 * @throws Exception
	 */
	CodeVo view(CodeVo codeVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 코드 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @throws Exception
	 */
	void insert(CodeVo codeVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 코드 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @throws Exception
	 */
	void update(CodeVo codeVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 코드 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @throws Exception
	 */
	void delete(CodeVo codeVo) throws Exception;

	/**
	 * <pre>
	 * listByCodeSe
	 * 1. 개요   : 코드 목록 By CodeSe
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeSe
	 * @return
	 */
	List<CodeVo> listByCodeSe(String codeSe);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 코드 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @return
	 * @throws Exception
	 */
	int count(CodeVo codeVo) throws Exception;

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 코드 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeSe
	 * @param code
	 * @return
	 * @throws Exception
	 */
	CodeVo view(String codeSe, String code) throws Exception;

}
