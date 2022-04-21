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
import macrogen.www.service.MainSomlnkService;
import macrogen.www.service.NttService;
import macrogen.www.service.PopupService;
import macrogen.www.vo.MainSomlnkVo;
import macrogen.www.vo.NttVo;
import macrogen.www.vo.PopupVo;

@Controller
@RequestMapping("/{langId}/main")
public class MainController extends DefaultController {

	@Autowired
	private NttService nttService;

	@Autowired
	private MainSomlnkService mainSomlnkService;

	@Autowired
	private PopupService popupService;

	@RequestMapping("")
	public String main(@PathVariable LangId langId, Model model,
			HttpServletRequest request) throws Exception {

		NttVo nttVo = new NttVo();
		nttVo.setLangCode(langId.name());
		nttVo.setBbsId("press-release");
		nttVo.setFirstIndex(0);
		nttVo.setRecordCountPerPage(3);
		List<NttVo> newsList = nttService.list(nttVo);	
		model.addAttribute("newsList", newsList);

		// Social Media 목록
		MainSomlnkVo somlnkVo = new MainSomlnkVo();
		somlnkVo.setLangCode(langId.name());
		somlnkVo.setFirstIndex(0);
		somlnkVo.setRecordCountPerPage(20);
		List<MainSomlnkVo> mainSomlnkList = mainSomlnkService.list(somlnkVo);
		model.addAttribute("mainSomlnkList", mainSomlnkList);

		model.addAttribute("main_yn", "Y");

		// 메인화면 공지사항
		PopupVo popupVo = new PopupVo();
		popupVo.setLangCode(langId.name());
		popupVo.setFirstIndex(-1);
		popupVo.setExposed(true);
		//popupVo.setOrderBy("sort_asc");
		popupVo.setOrderBy("sort_desc");

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
