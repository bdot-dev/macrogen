package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.AtchVo;
import macrogen.www.vo.SetupVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ SetupService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 12. 오후 4:06:21
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface SetupService {

	int count(SetupVo vo) throws Exception;

	List<SetupVo> list(SetupVo vo) throws Exception;

	SetupVo view (SetupVo vo) throws Exception;

	void insert(SetupVo vo) throws Exception;

	void delete(SetupVo vo) throws Exception;

	void update(SetupVo vo) throws Exception;

	SetupVo viewByPk(String id) throws Exception;

	AtchVo getApplFormWordAtchVo() throws Exception;

	AtchVo getApplFormHwpAtchVo() throws Exception;

	void update(String setupId, String setupValue) throws Exception;
}
