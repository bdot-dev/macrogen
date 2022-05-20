package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import macrogen.www.common.CommonStringUtil;
import macrogen.www.enums.LangId;
import macrogen.www.enums.Policy;
import macrogen.www.service.CodeService;
import macrogen.www.service.PolicyService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.PolicyVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ PolicyController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 10. 오후 6:22:20
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/policy-{policy}")
public class PolicyController {

	@Autowired
	private PolicyService policyService;

	@Autowired
	private CodeService codeService;

	@RequestMapping("/latest")
	public String latest(@PathVariable LangId langId, @PathVariable Policy policy,
			@AuthenticationPrincipal MngrVo mngrVo, Model model) throws Exception {

		PolicyVo vo = new PolicyVo();
		vo.setLangCode(langId.name());
		vo.setPolicyCode(policy.name());
		PolicyVo lastVo = policyService.last(vo);
		if (null == lastVo) {
			return String.format("redirect:/%s/policy-%s/form", langId.name(), policy.name());
		} else {
			return String.format("redirect:/%s/policy-%s/form/%d", langId.name(), policy.name(), lastVo.getPolicySn());
		}

	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId, @PathVariable Policy policy, Model model) throws Exception {
		return "policy/form";
	}

	@RequestMapping("/form/{policySn}")
	public String form(@PathVariable LangId langId, @PathVariable Policy policy, @PathVariable Long policySn, Model model) throws Exception {
		return "policy/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId, @PathVariable Policy policy,
			@RequestBody PolicyVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getPolicySn())) {
			PolicyVo resultVo = new PolicyVo();

			resultVo.setPolicyVer(1 + policyService.maxVersion(langId.name(), policy.name()));

			resultMap.put("resultVo", resultVo);
		} else {
			PolicyVo resultVo = policyService.viewByPk(vo.getPolicySn());
			resultMap.put("resultVo", resultVo);

			// 정책목록
			List<PolicyVo> policyList = policyService.allList(langId.name(), policy.name());
			resultMap.put("policyList", policyList);
		}

		// 코드목록 : 노출여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId, @PathVariable Policy policy,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PolicyVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());
		
		vo.setPolicyCn(CommonStringUtil.replaceEditorTagRev(vo.getPolicyCn()));
		
		if (StringUtils.isEmpty(vo.getPolicySn())) {
			vo.setLangCode(langId.name());
			vo.setPolicyCode(policy.name());
			vo.setPolicyVer(1 + policyService.maxVersion(langId.name(), policy.name()));

			policyService.insert(vo);
		} else {
			policyService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId, @PathVariable Policy policy,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PolicyVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		policyService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}
}
