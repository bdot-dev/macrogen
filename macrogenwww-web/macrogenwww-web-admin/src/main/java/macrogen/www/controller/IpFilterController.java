package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.slf4j.LoggerFactory;
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
import macrogen.www.service.IpFilterService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.IpFilterVo;
import macrogen.www.vo.MngrVo;

@Controller
@RequestMapping("/ip")
public class IpFilterController {
	
	@Resource(name="ipFilterService")
	private IpFilterService ipFilterService;

	@Resource(name="codeService")
	private CodeService codeService;

	private final org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 아이피 목록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(Model model, @AuthenticationPrincipal MngrVo loginVo, @ModelAttribute("listVo") IpFilterVo listVo) throws Exception{

		return "ip/list";
	}

	/**
	 * <pre>
	 * listData
	 * 1. 개요   : 아아피 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@AuthenticationPrincipal MngrVo loginVo, @RequestBody IpFilterVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<IpFilterVo> resultList = ipFilterService.list(listVo);
		paginationInfo.setTotalRecordCount(ipFilterService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);
		resultMap.put("conList", codeService.listByCodeSe("IP_CODE"));
		
		// 코드목록 : 페이지당레코드개수 임시
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));


		return resultMap;

	}

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 아아피 상세 등록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String form(@AuthenticationPrincipal MngrVo loginVo, Model model, @ModelAttribute("listVo")IpFilterVo listVo) throws Exception {

		model.addAttribute("listVo", listVo);
		return "ip/form";
	}

	/**
	 * <pre>
	 * updateForm
	 * 1. 개요   : 아아피 상세 수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param col
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/{col}")
	public String updateForm(@PathVariable Long col, Model model, @ModelAttribute("listVo") IpFilterVo listVo) throws Exception {
		model.addAttribute("col", col);
		model.addAttribute("listVo", listVo);
		return "ip/form";
	}

	/**
	 * <pre>
	 * formData
	 * 1. 개요   : 아아피 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody IpFilterVo ipVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		
		IpFilterVo resultVo = new IpFilterVo();
		
		if (!StringUtils.isEmpty(ipVo.getCol())) {
			resultVo.setCol(ipVo.getCol());
			resultVo = ipFilterService.view(resultVo);
			
		} else {
			resultVo.setUseYn("Y");
		}
		
		List<CodeVo> useYnList = codeService.listByCodeSe("USE_YN");
		
		resultMap.put("resultVo", resultVo);
		resultMap.put("useYnList", useYnList);
		

		return resultMap;
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 아아피 등록 & 수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody IpFilterVo ipVo) throws Exception {

		Map<String, Object> resultMap = new HashMap<>();
		
	
		if (!StringUtils.isEmpty(ipVo.getCol())) {
			ipVo.setUpdusrSn(loginVo.getUserSn());
			ipFilterService.update(ipVo);
		} else {
			ipVo.setRegisterSn(loginVo.getUserSn());
			ipVo.setUpdusrSn(loginVo.getUserSn());
			ipFilterService.insert(ipVo);
		}

		resultMap.put("result", "success");
		return resultMap;
	}



	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 아아피 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody IpFilterVo ipVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		
		ipVo.setUseYn("N");
		ipFilterService.delete(ipVo);

		resultMap.put("result", "success");
		return resultMap;
	}

}
