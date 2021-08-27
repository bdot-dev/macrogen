package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.PlosdocVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ PlosdocMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:18:17
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface PlosdocMapper {

	int count(PlosdocVo vo);

	List<PlosdocVo> list(PlosdocVo vo);

	PlosdocVo view (PlosdocVo vo);

	Long seq();

	void insert(PlosdocVo vo);

	void delete(PlosdocVo vo);

	void update(PlosdocVo vo);

	void deleteAll();
}
