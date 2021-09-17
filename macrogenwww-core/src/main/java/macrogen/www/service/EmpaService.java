package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.EmpaVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ EmpaService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 11. 오후 2:32:51
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface EmpaService {

	int count(EmpaVo vo) throws Exception;

	List<EmpaVo> list(EmpaVo vo) throws Exception;

	EmpaVo view (EmpaVo vo) throws Exception;

	void insert(EmpaVo vo) throws Exception;

	void delete(EmpaVo vo) throws Exception;

	void update(EmpaVo vo) throws Exception;

	EmpaVo viewByPk(Long Sn) throws Exception;

	void migrateEmpBoard() throws Exception;

	EmpaVo prev(EmpaVo listVo) throws Exception;

	EmpaVo next(EmpaVo listVo) throws Exception;
}
