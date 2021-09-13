package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.enums.LangId;
import macrogen.www.service.CodeService;
import macrogen.www.service.FnlttService;
import macrogen.www.service.NttService;
import macrogen.www.service.PlosdocService;
import macrogen.www.utils.CaptchaUtil;
import macrogen.www.vo.FnlttVo;
import macrogen.www.vo.NttVo;
import macrogen.www.vo.PlosdocVo;
import nl.captcha.Captcha;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ IrController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 2. 오후 6:39:41
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/ir")
public class IrController extends DefaultController {

	@Autowired
	private FnlttService fnlttService;

	@Autowired
	private PlosdocService plosdocService;

	@Autowired
	private NttService nttService;

	@Autowired
	private CodeService codeService;

	@RequestMapping("/financial")
	public String financial(@PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		FnlttVo fnlttVo = new FnlttVo();
		fnlttVo.setRecordCountPerPage(3);
		fnlttVo.setFirstIndex(0);
		List<FnlttVo> fnlttList = fnlttService.list(fnlttVo);
		model.addAttribute("fnlttList", fnlttList);

		PlosdocVo plosdocVo = new PlosdocVo();
		plosdocVo.setRecordCountPerPage(3);
		plosdocVo.setFirstIndex(0);
		List<PlosdocVo> plosdocList = plosdocService.list(plosdocVo);
		model.addAttribute("plosdocList", plosdocList);

		return getDev() + "/ir/financial." + getLang();
	}

	@RequestMapping("/announcement")
	public String announcement(@PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(6);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());
		listVo.setBbsId("irdislos");

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<NttVo> resultList = nttService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		List<NttVo> upendFixingList = nttService.upendFixingList(langId.name(), listVo.getBbsId());
		model.addAttribute("upendFixingList", upendFixingList);

		return getDev() + "/ir/announcement." + getLang();
	}

	@RequestMapping("/announcement/{nttSn}")
	public String announcementView(@PathVariable long nttSn, @PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		model.addAttribute("resultVo", resultVo);

		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setBbsId("irdislos");
		listVo.setNttSn(nttSn);

		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		return getDev() + "/ir/announcement-view." + getLang();
	}

	@RequestMapping("/news")
	public String news(@PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(6);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());
		listVo.setBbsId("irnews");

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<NttVo> resultList = nttService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		List<NttVo> upendFixingList = nttService.upendFixingList(langId.name(), listVo.getBbsId());
		model.addAttribute("upendFixingList", upendFixingList);

		return getDev() + "/ir/news." + getLang();
	}

	@RequestMapping("/news/{nttSn}")
	public String newsView(@PathVariable long nttSn, @PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		model.addAttribute("resultVo", resultVo);

		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setBbsId("irnews");
		listVo.setNttSn(nttSn);

		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		return getDev() + "/ir/news-view." + getLang();
	}

	@RequestMapping("/disclosure")
	public String disclosure() throws Exception {
		return getDev() + "/ir/disclosure." + getLang();
	}

	@RequestMapping("/investor-inquiries")
	public String investorInquiries(@PathVariable LangId langId, Model model) throws Exception {
		model.addAttribute("mobilePrefixList", codeService.listByCodeSe("MOBILE_PREFIX"));

		return getDev() + "/ir/investor-inquiries." + getLang();
	}

	@RequestMapping("/investor-inquiries/captcha-image")
	@ResponseBody
	public void captchaImage(@PathVariable LangId langId, Model model,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		new CaptchaUtil().getImgCaptcha(request, response);
	}

	@RequestMapping("/investor-inquiries/submit")
	@ResponseBody
	public Map<String, Object> investorInquiriesSubmit(@PathVariable LangId langId, NttVo vo,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		// validate captcha string (vo.getCaptchaString())
		Captcha captcha = (Captcha) request.getSession().getAttribute(Captcha.NAME);
		if (StringUtils.isEmpty(vo.getCaptchaString()) ||
				!captcha.isCorrect(vo.getCaptchaString())) {
			resultMap.put("result", "fail");
 			resultMap.put("message", "invalid_captcha");
			return resultMap;
		}

		vo.setLangCode(langId.name());
		vo.setBbsId("investor-inquiries");
		vo.setRegistIp(request.getRemoteAddr());

		nttService.insert(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

}
