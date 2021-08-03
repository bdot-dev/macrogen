package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.PlosdocVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ PlosdocService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:26:06
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface PlosdocService {

	int count(PlosdocVo vo) throws Exception;

	List<PlosdocVo> list(PlosdocVo vo) throws Exception;

	PlosdocVo view (PlosdocVo vo) throws Exception;

	void insert(PlosdocVo vo) throws Exception;

	void delete(PlosdocVo vo) throws Exception;

	void update(PlosdocVo vo) throws Exception;
}
