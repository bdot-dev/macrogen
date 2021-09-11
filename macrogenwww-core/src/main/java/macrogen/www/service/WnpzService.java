package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.WnpzVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ WnpzService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:25:46
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface WnpzService {

	int count(WnpzVo vo) throws Exception;

	List<WnpzVo> list(WnpzVo vo) throws Exception;

	WnpzVo view (WnpzVo vo) throws Exception;

	void insert(WnpzVo vo) throws Exception;

	void delete(WnpzVo vo) throws Exception;

	void update(WnpzVo vo) throws Exception;

	WnpzVo viewByPk(Long sn) throws Exception;

	void migrateAward() throws Exception;

}
