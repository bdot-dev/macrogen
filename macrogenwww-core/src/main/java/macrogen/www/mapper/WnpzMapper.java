package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.WnpzVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ WnpzMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:18:00
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface WnpzMapper {
	int count(WnpzVo vo);

	List<WnpzVo> list(WnpzVo vo);

	WnpzVo view (WnpzVo vo);

	Long seq();

	void insert(WnpzVo vo);

	void delete(WnpzVo vo);

	void update(WnpzVo vo);

	void deleteMigratedAward();

	void migrateAward(WnpzVo migParam);

}
