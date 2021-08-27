package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.CmpnyhistGroupVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ CmpnyhistGroupService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 4:58:48
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface CmpnyhistGroupService {

	int count(CmpnyhistGroupVo vo) throws Exception;

	List<CmpnyhistGroupVo> list(CmpnyhistGroupVo vo) throws Exception;

	CmpnyhistGroupVo view (CmpnyhistGroupVo vo) throws Exception;

	void insert(CmpnyhistGroupVo vo) throws Exception;

	void delete(CmpnyhistGroupVo vo) throws Exception;

	void update(CmpnyhistGroupVo vo) throws Exception;

	CmpnyhistGroupVo viewByPk(Long cmpnyhistGroupSn) throws Exception;

	List<CmpnyhistGroupVo> allList() throws Exception;

}
