package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MainSomlnkVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ MainSomlnkService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:04:11
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface MainSomlnkService {

	int count(MainSomlnkVo vo) throws Exception;

	List<MainSomlnkVo> list(MainSomlnkVo vo) throws Exception;

	List<MainSomlnkVo> allListByMainSomlnkClCode(String langCode, String somlnkCtgryCode) throws Exception;

	MainSomlnkVo view (MainSomlnkVo vo) throws Exception;

	void insert(MainSomlnkVo vo) throws Exception;

	void delete(MainSomlnkVo vo) throws Exception;

	void update(MainSomlnkVo vo) throws Exception;

	MainSomlnkVo viewByPk(Long sn) throws Exception;

}
