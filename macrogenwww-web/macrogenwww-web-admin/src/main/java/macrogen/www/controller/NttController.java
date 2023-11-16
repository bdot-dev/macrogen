package macrogen.www.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
import macrogen.www.common.CommonStringUtil;
import macrogen.www.enums.LangId;
import macrogen.www.service.BbsCtgryService;
import macrogen.www.service.CodeService;
import macrogen.www.service.InvstLogService;
import macrogen.www.service.NttAtchService;
import macrogen.www.service.NttService;
import macrogen.www.vo.InvstLogVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.NttAtchVo;
import macrogen.www.vo.NttVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ NewsController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 10. 19. 오후 1:01:31
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/{bbsId}")
public class NttController {

	@Resource(name="nttService")
	private NttService nttService;
	
	@Resource(name = "invstLogService")
	private InvstLogService invstLogServive;

	@Resource(name="nttAtchService")
	private NttAtchService nttAtchService;

	@Resource(name="codeService")
	private CodeService codeService;

	@Resource(name="bbsCtgryService")
	private BbsCtgryService bbsCtgryService;
	
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 각 게시판(공지사항/1:1문의/자유게시판/자료실) 목록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param bbsId
	 * @param loginVo
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @PathVariable String bbsId,
			@AuthenticationPrincipal MngrVo loginVo,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {
		listVo.setBbsId(bbsId);
		return bbsId+"/list";
	}

