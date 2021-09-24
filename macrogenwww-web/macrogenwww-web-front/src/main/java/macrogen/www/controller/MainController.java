package macrogen.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.enums.LangId;
import macrogen.www.service.NttService;
import macrogen.www.vo.NttVo;

@Controller
@RequestMapping("/{langId}/main")
public class MainController extends DefaultController {

	@Autowired
	private NttService nttService;

	@RequestMapping("")
	public String main(@PathVariable LangId langId, Model model) throws Exception {

		NttVo nttVo = new NttVo();
		nttVo.setLangCode(langId.name());
		nttVo.setBbsId("press-release");
		nttVo.setFirstIndex(0);
		nttVo.setRecordCountPerPage(3);
		List<NttVo> newsList = nttService.list(nttVo);
		model.addAttribute("newsList", newsList);

		model.addAttribute("main_yn", "Y");

		return getDev() + "/main/main." + getLang();
	}

}
