package macrogen.www.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.LoggerFactory;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.common.EgovExcelView;
import macrogen.www.service.CodeService;
import macrogen.www.service.MngrAuthLogService;
import macrogen.www.vo.MngrAuthLogVo;
import macrogen.www.vo.MngrVo;


@Controller
@RequestMapping("/authLog")
public class MngrAuthLogController {
	
	@Resource(name = "mngrAuthLogService")
	private MngrAuthLogService mngrAuthLogService;

	@Resource(name="codeService")
	private CodeService codeService;

	private final org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 권한 로그 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(Model model, @AuthenticationPrincipal MngrVo loginVo, @ModelAttribute("listVo") MngrAuthLogVo listVo) throws Exception{

		return "auth-log/list";
	}

	/**
	 * <pre>
	 * listData
	 * 1. 개요   : 관리자 권한 로그 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@AuthenticationPrincipal MngrVo loginVo, @RequestBody MngrAuthLogVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<MngrAuthLogVo> resultList = mngrAuthLogService.list(listVo);
		paginationInfo.setTotalRecordCount(mngrAuthLogService.count(listVo));
		
		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);
		resultMap.put("conList", codeService.listByCodeSe("MNGRAUTH_CODE"));
		
		// 코드목록 : 페이지당레코드개수 임시
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));
		
		return resultMap;

	}

	/**
	 * <pre>
	 * formUpdate
	 * 1. 개요   : 관리자 권한 로그 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupVo
	 * @param model
	 * @return
	 * @throws Exception
	 */

	@RequestMapping("/form/{mngrHisSeq}")
	public String formUpdate(@AuthenticationPrincipal MngrVo loginVo,
			@PathVariable Long mngrHisSeq, Model model, @ModelAttribute("listVo") MngrAuthLogVo listVo) throws Exception{
		model.addAttribute("mngrHisSeq", mngrHisSeq);
		return "auth-log/form";
	}

	/**
	 * <pre>
	 * viewData
	 * 1. 개요   : 관리자 권한 로그 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupVo
	 * @return
	 * @throws Exception
	 */

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> viewData(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MngrAuthLogVo mngrAuthLogVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		MngrAuthLogVo resultVo = new MngrAuthLogVo();
		
		/*
		resultVo = mngrAuthLogService.view(mngrAuthLogVo);
	
		if(resultVo ==null) {
			resultVo = mngrAuthLogService.viewRef(mngrAuthLogVo);
		}else {
			
			if(resultVo.getMenuNm()!=null&&!resultVo.getMenuNm().equals("")) {
				String [] menus = resultVo.getMenuNm().split(",");
				String [] mnPaths = resultVo.getMenuNmPath().split(",");
				
				ArrayList<String> menuNmList = new ArrayList<String>(Arrays.asList(menus));
				ArrayList<String> menuPathList = new ArrayList<String>();
				ArrayList<String> pathList = new ArrayList<String>(Arrays.asList(mnPaths));

				for(int i=0;i<pathList.size();i++) {
					if(!pathList.get(i).contains("(-)")) {
						menuPathList.add(pathList.get(i));
					}
				}

				resultVo.setMenuNmList(menuNmList);
				resultVo.setUrlList(menuPathList);
				
			}	
			
		}*/
		
		resultVo = mngrAuthLogService.viewRef(mngrAuthLogVo);
		List<MngrAuthLogVo> menuList = mngrAuthLogService.viewMenuList(mngrAuthLogVo);
		List<MngrAuthLogVo> urlList = mngrAuthLogService.viewUrlList(mngrAuthLogVo);
		
		resultMap.put("resultVo", resultVo);

		if(menuList.size() > 0) {
			resultMap.put("menuList", menuList);
		}
		if(urlList.size() > 0) {
			resultMap.put("urlList", urlList);
		}


		return resultMap;
	}
	
	
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 권한 로그 엑셀
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/excel")
	public View excel(Model model, @AuthenticationPrincipal MngrVo loginVo, @ModelAttribute("listVo") MngrAuthLogVo listVo) throws Exception{
		
		List<MngrAuthLogVo> list = mngrAuthLogService.listExcel(listVo);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
		for(int i=0;i<list.size();i++) {
			list.get(i).setRegDt(sdf.format(list.get(i).getRegistDt()));
			if(list.get(i).getMenuCnt()>1) {
				list.get(i).setMenuNm(list.get(i).getMenuNm()+" 외 "+(list.get(i).getMenuCnt()-1) +" 건");
			}
			if(list.get(i).getUrlCnt()>0) {
				int urlCom = list.get(i).getUrl().compareTo("-");

				if(list.get(i).getUrlCnt()>1) {
					if(urlCom==0) {
						list.get(i).setMenuNmPath(list.get(i).getMenuNmPath()+" 외 "+(list.get(i).getUrlCnt()-1) +" 건");
					}else {
						list.get(i).setMenuNmPath(list.get(i).getMenuNmPath()+" ("+list.get(i).getUrl()+")"+" 외 "+(list.get(i).getUrlCnt()-1) +" 건");
					}
				}else {
					if(urlCom==0) {
						list.get(i).setMenuNmPath(list.get(i).getMenuNmPath());
					}else {
						list.get(i).setMenuNmPath(list.get(i).getMenuNmPath()+" ("+list.get(i).getUrl()+")");
					}
				}
				
			}
		}
		
		
		model.addAttribute("XLS_ID", "MNGRAUTH_LOG");	
		model.addAttribute("list", list);
		
		return new EgovExcelView();
	}
}
