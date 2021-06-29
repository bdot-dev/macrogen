package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.BbsCtgryVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ BbsCtgryMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 19. 오후 1:21:09
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface BbsCtgryMapper {

	int count(BbsCtgryVo bbsCtgryVo);

	List<BbsCtgryVo> list(BbsCtgryVo bbsCtgryVo);

	BbsCtgryVo view(BbsCtgryVo nttVo);

	Long seq();

	void insert(BbsCtgryVo bbsCtgryVo);

	void update(BbsCtgryVo bbsCtgryVo);

	void delete(BbsCtgryVo bbsCtgryVo);

}
