package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MenuVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ MenuService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:45:15
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface MenuService {

	MenuVo view(MenuVo menuVo) throws Exception;

	MenuVo viewByPk(Long menuSn) throws Exception;

	List<MenuVo> list(MenuVo menuVo) throws Exception;

	MenuVo firstNotEmptyUrl(MenuVo menuVo, String langId) throws Exception;

	List<MenuVo> tree(MenuVo menuVo) throws Exception;

	void insert(MenuVo menuVo) throws Exception;

	void update(MenuVo menuVo) throws Exception;

	void updateSortOrdr(MenuVo menuVo) throws Exception;

	void delete(MenuVo menuVo) throws Exception;

	List<MenuVo> topmostList() throws Exception;

	List<MenuVo> listByUpperMenuSn(Long firstMenuSn) throws Exception;

	List<MenuVo> treeByLangauge(String language) throws Exception;

	List<MenuVo> listByUpperMenuSn(Long menuSn, String langId) throws Exception;

}
