package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.SocialContentsVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ SocialContentsMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:03:41
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface SocialContentsMapper {
	int count(SocialContentsVo vo);

	List<SocialContentsVo> list(SocialContentsVo vo);

	SocialContentsVo view (SocialContentsVo vo);

	Long seq();

	void insert(SocialContentsVo vo);

	void delete(SocialContentsVo vo);

	void update(SocialContentsVo vo);

}
