package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.FnlttVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ FnlttMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:18:09
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface FnlttMapper {

	int count(FnlttVo vo);

	List<FnlttVo> list(FnlttVo vo);

	FnlttVo view (FnlttVo vo);

	Long seq();

	void insert(FnlttVo vo);

	void delete(FnlttVo vo);

	void update(FnlttVo vo);
}
