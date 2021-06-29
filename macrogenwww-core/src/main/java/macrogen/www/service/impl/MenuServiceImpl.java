package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MenuMapper;
import macrogen.www.service.MenuService;
import macrogen.www.vo.MenuVo;

@Service("menuService")
public class MenuServiceImpl extends EgovAbstractServiceImpl implements MenuService {

	@Resource(name="menuMapper")
	private MenuMapper menuMapper;

	@Override
	public MenuVo view(MenuVo menuVo) throws Exception {
		return menuMapper.view(menuVo);
	}

	@Override
	public MenuVo viewByPk(Long menuSn) throws Exception {
		MenuVo menuVo = new MenuVo();
		menuVo.setMenuSn(menuSn);
		return view(menuVo);
	}

	@Override
	public List<MenuVo> list(MenuVo menuVo) throws Exception {
		return menuMapper.list(menuVo);
	}

	@Override
	public MenuVo firstNotEmptyUrl(MenuVo menuVo, String langId) throws Exception {
		MenuVo param = new MenuVo();
		param.setMenuSnPath(menuVo.getMenuSnPath());
		param.setLangId(langId);
		param.setNotEmptyUrlYn("Y");
		param.setFirstIndex(0);
		param.setRecordCountPerPage(1);
		List<MenuVo> menuList = menuMapper.list(param);
		if (null != menuList && menuList.size() > 0) {
			return menuList.get(0);
		} else {
			return null;
		}
	}

	/**
	 * <pre>
	 * tree
	 * 1. 개요   : 4차까지 트리구조의 목록 리턴
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @see macrogen.www.service.MenuService#tree(macrogen.www.vo.MenuVo)
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@Override
	public List<MenuVo> tree(MenuVo menuVo) throws Exception {
		// 최상위 목록 (1st list)
		List<MenuVo> firstList = menuMapper.list(menuVo);
		for (MenuVo first : firstList) {
			// 2nd list
			menuVo.setUpperMenuSn(first.getMenuSn());
			menuVo.setTopmostYn("N");
			List<MenuVo> secondList = menuMapper.list(menuVo);
			for (MenuVo second : secondList) {
				// 3nd list
				menuVo.setUpperMenuSn(second.getMenuSn());
				menuVo.setTopmostYn("N");
				List<MenuVo> thirdList = menuMapper.list(menuVo);
				for (MenuVo third : thirdList) {
					// 4th list
					menuVo.setUpperMenuSn(third.getMenuSn());
					menuVo.setTopmostYn("N");
					List<MenuVo> fourthList = menuMapper.list(menuVo);
					third.setChildren(fourthList);
				}
				second.setChildren(thirdList);
			}
			first.setChildren(secondList);
		}
		return firstList;
	}

	@Override
	public void insert(MenuVo menuVo) throws Exception {
		Long menuSn = menuMapper.seq();
		menuVo.setMenuSn(menuSn);
		menuMapper.insert(menuVo);
	}

	@Override
	public void update(MenuVo menuVo) throws Exception {
		menuMapper.update(menuVo);
	}

	@Override
	public void updateSortOrdr(MenuVo menuVo) throws Exception {
		menuMapper.updateSortOrdr(menuVo);
	}

	@Override
	public void delete(MenuVo menuVo) throws Exception {
		menuMapper.delete(menuVo);
	}

	@Override
	public List<MenuVo> topmostList() throws Exception {
		MenuVo menuVo = new MenuVo();
		menuVo.setFirstIndex(-1);
		menuVo.setTopmostYn("Y");
		return menuMapper.list(menuVo);
	}

	@Override
	public List<MenuVo> listByUpperMenuSn(Long firstMenuSn) throws Exception {
		MenuVo menuVo = new MenuVo();
		menuVo.setFirstIndex(-1);
		menuVo.setUpperMenuSn(firstMenuSn);
		return menuMapper.list(menuVo);
	}

	@Override
	public List<MenuVo> treeByLangauge(String language) throws Exception {
		// 최상위 목록 (1st list)
		MenuVo menuVo = new MenuVo();
		menuVo.setFirstIndex(-1);
		menuVo.setTopmostYn("Y");
		menuVo.setLangId(language);
		return this.tree(menuVo);
	}

	@Override
	public List<MenuVo> listByUpperMenuSn(Long upperMenuSn, String langId) throws Exception {
		MenuVo menuVo = new MenuVo();
		menuVo.setFirstIndex(-1);
		menuVo.setUpperMenuSn(upperMenuSn);
		menuVo.setLangId(langId);
		return menuMapper.list(menuVo);
	}

}
