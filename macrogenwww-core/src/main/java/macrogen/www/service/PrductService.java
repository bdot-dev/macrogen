package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.PrductVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ PrductService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 12. 4. 오전 10:17:18
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface PrductService {

	List<PrductVo> list(PrductVo prductVo) throws Exception;

	int count(PrductVo prductVo) throws Exception;

	PrductVo view(PrductVo prductVo) throws Exception;

	void insert(PrductVo prductVo) throws Exception;

	void update(PrductVo prductVo) throws Exception;

	void delete(PrductVo prductVo) throws Exception;

	void updateSortOrder(PrductVo prductVo) throws Exception;

	void updateExpsrYn(PrductVo prductVo) throws Exception;

}
