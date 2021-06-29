package macrogen.www.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.service.MngrmenuService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.MngrmenuVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ IncController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오후 3:10:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/inc")
public class IncController {

	@Resource(name="mngrmenuService")
	private MngrmenuService mngrmenuService;

	/**
	 * <pre>
	 * header
	 * 1. 개요   : 공통 상단
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/header")
	public String header(@AuthenticationPrincipal MngrVo loginVo,
			Model model) throws Exception {

		MngrmenuVo menuVo = new MngrmenuVo();
		menuVo.setFirstIndex(-1);
		menuVo.setRoleId(loginVo.getRoleId());
		menuVo.setTopmostYn("Y");
		List<MngrmenuVo> topmenuList = mngrmenuService.list(menuVo);
		model.addAttribute("topmenuList", topmenuList);

		return "inc/header";
	}

	/**
	 * <pre>
	 * left
	 * 1. 개요   : 공통 왼쪽 메뉴
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param model
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/left")
	public String left(@AuthenticationPrincipal MngrVo loginVo,
			Model model, HttpSession session) throws Exception {

		MngrmenuVo selectedMenuVo = (MngrmenuVo) session.getAttribute("selected_menu_vo");
		if (null != selectedMenuVo && !StringUtils.isEmpty(selectedMenuVo.getTopMenuSn())) {
			MngrmenuVo menuVo = new MngrmenuVo();
			menuVo.setFirstIndex(-1);
			menuVo.setRoleId(loginVo.getRoleId());
			menuVo.setUpperMenuSn(selectedMenuVo.getTopMenuSn());
			// List<MngrmenuVo> leftmenuList = mngrmenuService.list(menuVo);
			List<MngrmenuVo> leftmenuList =
					mngrmenuService.tree(menuVo);

			model.addAttribute("leftmenuList", leftmenuList);
		}

		return "inc/left";
	}

	/**
	 * <pre>
	 * footer
	 * 1. 개요   : 공통 푸터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/footer")
	public String footer() throws Exception {
		return "inc/footer";
	}
}
