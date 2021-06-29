package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.UrlVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ MngrurlMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 12. 오후 1:35:56
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface UrlMapper {

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 사용자 URL 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 * @return
	 */
	UrlVo view(UrlVo urlVo);

	/**
	 * <pre>
	 * likeView
	 * 1. 개요   : 사용자 URL 링크 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 * @return
	 */
	UrlVo likeView(UrlVo urlVo);

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 사용자 URL  목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 * @return
	 */
	List<UrlVo> list(UrlVo urlVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 사용자 URL 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 */
	void insert(UrlVo urlVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 사용자 URL 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 */
	void update(UrlVo urlVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 사용자 URL 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 */
	void delete(UrlVo urlVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 사용자 URL 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 * @return
	 */
	int count(UrlVo urlVo);

}
