package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.FnlttListVo;
import macrogen.www.vo.FnlttVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ FnlttService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:25:57
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface FnlttService {

	int count(FnlttVo vo) throws Exception;

	List<FnlttVo> list(FnlttVo vo) throws Exception;

	FnlttVo view (FnlttVo vo) throws Exception;

	void insert(FnlttVo vo) throws Exception;

	void delete(FnlttVo vo) throws Exception;

	void update(FnlttVo vo) throws Exception;

	void insertList(FnlttListVo listVo) throws Exception;

	void deleteAll() throws Exception;
}
