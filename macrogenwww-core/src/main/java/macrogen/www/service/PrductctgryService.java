package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.PrductctgryVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ PrductctgryService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 11. 30. 오후 12:48:03
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface PrductctgryService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   :  제폼_카테고리 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<PrductctgryVo> list(PrductctgryVo param);
	/**
	 * <pre>
	 * view
	 * 1. 개요   : 제품_카테고리 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	PrductctgryVo view(PrductctgryVo param);
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 제품_카테고리 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 */
	void insert(PrductctgryVo param);
	/**
	 * <pre>
	 * update
	 * 1. 개요   :제품_카테고리 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 */
	void update(PrductctgryVo param);
	/**
	 * <pre>
	 * updateSortOrdr
	 * 1. 개요   : 제품_카테고리 정렬 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 */
	void updateSortOrdr(PrductctgryVo param);
	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 제품_카테고리 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 */
	void delete(PrductctgryVo param);

	/**
	 * <pre>
	 * tree
	 * 1. 개요   : 트리 형태 제품 카테고리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<PrductctgryVo> tree(PrductctgryVo param);

	/**
	 * <pre>
	 * listByUpperCtgrySn
	 * 1. 개요   : 제품 카테고리 By UpperCtgrySn
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ctgrySn
	 * @return
	 */
	List<PrductctgryVo> listByUpperCtgrySn(Long ctgrySn);

}
