package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.CmpnyhistGroupVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ CmpnyhistGroupMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 4:58:26
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface CmpnyhistGroupMapper {

	int count(CmpnyhistGroupVo vo);

	List<CmpnyhistGroupVo> list(CmpnyhistGroupVo vo);

	CmpnyhistGroupVo view (CmpnyhistGroupVo vo);

	Long seq();

	void insert(CmpnyhistGroupVo vo);

	void delete(CmpnyhistGroupVo vo);

	void update(CmpnyhistGroupVo vo);
}
