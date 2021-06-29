package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.CharstVo;

@Mapper
public interface CharstMapper {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 문자열 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @return
	 */
	List<CharstVo> list(CharstVo charstVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 문자열 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @return
	 */
	int count(CharstVo charstVo);

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 문자열 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 * @return
	 */
	CharstVo view(CharstVo charstVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 문자열 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 */
	void insert(CharstVo charstVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 문자열 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 */
	void update(CharstVo charstVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 문자열 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param charstVo
	 */
	void delete(CharstVo charstVo);

}
