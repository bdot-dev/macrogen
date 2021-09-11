package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.CmpnyhistVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ CmpnyhistService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:19:45
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface CmpnyhistService {

	int count(CmpnyhistVo vo) throws Exception;

	List<CmpnyhistVo> list(CmpnyhistVo vo) throws Exception;

	CmpnyhistVo view (CmpnyhistVo vo) throws Exception;

	void insert(CmpnyhistVo vo) throws Exception;

	void delete(CmpnyhistVo vo) throws Exception;

	void update(CmpnyhistVo vo) throws Exception;

	CmpnyhistVo viewByPk(Long cmpnyhistSn) throws Exception;

	void migrateHistory() throws Exception;
}
