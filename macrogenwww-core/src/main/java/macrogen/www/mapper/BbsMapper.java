package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.BbsVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ BbsMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:07:11
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface BbsMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 게시판 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<BbsVo> list(BbsVo param);
	/**
	 * <pre>
	 * view
	 * 1. 개요   : 게시판 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param bbsVo
	 * @return
	 */
	BbsVo view(BbsVo bbsVo);
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 게시판 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param bbsVo
	 */
	void insert(BbsVo bbsVo);
	/**
	 * <pre>
	 * update
	 * 1. 개요   : 게시판 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param bbsVo
	 */
	void update(BbsVo bbsVo);
	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 게시판 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param bbsVo
	 */
	void delete(BbsVo bbsVo);

}
