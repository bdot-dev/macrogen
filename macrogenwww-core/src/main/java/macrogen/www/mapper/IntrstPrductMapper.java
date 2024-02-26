package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.IntrstPrductVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ IntrstPrductMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 8. 오전 11:15:20
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface IntrstPrductMapper {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관심 제품 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param intrstPrductVo
	 * @return
	 *
	List<IntrstPrductVo> list(IntrstPrductVo intrstPrductVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 관심 제품 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param intrstPrductVo
	 * @return
	 *
	int count(IntrstPrductVo intrstPrductVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관심 제품 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param intrstPrductVo
	 *
	void insert(IntrstPrductVo intrstPrductVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관심 제품 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param intrstPrductVo
	 *
	void delete(IntrstPrductVo intrstPrductVo);
	*/
}
