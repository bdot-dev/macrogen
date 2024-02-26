package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.IntrstPrductVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ IntrstPrductService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 8. 오전 11:22:06
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface IntrstPrductService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관심 제품 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param intrstPrductVo
	 * @return
	 * @throws Exception
	 *
	List<IntrstPrductVo> list(IntrstPrductVo intrstPrductVo) throws Exception;

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 관심 제품 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param intrstPrductVo
	 * @return
	 * @throws Exception
	 *
	int count(IntrstPrductVo intrstPrductVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관심 제품 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param intrstPrductVo
	 * @throws Exception
	 *
	void insert(IntrstPrductVo intrstPrductVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관심 제품 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param intrstPrductVo
	 * @throws Exception
	 *
	void delete(IntrstPrductVo intrstPrductVo) throws Exception;
	*/
}
