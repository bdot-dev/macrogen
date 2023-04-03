package macrogen.www.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import macrogen.www.service.MainSomlnkService;
import macrogen.www.vo.MainNttVo;
import macrogen.www.vo.MainPeopleVo;
import macrogen.www.vo.MainSomlnkVo;

@Controller
@RequestMapping("/{langId}/main-new")
public class MainRenewalController extends DefaultController {

	@Autowired
	private MainNttService mainNttService;
	
	@Autowired
	private MainPeopleService mainPeopleService;
	
	@Autowired
	private MainSomlnkService mainSomlnkService;
	
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
		mainPeopleVo.setMode("mode");
		mainPeopleVo.setViewYn("Y");
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

		
		return getDev() + "/main-new/main-new." + getLang();
	}
	
}
