package macrogen.www.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.enums.LangId;
import macrogen.www.service.MainNttService;
import macrogen.www.service.MainPeopleService;
import macrogen.www.vo.MainNttVo;
import macrogen.www.vo.MainPeopleVo;

@Controller
@RequestMapping("/{langId}/main-new")
public class MainRenewalController extends DefaultController {

	@Autowired
	private MainNttService mainNttService;
	
	@Autowired
	private MainPeopleService mainPeopleService;
	
	@RequestMapping("")
	public String main(@PathVariable LangId langId, Model model,
			HttpServletRequest request) throws Exception {
		
		// 메인 배너
		MainNttVo mainBannerVo = new MainNttVo();
		mainBannerVo.setLangCode(langId.name());
		mainBannerVo.setMainBbsId("banner");
		mainBannerVo.setFirstIndex(0);		
		mainBannerVo.setOrderBy("expsr_prty_asc");
		
		List<MainNttVo> mainBannerList = mainNttService.list(mainBannerVo);
		
		model.addAttribute("mainBannerList", mainBannerList);
		
		
		
		// 피플 관리
		MainPeopleVo mainPeopleVo = new MainPeopleVo();
		mainPeopleVo.setLangCode(langId.name());
		mainPeopleVo.setFirstIndex(0);
		mainPeopleVo.setMode("main");
								
		List<MainPeopleVo> mainPeopleList = mainPeopleService.list(mainPeopleVo);
		
		model.addAttribute("mainPeopleList", mainPeopleList);
		model.addAttribute("resultVo", mainPeopleVo);


		
		// 비즈니스 카드
		MainNttVo mainBusinessVo = new MainNttVo();
		mainBusinessVo.setLangCode(langId.name());
		mainBusinessVo.setMainBbsId("business");
		mainBusinessVo.setFirstIndex(0);
		mainBusinessVo.setOrderBy("expsr_prty_asc");
		
		List<MainNttVo> mainBusinessList = mainNttService.list(mainBusinessVo);
		model.addAttribute("mainBusinessList", mainBusinessList);
				
		return getDev() + "/main-new/main-new." + getLang();
	}
	
}
