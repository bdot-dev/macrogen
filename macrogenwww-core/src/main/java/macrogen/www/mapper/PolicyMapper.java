package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.PolicyVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ PolicyMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 10. 오후 5:25:47
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface PolicyMapper {

	int count(PolicyVo vo);

	List<PolicyVo> list(PolicyVo vo);

	PolicyVo view(PolicyVo vo);

	PolicyVo viewByLangCodeAndPolicyCodeAndPolicyVer(PolicyVo vo);

	Long seq();

	void insert(PolicyVo vo);

	void delete(PolicyVo vo);

	void update(PolicyVo vo);

	int maxVersion(PolicyVo vo);
}
