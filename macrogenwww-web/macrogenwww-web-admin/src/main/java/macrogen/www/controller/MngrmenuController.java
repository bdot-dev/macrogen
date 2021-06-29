package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
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
import macrogen.www.service.MngrmenuService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.MngrmenuVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ MngrmenuController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 12. 오후 4:33:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/mngrmenu")
public class MngrmenuController {

	@Resource(name="mngrmenuService")
	private MngrmenuService mngrmenuService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 메뉴 목록 폼
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

		return "mngrmenu/list";
	}

	/**
	 * <pre>
	 * treeData
	 * 1. 개요   : 관리자 메뉴 트리 구조 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrmenuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/treeData")
	@ResponseBody
	public Map<String, Object> treeData(MngrmenuVo mngrmenuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		// 전체메뉴목록
		MngrmenuVo param = new MngrmenuVo();
		param.setFirstIndex(-1);
		param.setTopmostYn("Y");
		List<MngrmenuVo> menuList = mngrmenuService.tree(param);
		resultMap.put("menuList", menuList);

		return resultMap;
	}

	/**
	 * <pre>
	 * viewData
	 * 1. 개요   : 관리자 메뉴 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrmenuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/viewData")
	@ResponseBody
	public Map<String, Object> viewData(MngrmenuVo mngrmenuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		MngrmenuVo resultVo = mngrmenuService.view(mngrmenuVo);

		resultMap.put("mngrmenu", resultVo);
		resultMap.put("result", "success");

		return resultMap;
	}

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 메뉴 등록 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrmenuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Map<String, Object> insert(@AuthenticationPrincipal MngrVo loginVo, MngrmenuVo mngrmenuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		mngrmenuVo.setRegisterSn(loginVo.getUserSn());
		mngrmenuVo.setUpdusrSn(loginVo.getUserSn());
		if (null == mngrmenuVo.getSortOrdr()) {
			mngrmenuVo.setSortOrdr(999);
		}
		mngrmenuService.insert(mngrmenuVo);

		resultMap.put("result", "success");
		resultMap.put("mngrmenu", mngrmenuVo);
		return resultMap;
	}

	/**
	 * <pre>
	 * move
	 * 1. 개요   : 관리자 메뉴 이동 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrmenuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/move")
	@ResponseBody
	public Map<String, Object> move(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MngrmenuVo mngrmenuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		mngrmenuVo.setUpdusrSn(loginVo.getUserSn());
		mngrmenuService.update(mngrmenuVo);

		int sortOrdr = 0;
		for (MngrmenuVo vo : mngrmenuVo.getChildren()) {
			MngrmenuVo update = new MngrmenuVo();
			update.setMenuSn(vo.getMenuSn());
			update.setSortOrdr(sortOrdr++);
			update.setUpperMenuSn(mngrmenuVo.getUpperMenuSn());
			mngrmenuService.updateSortOrdr(update);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 관리자 메뉴 수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrmenuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Map<String, Object> update(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MngrmenuVo mngrmenuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		mngrmenuVo.setUpdusrSn(loginVo.getUserSn());
		mngrmenuService.update(mngrmenuVo);

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 메뉴 삭제 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrmenuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			MngrmenuVo mngrmenuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		mngrmenuService.delete(mngrmenuVo);

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * listData
	 * 1. 개요   : 관리자 메뉴 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrmenuVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/listData")
	@ResponseBody
	public Map<String, Object> listData(MngrmenuVo mngrmenuVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		// 전체메뉴목록
		MngrmenuVo param = new MngrmenuVo();
		param.setFirstIndex(-1);
		param.setRoleId(mngrmenuVo.getRoleId());
		// param.setPendncyYn("N");
		List<MngrmenuVo> menuList = mngrmenuService.list(param);
		resultMap.put("menuList", menuList);

		return resultMap;
	}

	/**
	 * <pre>
	 * header
	 * 1. 개요   : 관리자 메뉴 포워딩
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param menuSn
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/forward/{menuSn}")
	public String header(@AuthenticationPrincipal MngrVo loginVo,
			@PathVariable Long menuSn) throws Exception {

		// 메뉴정보 get
		MngrmenuVo mngrmenuVo = new MngrmenuVo();
		mngrmenuVo.setMenuSn(menuSn);
		mngrmenuVo = mngrmenuService.view(mngrmenuVo);

		// 메뉴정보없으면 에러페이지로 포워딩
		if (null == mngrmenuVo) {
			throw new BaseException("no mngrmenu info");
		}

		/**
		 * 메뉴가 빈URL일 경우, 메뉴 다시 결정
		 * - 메뉴경로가 해당 메뉴 경로로 시작하는 것 중에 첫번째 메뉴중 URL이 빈값이 아닌것
		 */
		MngrmenuVo forwardMenuVo = null;
		if (!StringUtils.isEmpty(mngrmenuVo.getMenuUrl())) {
			forwardMenuVo = mngrmenuVo;
		} else {
			forwardMenuVo = mngrmenuService.firstNotEmptyUrl(mngrmenuVo, loginVo);
			if (null == forwardMenuVo) {
				throw new BaseException("no mngrmenu info");
			}
		}

		return "redirect:" + forwardMenuVo.getMenuUrl();
	}

}
