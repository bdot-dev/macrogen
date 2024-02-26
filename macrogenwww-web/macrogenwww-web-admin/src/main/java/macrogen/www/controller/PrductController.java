package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.service.CodeService;
import macrogen.www.service.PrductService;
import macrogen.www.service.PrductctgryService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.PrductVo;
import macrogen.www.vo.PrductctgryVo;

@Controller
@RequestMapping("/prduct")
public class PrductController {

	@Resource(name="prductService")
	private PrductService prductService;

	@Resource(name="codeService")
	private CodeService codeService;

	@Resource(name="prductctgryService")
	private PrductctgryService prductctgryService;

	/*@RequestMapping("/list")
	public String list(@ModelAttribute("listVo") PrductVo listVo, Model model) throws Exception {
		return "prduct/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@RequestBody PrductVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<PrductVo> resultList = prductService.list(listVo);
		paginationInfo.setTotalRecordCount(prductService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		// 유형 목록
		resultMap.put("prductKndList", codeService.listByCodeSe("PRDUCT_KND_CODE"));

		// 노출 여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		// 코드목록 : 페이지당레코드개수
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		// 카테고리 목록
		PrductctgryVo prductctgryVo = new PrductctgryVo();
		prductctgryVo.setFirstIndex(-1);
		List<PrductctgryVo> ctgryList = prductctgryService.list(prductctgryVo);
		resultMap.put("prductctgryList", ctgryList);

		return resultMap;
	}

	@RequestMapping("/list/saveSort")
	@ResponseBody
	public Map<String, Object> saveSort(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody List<PrductVo> prductList) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		for(PrductVo prductVo : prductList){
			PrductVo sortVo = new PrductVo();
			sortVo.setPrductSn(prductVo.getPrductSn());
			sortVo.setSortOrdr(prductVo.getSortOrdr());

			prductService.updateSortOrder(sortVo);
		}

		return resultMap;
	}

	@RequestMapping("/list/saveExpsr")
	@ResponseBody
	public Map<String, Object> saveExpsr(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PrductVo prductVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		prductService.updateExpsrYn(prductVo);

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(Model model, @ModelAttribute("listVo") PrductVo listVo) throws Exception {
		return "/prduct/form";
	}

	@RequestMapping("/form/{prductSn}")
	public String updateForm(@PathVariable Long prductSn, Model model,
			@ModelAttribute("listVo") PrductVo listVo) throws Exception {
		return "/prduct/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> view(@RequestBody PrductVo prductVo) throws Exception{
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		if (!StringUtils.isEmpty(prductVo.getPrductSn())) {
			PrductVo resultVo = new PrductVo();
			resultVo.setPrductSn(prductVo.getPrductSn());
			resultVo = prductService.view(resultVo);
			resultMap.put("resultVo", resultVo);
		} else {
			PrductVo resultVo = new PrductVo();
			resultMap.put("resultVo", resultVo);
		}

		// 카테고리 목록
		PrductctgryVo prductctgryVo = new PrductctgryVo();
		prductctgryVo.setTopmostYn("Y");
		prductctgryVo.setFirstIndex(-1);
		List<PrductctgryVo> ctgryList = prductctgryService.tree(prductctgryVo);
		resultMap.put("ctgryList", ctgryList);

		// 제품 구분
		resultMap.put("prductKndList", codeService.listByCodeSe("PRDUCT_KND_CODE"));

		// 노출 여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PrductVo prductVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		prductVo.setRegisterSn(loginVo.getUserSn());
		prductVo.setUpdusrSn(loginVo.getUserSn());

		if (StringUtils.isEmpty(prductVo.getPrductSn())) {
			prductService.insert(prductVo);
		} else {
			prductService.update(prductVo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PrductVo prductVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		prductService.delete(prductVo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/listAjaxHtml")
	public String listAjaxHtml(@ModelAttribute("listVo") PrductVo listVo, Model model) throws Exception {
		listVo.setRecordCountPerPage(1);
		return "/prduct/listAjaxHtml";
	}*/

}
