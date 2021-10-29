package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MainSomlnkVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ MainSomlnkMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:03:41
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface MainSomlnkMapper {
	int count(MainSomlnkVo vo);

	List<MainSomlnkVo> list(MainSomlnkVo vo);

	MainSomlnkVo view (MainSomlnkVo vo);

	Long seq();

	void insert(MainSomlnkVo vo);

	void delete(MainSomlnkVo vo);

	void update(MainSomlnkVo vo);

}
