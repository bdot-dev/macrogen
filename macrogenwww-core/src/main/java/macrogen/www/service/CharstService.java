package macrogen.www.service;

import java.util.List;
import java.util.Map;

import macrogen.www.vo.CharstVo;

public interface CharstService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 문자열 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @return
	 * @throws Exception
	 */
	List<CharstVo> list(CharstVo charstVo) throws Exception;

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 문자열 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @return
	 * @throws Exception
	 */
	int count(CharstVo charstVo) throws Exception;

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 문자열 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @return
	 * @throws Exception
	 */
	CharstVo view(CharstVo charstVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 문자열 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @throws Exception
	 */
	void insert(CharstVo charstVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 문자열 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @throws Exception
	 */
	void update(CharstVo charstVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   :문자열 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @throws Exception
	 */
	void delete(CharstVo charstVo) throws Exception;

	/**
	 * <pre>
	 * allMap
	 * 1. 개요   : 문자열
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @return
	 * @throws Exception
	 */
	Map<String, CharstVo> allMap() throws Exception;
}
