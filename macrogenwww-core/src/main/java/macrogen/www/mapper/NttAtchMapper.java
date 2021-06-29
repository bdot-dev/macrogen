package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.NttAtchVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ NttAtchMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 10. 25. 오전 10:00:36
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface NttAtchMapper {

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 게시물 첨부 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttAtchVo
	 */
	void insert(NttAtchVo nttAtchVo);

	/**
	 * <pre>
	 * deleteByNttSn
	 * 1. 개요   : 게시물 첨부 삭제 By NttSn
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttAtchVo
	 */
	void deleteByNttSn(NttAtchVo nttAtchVo);

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 게시물 첨부 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttAtchVo
	 * @return
	 */
	List<NttAtchVo> list(NttAtchVo nttAtchVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 게시물 첨부 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttAtchVo
	 */
	void delete(NttAtchVo nttAtchVo);

}
