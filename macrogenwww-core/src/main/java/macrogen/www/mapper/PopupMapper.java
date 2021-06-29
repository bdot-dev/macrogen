package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.PopupVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ PopupMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 1. 오전 11:02:23
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface PopupMapper {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 팝업 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @return
	 */
	List<PopupVo> list(PopupVo popupVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 팝업 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @return
	 */
	int count(PopupVo popupVo);

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 팝업 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 * @return
	 */
	PopupVo view(PopupVo popupVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 팝업 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 */
	void insert(PopupVo popupVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 팝업 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 */
	void update(PopupVo popupVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 팝업 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 */
	void delete(PopupVo popupVo);

	/**
	 * <pre>
	 * sortUpdate
	 * 1. 개요   : 팝업 정렬 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 */
	void updateSortOrdr(PopupVo popupVo);

	/**
	 * <pre>
	 * sortUpdate
	 * 1. 개요   : 팝업 클릭 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param popupVo
	 */
	void increaseClickCo(PopupVo popupVo);

	Long seq();
}
