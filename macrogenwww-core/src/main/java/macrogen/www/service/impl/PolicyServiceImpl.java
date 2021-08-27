package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.PolicyMapper;
import macrogen.www.service.PolicyService;
import macrogen.www.vo.PolicyVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ PolicyServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 10. 오후 5:26:37
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("policyService")
public class PolicyServiceImpl extends EgovAbstractServiceImpl implements PolicyService {

	@Autowired
	private PolicyMapper policyMapper;

	@Override
	public int count(PolicyVo vo) throws Exception {
		return policyMapper.count(vo);
	}

	@Override
	public List<PolicyVo> list(PolicyVo vo) throws Exception {
		return policyMapper.list(vo);
	}

	@Override
	public PolicyVo view(PolicyVo vo) throws Exception {
		return policyMapper.view(vo);
	}

	@Override
	public void insert(PolicyVo vo) throws Exception {
		vo.setPolicySn(policyMapper.seq());
		policyMapper.insert(vo);
	}

	@Override
	public void delete(PolicyVo vo) throws Exception {
		policyMapper.delete(vo);
	}

	@Override
	public void update(PolicyVo vo) throws Exception {
		policyMapper.update(vo);
	}

	@Override
	public PolicyVo viewByPk(Long policySn) throws Exception {
		PolicyVo vo = new PolicyVo();
		vo.setPolicySn(policySn);
		return view(vo);
	}

	@Override
	public PolicyVo viewByLangCodeAndPolicyCodeAndPolicyVer(String langCode, String policyCode, int policyVer) {
		PolicyVo vo = new PolicyVo();
		vo.setLangCode(langCode);
		vo.setPolicyCode(policyCode);
		vo.setPolicyVer(policyVer);
		return policyMapper.viewByLangCodeAndPolicyCodeAndPolicyVer(vo);
	}

	@Override
	public PolicyVo last(PolicyVo vo) throws Exception {
		vo.setFirstIndex(0);
		vo.setRecordCountPerPage(1);
		List<PolicyVo> resultList = policyMapper.list(vo);
		if (null != resultList && !resultList.isEmpty()) {
			return resultList.get(0);
		} else {
			return null;
		}
	}

	@Override
	public int maxVersion(String langCode, String policyCode) throws Exception {
		PolicyVo vo = new PolicyVo();
		vo.setLangCode(langCode);
		vo.setPolicyCode(policyCode);
		return policyMapper.maxVersion(vo);
	}

	@Override
	public List<PolicyVo> allList(String langCode, String policyCode) throws Exception {
		PolicyVo vo = new PolicyVo();
		vo.setLangCode(langCode);
		vo.setPolicyCode(policyCode);
		vo.setFirstIndex(-1);
		return policyMapper.list(vo);
	}

}
