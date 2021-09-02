package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.ThesisVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ ThesisMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:04:51
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface ThesisMapper {
	int count(ThesisVo vo);

	List<ThesisVo> list(ThesisVo vo);

	ThesisVo view (ThesisVo vo);

	Long seq();

	void insert(ThesisVo vo);

	void delete(ThesisVo vo);

	void update(ThesisVo vo);

	void deleteMigratedThesis();

	void migrateThesis(ThesisVo vo);

}
