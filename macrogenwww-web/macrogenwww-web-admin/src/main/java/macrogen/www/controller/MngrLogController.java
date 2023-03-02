package macrogen.www.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.LoggerFactory;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.common.EgovExcelView;
import macrogen.www.service.CodeService;
import macrogen.www.service.MngrLogService;
import macrogen.www.vo.MngrLogVo;
import macrogen.www.vo.MngrLogVo;
import macrogen.www.vo.MngrVo;

@Controller
@RequestMapping("/mngrLog")
public class MngrLogController {
	
	@Resource(name = "mngrLogService")
	private MngrLogService mngrLogService;

	@Resource(name="codeService")
	private CodeService codeService;

	private final org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 로그 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(Model model, @AuthenticationPrincipal MngrVo loginVo, @ModelAttribute("listVo") MngrLogVo listVo) throws Exception{

		return "mngr-log/list";
	}

	/**
	 * <pre>
	 * listData
	 * 1. 개요   : 관리자 로그 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@AuthenticationPrincipal MngrVo loginVo, @RequestBody MngrLogVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<MngrLogVo> resultList = mngrLogService.list(listVo);
		paginationInfo.setTotalRecordCount(mngrLogService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);
		resultMap.put("conList", codeService.listByCodeSe("MNGRLOG_CODE"));
		
		// 코드목록 : 페이지당레코드개수 임시
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));
		
		
		return resultMap;

	}
	
	
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 로그 엑셀
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/excel")
	public View excel(Model model, @AuthenticationPrincipal MngrVo loginVo, @ModelAttribute("listVo") MngrLogVo listVo) throws Exception{
		
		List<MngrLogVo> list = mngrLogService.listExcel(listVo);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
		for(int i=0;i<list.size();i++) {
			list.get(i).setRegDt(sdf.format(list.get(i).getRegistDt()));
		}
		
		
		model.addAttribute("XLS_ID", "MNGR_LOG");	
		model.addAttribute("list", list);
		
		return new EgovExcelView();
	}
}
