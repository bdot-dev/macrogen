package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.PatentVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ PatentMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:04:51
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface PatentMapper {

	int count(PatentVo vo);

	List<PatentVo> list(PatentVo vo);

	PatentVo view (PatentVo vo);

	Long seq();

	void insert(PatentVo vo);

	void delete(PatentVo vo);

	void update(PatentVo vo);
}
