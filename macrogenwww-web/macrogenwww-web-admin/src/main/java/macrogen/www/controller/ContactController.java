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
import macrogen.www.common.CommonStringUtil;
import macrogen.www.enums.LangId;
import macrogen.www.service.CodeService;
import macrogen.www.service.ContactService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.ContactVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.NttVo;

@Controller
@RequestMapping("/{langId}/contact")
public class ContactController {

	@Resource(name="contactService")
	private ContactService contactService;
	
	@Resource(name="codeService")
	private CodeService codeService;
	
	
	/**
	 * <pre>
	 * list
	 * 1. 개요   : contact-us 목록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo loginVo, 
					@ModelAttribute("contactVo") ContactVo listVo, Model model) throws Exception {		
		return "contact/list";
	}
	
	/**
	 * <pre>
	 * listData
	 * 1. 개요   : contact-us 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody ContactVo listVo) throws Exception {
	
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());
		
		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.name());
		
		if(StringUtils.isEmpty(listVo.getOrderBy())) listVo.setOrderBy("regist_dt_desc");
		
		List<ContactVo> resultList = contactService.list(listVo);
		
		
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(contactService.count(listVo));
			
			for(ContactVo vo : resultList) {
				if(vo.getLangCode().equals("ko")) {
					vo.setNmbrWriterNm(CommonStringUtil.lastStrRepeat(vo.getNmbrWriterNm(), "nm"));
				} else {
					vo.setNmbrWriterNm(CommonStringUtil.lastStrRepeat(vo.getNmbrWriterNm(), "em"));
				}
				
			}
			
		} else {
			paginationInfo.setTotalRecordCount(0);
		}
		
		
		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);
		
		// 코드목록 : 페이지당레코드개수
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));
		
		// 코드목록 : 국가	
		resultMap.put("nationCodeList", codeService.listByCodeSe("CONTACT_NATION_CODE"));
		
		return resultMap;
	}
		
	@RequestMapping("/form/{contactSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long contactSn,
			@ModelAttribute("listVo") ContactVo listVo, Model model) throws Exception {
		return "contact/form";
	}
	
	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody ContactVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		if (StringUtils.isEmpty(vo.getContactSn())) {
			ContactVo resultVo = new ContactVo();
			resultMap.put("resultVo", resultVo);
		} else {
			
			ContactVo resultVo = contactService.viewByPk(vo.getContactSn());
			resultMap.put("resultVo", resultVo);
		}
				
		List<CodeVo> nationCodeList = codeService.listByCodeSe("CONTACT_NATION_CODE");
		resultMap.put("nationCodeList", nationCodeList);
		
		return resultMap;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody ContactVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		contactService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}
	
	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody ContactVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getContactSnList()) {
			for (Long contactSn : vo.getContactSnList()) {
				ContactVo deleteVo = new ContactVo();
				deleteVo.setContactSn(contactSn);
				contactService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}
	
}