	/**
	 * <pre>
	 * listData
	 * 1. 개요   : 각 게시판(공지사항/1:1문의/자유게시판/자료실) 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param bbsId
	 * @param listVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @PathVariable String bbsId,
			@RequestBody NttVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.name());
		listVo.setBbsId(bbsId);

		if(StringUtils.isEmpty(listVo.getOrderBy())) listVo.setOrderBy("regist_dt_desc");

		List<NttVo> resultList = nttService.list(listVo);

		if (null != resultList && resultList.size() > 0) {		
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
			for(NttVo nttVo : resultList) {
				if(nttVo.getLangCode().equals("ko") && nttVo.getBbsId().equals("investor-inquiries")) {
					nttVo.setNmbrWrterNm(CommonStringUtil.lastStrRepeat(nttVo.getNmbrWrterNm(), "nm"));
				} else if(nttVo.getLangCode().equals("en") && nttVo.getBbsId().equals("investor-inquiries")){
					nttVo.setNmbrWrterNm(CommonStringUtil.lastStrRepeat(nttVo.getNmbrWrterNm(), "em"));
				}				
			}									
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		
		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		// 코드목록 : 페이지당레코드개수
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		// 카테고리 목록
		resultMap.put("bbsCtgryList", bbsCtgryService.listByBbsId(bbsId));

		// 코드목록 : 노출여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		// 상단고정 목록
		List<NttVo> upendFixingList = nttService.upendFixingList(langId.name(), bbsId);
		resultMap.put("upendFixingList", upendFixingList);

		return resultMap;
	}

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 각 게시판(공지사항/1:1문의/자유게시판/자료실) 등록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/")
	public String form(@PathVariable LangId langId, @PathVariable String bbsId,
			Model model, @ModelAttribute("listVo") NttVo listVo) throws Exception {

		return bbsId+"/form";
	}

	/**
	 * <pre>
	 * updateForm
	 * 1. 개요   : 각 게시판(공지사항/1:1문의/자유게시판/자료실) 수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/{nttSn}")
	public String updateForm(@PathVariable LangId langId, @PathVariable String bbsId, @PathVariable Long nttSn,
			Model model, @ModelAttribute("listVo") NttVo listVo) throws Exception {

		return bbsId+"/form";
	}

	/**
	 * <pre>
	 * formData
	 * 1. 개요   : 각 게시판(공지사항/1:1문의/자유게시판/자료실) 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param bbsId
	 * @param loginVo
	 * @param nttVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId, @PathVariable String bbsId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody NttVo nttVo, HttpServletRequest request) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		// 검색결과
		NttVo resultVo = new NttVo();
		InvstLogVo invstLogVo = new InvstLogVo();
		if (!StringUtils.isEmpty(nttVo.getNttSn())) {
			resultVo.setNttSn(nttVo.getNttSn());
			resultVo = nttService.view(resultVo);
			
			if(bbsId.equals("investor-inquiries")|| bbsId == "investor-inquiries") {
				String clientIp = CommonStringUtil.getClientIp(request);
				invstLogVo.setIp(clientIp);
				invstLogVo.setNttSn(resultVo.getNttSn());
				invstLogVo.setNttSj(resultVo.getNttSj());
				invstLogVo.setResult("조회");
				invstLogVo.setUserNm(resultVo.getNmbrWrterNm());
				invstLogVo.setRegisterSn(loginVo.getUserSn());
				invstLogVo.setLoginId(loginVo.getLoginId());
				
				invstLogServive.insert(invstLogVo);
			}
			
			
			NttAtchVo nttAtchVo = new NttAtchVo();
			nttAtchVo.setNttSn(nttVo.getNttSn());
			nttAtchVo.setFirstIndex(-1);
			
			if(resultVo.getNttCn()!=null) {
				resultVo.setNttCn(CommonStringUtil.replaceEventHander(resultVo.getNttCn()));
				resultVo.setNttCn(CommonStringUtil.replaceEditorTag(resultVo.getNttCn()));
			}
			
			resultVo.setAtchList(nttAtchService.list(nttAtchVo));
		} else {
			resultVo.setBbsId(bbsId);
			resultVo.setExpsrYn("Y");
		}
		resultMap.put("resultVo", resultVo);

		// 뉴스게시판분류목록
		resultMap.put("bbsCtgryList", bbsCtgryService.listByBbsId(bbsId));

		// 코드목록 : 노출여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		// 코드목록 : 기본이미지 목록
		resultMap.put("thumbBassImageCodeList", codeService.listByCodeSe("THUMB_BASS_IMAGE_CODE"));

		return resultMap;
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 각 게시판(공지사항/1:1문의/자유게시판/자료실) 등록&수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId, @PathVariable String bbsId, @AuthenticationPrincipal MngrVo loginVo,
			@RequestBody NttVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		vo.setLangCode(langId.name());
		
		vo.setNttCn(CommonStringUtil.replaceEditorTagRev(vo.getNttCn()));
		vo.setNttCn(CommonStringUtil.cleanXSS(vo.getNttCn()));
		if (StringUtils.isEmpty(vo.getNttSn())) {
			vo.setRegisterSn(loginVo.getUserSn());
			vo.setUpdusrSn(loginVo.getUserSn());
			vo.setWrterSn(loginVo.getUserSn());
			nttService.insert(vo);

		} else {
			vo.setUpdusrSn(loginVo.getUserSn());
			nttService.update(vo);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 각 게시판(공지사항/1:1문의/자유게시판/자료실) 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param nttVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId, @PathVariable String bbsId, @AuthenticationPrincipal MngrVo loginVo,
			@RequestBody NttVo nttVo,  HttpServletRequest request) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		nttVo.setUpdusrSn(loginVo.getUserSn());
		nttService.delete(nttVo);
		
		InvstLogVo invstLogVo = new InvstLogVo();
		if(bbsId.equals("investor-inquiries")|| bbsId == "investor-inquiries") {
			String clientIp = CommonStringUtil.getClientIp(request);
			invstLogVo.setIp(clientIp);
			invstLogVo.setNttSn(nttVo.getNttSn());
			invstLogVo.setNttSj(nttVo.getNttSj());
			invstLogVo.setResult("삭제");
			invstLogVo.setUserNm(nttVo.getNmbrWrterNm());
			invstLogVo.setRegisterSn(loginVo.getUserSn());
			invstLogVo.setLoginId(loginVo.getLoginId());
			
			invstLogServive.insert(invstLogVo);
		}
		
		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody NttVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getNttSnList()) {
			for (Long nttSn : vo.getNttSnList()) {
				NttVo deleteVo = new NttVo();
				deleteVo.setNttSn(nttSn);
				nttService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}
	
}
