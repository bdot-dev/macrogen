package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MenuVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ MenuMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:08:20
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface MenuMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 메뉴 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<MenuVo> list(MenuVo param);
	/**
	 * <pre>
	 * view
	 * 1. 개요   : 메뉴 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 * @return
	 */
	MenuVo view(MenuVo menuVo);
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 메뉴 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 */
	void insert(MenuVo menuVo);
	/**
	 * <pre>
	 * update
	 * 1. 개요   : 메뉴 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 */
	void update(MenuVo menuVo);
	/**
	 * <pre>
	 * updateSortOrdr
	 * 1. 개요   : 메뉴 정렬 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 */
	void updateSortOrdr(MenuVo menuVo);
	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 메뉴 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 */
	void delete(MenuVo menuVo);

	Long seq();
}
