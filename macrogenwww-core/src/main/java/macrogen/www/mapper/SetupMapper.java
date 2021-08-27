package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.SetupVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ SetupMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 12. 오후 4:06:01
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface SetupMapper {
	int count(SetupVo vo);

	List<SetupVo> list(SetupVo vo);

	SetupVo view (SetupVo vo);

	void insert(SetupVo vo);

	void delete(SetupVo vo);

	void update(SetupVo vo);

}
