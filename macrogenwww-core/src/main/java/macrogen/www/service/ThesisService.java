package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.ThesisVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ ThesisService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:25:39
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface ThesisService {

	int count(ThesisVo vo) throws Exception;

	List<ThesisVo> list(ThesisVo vo) throws Exception;

	ThesisVo view (ThesisVo vo) throws Exception;

	void insert(ThesisVo vo) throws Exception;

	void delete(ThesisVo vo) throws Exception;

	void update(ThesisVo vo) throws Exception;

	ThesisVo viewByPk(Long thesisSn) throws Exception;

	void migrateThesis() throws Exception;
}
