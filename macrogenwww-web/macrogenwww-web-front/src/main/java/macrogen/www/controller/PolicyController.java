package macrogen.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.enums.LangId;
import macrogen.www.enums.Policy;
import macrogen.www.service.PolicyService;
import macrogen.www.vo.PolicyVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ PolicyController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 11. 오후 1:51:32
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/policy")
public class PolicyController extends DefaultController {

	@Autowired
	private PolicyService policyService;

	@RequestMapping("/{policy}")
	public String main(@PathVariable LangId langId,
			@PathVariable Policy policy, Model model) throws Exception {

		PolicyVo vo = new PolicyVo();
		vo.setLangCode(langId.name());
		vo.setPolicyCode(policy.name());
		PolicyVo lastVo = policyService.last(vo);
		if (null == lastVo) {
			return getDev() + "/policy/" + policy.name() + "." + getLang();
		} else {
			return String.format("forward:/%s/policy/%s/%d", langId.name(),
					policy.name(), lastVo.getPolicySn());
		}
	}

	@RequestMapping("/{policy}/{policySn}")
	public String veiw(@PathVariable LangId langId,
			@PathVariable Policy policy, @PathVariable long policySn, Model model) throws Exception {

		PolicyVo resultVo = policyService.viewByPk(policySn);
		model.addAttribute("resultVo", resultVo);

		// 정책목록
		List<PolicyVo> resultList = policyService.allList(langId.name(), policy.name());
		model.addAttribute("resultList", resultList);

		return getDev() + "/policy/" + policy.name() + "." + getLang();
	}

}
