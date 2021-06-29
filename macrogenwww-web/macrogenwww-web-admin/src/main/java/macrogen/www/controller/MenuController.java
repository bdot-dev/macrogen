package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.fdl.cmmn.exception.BaseException;
import macrogen.www.service.CodeService;
import macrogen.www.service.MenuService;
import macrogen.www.vo.MenuVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ MenuController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 12. 오전 10:09:54
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

	@Resource(name="menuService")
	private MenuService menuService;

	@Resource(name="codeService")
	private CodeService codeService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 메뉴 관리 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo loginVo, Model model) throws Exception {

		return "menu/list";
	}

	/**
	 * <pre>
	 * treeData
	 * 1. 개요   : 메뉴 트리 구조 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/treeData")
	@ResponseBody
	public Map<String, Object> treeData(MenuVo menuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		// 전체메뉴목록
		MenuVo param = new MenuVo();
		param.setFirstIndex(-1);
		param.setTopmostYn("Y");
		List<MenuVo> menuList = menuService.tree(param);
		resultMap.put("menuList", menuList);

		return resultMap;
	}

	/**
	 * <pre>
	 * viewData
	 * 1. 개요   : 메뉴 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/viewData")
	@ResponseBody
	public Map<String, Object> viewData(MenuVo menuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		MenuVo resultVo = menuService.view(menuVo);

		resultMap.put("menu", resultVo);
		resultMap.put("result", "success");

		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		resultMap.put("menuSeCodeList", codeService.listByCodeSe("MENU_SE_CODE"));

		return resultMap;
	}

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 메뉴 등록 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Map<String, Object> insert(@AuthenticationPrincipal MngrVo loginVo, MenuVo menuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		menuVo.setRegisterSn(loginVo.getUserSn());
		menuVo.setUpdusrSn(loginVo.getUserSn());
		if (null == menuVo.getSortOrdr()) {
			menuVo.setSortOrdr(999);
		}
		menuService.insert(menuVo);

		resultMap.put("result", "success");
		resultMap.put("menu", menuVo);

		return resultMap;
	}

	/**
	 * <pre>
	 * move
	 * 1. 개요   : 메뉴 순서 이동 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/move")
	@ResponseBody
	public Map<String, Object> move(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MenuVo menuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		menuVo.setUpdusrSn(loginVo.getUserSn());
		menuService.update(menuVo);

		int sortOrdr = 0;
		for (MenuVo vo : menuVo.getChildren()) {
			MenuVo update = new MenuVo();
			update.setMenuSn(vo.getMenuSn());
			update.setSortOrdr(sortOrdr++);
			update.setUpperMenuSn(menuVo.getUpperMenuSn());
			menuService.updateSortOrdr(update);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 메뉴 정보 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Map<String, Object> update(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MenuVo menuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		menuVo.setUpdusrSn(loginVo.getUserSn());
		menuService.update(menuVo);

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 메뉴 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			MenuVo menuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		menuService.delete(menuVo);

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * listData
	 * 1. 개요   : 메뉴 전체 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/listData")
	@ResponseBody
	public Map<String, Object> listData(MenuVo menuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		// 전체메뉴목록
		MenuVo param = new MenuVo();
		param.setFirstIndex(-1);
		param.setLangId(menuVo.getLangId());
		List<MenuVo> menuList = menuService.list(param);
		resultMap.put("menuList", menuList);

		return resultMap;
	}

	/**
	 * <pre>
	 * listByUpperMenuSn
	 * 1. 개요   : 메뉴 목록 By 상위 순번(UpperMenuSn)
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param menuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/listByUpperMenuSn")
	@ResponseBody
	public Map<String, Object> listByUpperMenuSn(MenuVo menuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		List<MenuVo> menuList = menuService.listByUpperMenuSn(menuVo.getUpperMenuSn());

		resultMap.put("menuList", menuList);

		return resultMap;
	}

	/**
	 * <pre>
	 * header
	 * 1. 개요   : 메뉴 포워딩
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param locale
	 * @param menuSn
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/forward/{menuSn}")
	public String header(Locale locale,
			@PathVariable Long menuSn) throws Exception {

		// 메뉴정보 get
		MenuVo menuVo = new MenuVo();
		menuVo.setMenuSn(menuSn);
		menuVo = menuService.view(menuVo);

		// 메뉴정보없으면 에러페이지로 포워딩
		if (null == menuVo) {
			throw new BaseException("no menu info");
		}

		// 메뉴가 빈URL일 경우, 메뉴 다시 결정
		//   - 메뉴경로가 해당 메뉴 경로로 시작하는 것 중에 첫번째 메뉴중 URL이 빈값이 아닌것
		MenuVo forwardMenuVo = null;
		if (!StringUtils.isEmpty(menuVo.getMenuUrl())) {
			forwardMenuVo = menuVo;
		} else {
			forwardMenuVo = menuService.firstNotEmptyUrl(menuVo, locale.getLanguage());
			if (null == forwardMenuVo) {
				throw new BaseException("no menu info");
			}
		}

		return String.format("redirect:/%s%s",
				locale.getLanguage(), forwardMenuVo.getMenuUrl());
	}
}
