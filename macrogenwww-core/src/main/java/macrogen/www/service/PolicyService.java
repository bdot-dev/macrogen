package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.PolicyVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ PolicyService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 10. 오후 5:26:05
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface PolicyService {

	int count(PolicyVo vo) throws Exception;

	List<PolicyVo> list(PolicyVo vo) throws Exception;

	PolicyVo view (PolicyVo vo) throws Exception;

	PolicyVo viewByLangCodeAndPolicyCodeAndPolicyVer(String langCode, String policyCode, int policyVer);

	void insert(PolicyVo vo) throws Exception;

	void delete(PolicyVo vo) throws Exception;

	void update(PolicyVo vo) throws Exception;

	PolicyVo viewByPk(Long policySn) throws Exception;

	PolicyVo last(PolicyVo vo) throws Exception;

	int maxVersion(String langCode, String policyCode)  throws Exception;

	List<PolicyVo> allList(String langCode, String policyCode) throws Exception;
}
