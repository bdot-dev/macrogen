package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.PatentVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ PatentService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:25:26
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface PatentService {

	int count(PatentVo vo) throws Exception;

	List<PatentVo> list(PatentVo vo) throws Exception;

	PatentVo view (PatentVo vo) throws Exception;

	void insert(PatentVo vo) throws Exception;

	void delete(PatentVo vo) throws Exception;

	void update(PatentVo vo) throws Exception;
}
