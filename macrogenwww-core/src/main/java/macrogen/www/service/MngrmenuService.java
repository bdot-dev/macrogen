package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MngrVo;
import macrogen.www.vo.MngrmenuVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ MngrmenuService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:46:05
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface MngrmenuService {

	MngrmenuVo view(MngrmenuVo mngrmenuVo) throws Exception;

	MngrmenuVo viewByPk(Long menuSn) throws Exception;

	List<MngrmenuVo> list(MngrmenuVo mngrmenuVo) throws Exception;

	MngrmenuVo firstNotEmptyUrl(MngrmenuVo mngrmenuVo, MngrVo loginVo) throws Exception;

	List<MngrmenuVo> tree(MngrmenuVo mngrmenuVo) throws Exception;

	void insert(MngrmenuVo mngrmenuVo) throws Exception;

	void update(MngrmenuVo mngrmenuVo) throws Exception;

	void updateSortOrdr(MngrmenuVo mngrmenuVo) throws Exception;

	void delete(MngrmenuVo mngrmenuVo) throws Exception;

}
