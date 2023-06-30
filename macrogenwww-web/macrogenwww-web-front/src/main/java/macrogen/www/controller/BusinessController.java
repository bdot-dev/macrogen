package macrogen.www.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.common.CookieUtil;
import macrogen.www.enums.LangId;
import macrogen.www.service.PopupService;
import macrogen.www.vo.PopupVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ BusinessController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 2. 오후 6:37:58
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/business")
public class BusinessController extends DefaultController {
	
	@Autowired
	private PopupService popupService;
		
	@RequestMapping("/research/ngs")
	public String researchNgs(@PathVariable LangId langId, Model model) throws Exception {
		model.addAttribute("layout_type", "business");
		return getDev() + "/business/research/ngs." + getLang();
	}

	@RequestMapping("/research/ces")
	public String researchCes(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/ces." + getLang();
	}

	@RequestMapping("/research/gene-synthesis")
	public String researchGeneSynthesis(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/gene-synthesis." + getLang();
	}

	@RequestMapping("/research/oligo")
	public String researchOligo(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/oligo." + getLang();
	}

	@RequestMapping("/research/microarray")
	public String researchMicroarray(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/microarray." + getLang();
	}

	@RequestMapping("/research/model")
	public String researchModel(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/model." + getLang();
	}

	@RequestMapping("/research/reagent")
	public String reagentLabware(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/reagent." + getLang();
	}
	
	@RequestMapping("/diagnosis/cancer")
	public String diagnosisCancer(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/diagnosis/cancer." + getLang();
	}

	@RequestMapping("/diagnosis/newborn")
	public String diagnosisNewborn(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/diagnosis/newborn." + getLang();
	}

	@RequestMapping("/diagnosis/covid")
	public String diagnosisCovid(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/diagnosis/covid." + getLang();
	}


	@RequestMapping("/healthcare/personal-genetic")
	public String healthcarePersonalGenetic(@PathVariable LangId langId, HttpServletRequest request, Model model) throws Exception {
		
		// 메인화면 팝업
		PopupVo popupVo = new PopupVo();
		popupVo.setLangCode(langId.name());
		popupVo.setFirstIndex(-1);
		popupVo.setExposed(true);
		//popupVo.setOrderBy("sort_asc");
		popupVo.setOrderBy("sort_desc");

		popupVo.setOrderBy("sort_desc");
		popupVo.setExposedPopupCnt(popupService.count(popupVo));
		
		List<PopupVo> popupList = popupService.list(popupVo);
		
		if (null != popupList && !popupList.isEmpty()) {
			List<Long> exceptPopupSnList = getExceptPopupBusinessSnList(request);
			List<Boolean> cookieChkList = new ArrayList<>();
			for (PopupVo popup : popupList) {
				cookieChkList.add(exceptPopupSnList.contains(popup.getPopupSn())); 
				if (!exceptPopupSnList.contains(popup.getPopupSn())) {
					model.addAttribute("popupVo", popup);
					model.addAttribute("cookieChkList", cookieChkList);
					model.addAttribute("popupList", popupList);
				}
			}
			int popupCnt = popupList.size();
			model.addAttribute("popupCnt", popupCnt);
		}
		
		return getDev() + "/business/healthcare/personal-genetic." + getLang();
	}

	@RequestMapping("/healthcare/intestinal-microbiome")
	public String healthcareIntestinalMicrobiome(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/healthcare/intestinal-microbiome." + getLang();
	}

	@RequestMapping("/healthcare/pet-genetic")
	public String healthcarePetGenetic(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/healthcare/pet-genetic." + getLang();
	}

	@RequestMapping("/diagnosis/liquid-biopsy")
	public String diagnosisLiquidBiopsy(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/diagnosis/liquid-biopsy." + getLang();
	}
	
	// 팝업  
	private List<Long> getExceptPopupBusinessSnList(HttpServletRequest request) {
		try {
			List<Long> snList = new ArrayList<>();

			String exceptPopupSnStr = CookieUtil.getCookie(request, "popup-business-sn-list");
			if (StringUtils.isEmpty(exceptPopupSnStr)) {
				return snList;
			}

			String[] snArr = exceptPopupSnStr.split(",");
			for (String sn : snArr) {
				snList.add(Long.parseLong(sn));
			}
			return snList;
		} catch (Exception e) {
			return new ArrayList<Long>();
		}
	}
}
