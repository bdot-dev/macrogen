package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.CmpnyhistVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ CmpnyhistMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:04:51
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface CmpnyhistMapper {

	int count(CmpnyhistVo vo);

	List<CmpnyhistVo> list(CmpnyhistVo vo);

	CmpnyhistVo view (CmpnyhistVo vo);

	Long seq();

	void insert(CmpnyhistVo vo);

	void delete(CmpnyhistVo vo);

	void update(CmpnyhistVo vo);

}
