package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MainPeopleVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ MainPeopleService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2023. 03. 03. 오전 11:48:52
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface MainPeopleService {

	int count(MainPeopleVo vo) throws Exception;

	List<MainPeopleVo> list(MainPeopleVo vo) throws Exception;

	MainPeopleVo view (MainPeopleVo vo) throws Exception;

	void insert(MainPeopleVo vo) throws Exception;

	void delete(MainPeopleVo vo) throws Exception;

	void update(MainPeopleVo vo) throws Exception;

	MainPeopleVo viewByPk(Long sn) throws Exception;

}
