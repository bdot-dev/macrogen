package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.PopupVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ PopupService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 1. 오전 10:59:51
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface PopupService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 팝업 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @return
	 * @throws Exception
	 */
	List<PopupVo> list(PopupVo popupVo) throws Exception;

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 팝업 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @return
	 * @throws Exception
	 */
	int count(PopupVo popupVo) throws Exception;

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 팝업 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @return
	 * @throws Exception
	 */
	PopupVo view(PopupVo popupVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 팝업 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @throws Exception
	 */
	void insert(PopupVo popupVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 팝업 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @throws Exception
	 */
	void update(PopupVo popupVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 팝업 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @throws Exception
	 */
	void delete(PopupVo popupVo) throws Exception;

	/**
	 * <pre>
	 * sortUpdate
	 * 1. 개요   : 팝업 정렬 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @throws Exception
	 */
	void updateSortOrdr(PopupVo popupVo) throws Exception;

	/**
	 * <pre>
	 * sortUpdate
	 * 1. 개요   : 팝업 클릭수 업데이트
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @throws Exception
	 */
	void increaseClickCo(PopupVo popupVo) throws Exception;

}
