package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.EmpaVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ EmpaMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 11. 오후 2:32:32
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface EmpaMapper {

	int count(EmpaVo vo);

	List<EmpaVo> list(EmpaVo vo);

	EmpaVo view (EmpaVo vo);

	Long seq();

	void insert(EmpaVo vo);

	void delete(EmpaVo vo);

	void update(EmpaVo vo);

}
