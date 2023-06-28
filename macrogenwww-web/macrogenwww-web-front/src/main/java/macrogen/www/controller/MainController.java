package macrogen.www.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import macrogen.www.service.MainNttService;
import macrogen.www.service.MainPeopleService;
import macrogen.www.service.MainSomlnkService;
import macrogen.www.service.NttService;
import macrogen.www.service.PopupService;
import macrogen.www.vo.MainNttVo;
import macrogen.www.vo.MainPeopleVo;
import macrogen.www.vo.MainSomlnkVo;
import macrogen.www.vo.NttVo;
import macrogen.www.vo.PopupVo;

@Controller
@RequestMapping("/{langId}/main")
public class MainController extends DefaultController {

	@Autowired
	private MainNttService mainNttService;
	
	@Autowired 
	private MainPeopleService mainPeopleService;
	
	@Autowired
	private MainSomlnkService mainSomlnkService;
	
	@Autowired
	private PopupService popupService;
	
	@RequestMapping("")
	public String main(@PathVariable LangId langId, Model model,
			HttpServletRequest request) throws Exception {
		
		// 메인 배너
		MainNttVo mainBannerVo = new MainNttVo();
		mainBannerVo.setLangCode(langId.name());
		mainBannerVo.setMainBbsId("banner"); 
		mainBannerVo.setFirstIndex(0);		
		mainBannerVo.setExpsrYn("Y");
		mainBannerVo.setOrderBy("expsr_prty_asc");
		mainBannerVo.setRecordCountPerPage(999);
		
		
		List<MainNttVo> mainBannerList = mainNttService.list(mainBannerVo);	
		model.addAttribute("mainBannerList", mainBannerList);
		
		
		// 피플 관리 
		MainPeopleVo mainPeopleVo = new MainPeopleVo();
		mainPeopleVo.setLangCode(langId.name());
		mainPeopleVo.setFirstIndex(0);		
		mainPeopleVo.setMode("main");
		mainPeopleVo.setSearchUseYn("Y");
		mainPeopleVo.setRecordCountPerPage(5);
								
		
		List<MainPeopleVo> mainPeopleList = mainPeopleService.list(mainPeopleVo);
		
		model.addAttribute("mainPeopleList", mainPeopleList);
		
		// 비즈니스 카드
		MainNttVo mainBusinessVo = new MainNttVo();
		mainBusinessVo.setLangCode(langId.name());
		mainBusinessVo.setMainBbsId("business");
		mainBusinessVo.setFirstIndex(0);
		mainBannerVo.setExpsrYn("Y");
		mainBusinessVo.setOrderBy("expsr_prty_asc");
		mainBusinessVo.setRecordCountPerPage(999);
		
		List<MainNttVo> mainBusinessList = mainNttService.list(mainBusinessVo);
		model.addAttribute("mainBusinessList", mainBusinessList);
		
		
		// 뉴스&이벤트 관리
		MainSomlnkVo somlnkVo = new MainSomlnkVo();
		
		somlnkVo.setBrdid("news");
		somlnkVo.setOrderBy("regist_dt_desc");
		
		somlnkVo.setLangCode(langId.name());
		somlnkVo.setFirstIndex(0);
		somlnkVo.setRecordCountPerPage(999);
		
		
		Date now = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String nowDt = df.format(now);
		somlnkVo.setNowDt(df.parse(nowDt));

		List<MainSomlnkVo> mainSomlnkList = mainSomlnkService.list(somlnkVo);
		model.addAttribute("mainSomlnkList", mainSomlnkList);
		
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
			List<Long> exceptPopupSnList = getExceptPopupSnList(request);
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
		
		
		return getDev() + "/main/main." + getLang();
	}
	
	// 팝업  
	private List<Long> getExceptPopupSnList(HttpServletRequest request) {
		try {
			List<Long> snList = new ArrayList<>();

			String exceptPopupSnStr = CookieUtil.getCookie(request, "popup-sn-list");
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
