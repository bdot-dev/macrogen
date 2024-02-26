package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import macrogen.www.service.CodeService;
import macrogen.www.service.PrductctgryService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.PrductctgryVo;

/**
 * <pre>
 * hanbang.controller
 *    |_ PrductCtgryController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 18. 오후 3:25:22
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/prductctgry")
public class PrductctgryController {

	@Resource(name="prductctgryService")
	private PrductctgryService prductctgryService;

	@Resource(name="codeService")
	private CodeService codeService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 카테고리 관리 목록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param prductctgryVo
	 * @param model
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute PrductctgryVo prductctgryVo, Model model) throws Exception {

		return "prductctgry/list";
	}

	/**
	 * <pre>
	 * treeAjaxHtml
	 * 1. 개요   : 카테고리 트리 형 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param prductctgryVo
	 * @param model
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/treeAjaxHtml")
	public String treeAjaxHtml(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute PrductctgryVo prductctgryVo, Model model) throws Exception {

		return "prductctgry/treeAjaxHtml";
	}

	/**
	 * <pre>
	 * treeData
	 * 1. 개요   : 카테고리 트리형 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param prductctgryVo
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/treeData")
	@ResponseBody
	public Map<String, Object> treeData(@RequestBody PrductctgryVo prductctgryVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		// 전체메뉴목록
		prductctgryVo.setFirstIndex(-1);
		List<PrductctgryVo> ctgryList = prductctgryService.tree(prductctgryVo);
		resultMap.put("ctgryList", ctgryList);

		return resultMap;
	}

	/**
	 * <pre>
	 * viewData
	 * 1. 개요   : 카테고리 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param prductctgryVo
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/viewData")
	@ResponseBody
	public Map<String, Object> viewData(PrductctgryVo prductctgryVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		PrductctgryVo resultVo = prductctgryService.view(prductctgryVo);

		resultMap.put("ctgry", resultVo);

		// 코드목록 : 노출여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		return resultMap;
	}

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 카테고리 등록 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param prductctgryVo
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/insert")
	@ResponseBody
	public Map<String, Object> insert(@AuthenticationPrincipal MngrVo loginVo,
			PrductctgryVo prductctgryVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		prductctgryVo.setRegisterSn(loginVo.getUserSn());
		prductctgryVo.setUpdusrSn(loginVo.getUserSn());
		if (null == prductctgryVo.getSortOrdr()) {
			prductctgryVo.setSortOrdr(999);
		}
		if (null == prductctgryVo.getExpsrYn()) {
			prductctgryVo.setExpsrYn("Y");
		}
		prductctgryService.insert(prductctgryVo);

		resultMap.put("result", "success");
		resultMap.put("ctgry", prductctgryVo);
		return resultMap;
	}

	/**
	 * <pre>
	 * move
	 * 1. 개요   : 카테고리 이동 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param prductctgryVo
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/move")
	@ResponseBody
	public Map<String, Object> move(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PrductctgryVo prductctgryVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		prductctgryVo.setUpdusrSn(loginVo.getUserSn());
		prductctgryService.update(prductctgryVo);

		int sortOrdr = 0;
		for (PrductctgryVo vo : prductctgryVo.getChildren()) {
			PrductctgryVo update = new PrductctgryVo();
			update.setCtgrySn(vo.getCtgrySn());
			update.setSortOrdr(sortOrdr++);
			update.setUpperCtgrySn(prductctgryVo.getUpperCtgrySn());
			prductctgryService.updateSortOrdr(update);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 카테고리 수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param prductctgryVo
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/update")
	@ResponseBody
	public Map<String, Object> update(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PrductctgryVo prductctgryVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		prductctgryVo.setUpdusrSn(loginVo.getUserSn());
		prductctgryService.update(prductctgryVo);

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 카테고리 삭제 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param prductctgryVo
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			PrductctgryVo prductctgryVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		prductctgryService.delete(prductctgryVo);
		resultMap.put("result", "success");

		return resultMap;
	}

	/**
	 * <pre>
	 * listByUpperCtgrySn
	 * 1. 개요   : 카테고리 목록 By 상위 순번(UpperCtgrySn)
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param prductctgryVo
	 * @return
	 * @throws Exception
	 *
	@RequestMapping("/listByUpperCtgrySn")
	@ResponseBody
	public Map<String, Object> listByUpperCtgrySn(PrductctgryVo prductctgryVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		List<PrductctgryVo> ctgryList = prductctgryService.listByUpperCtgrySn(prductctgryVo.getUpperCtgrySn());

		resultMap.put("ctgryList", ctgryList);

		return resultMap;
	}
	*/
}
