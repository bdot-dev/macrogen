package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.CmpnyhistGroupPhotoVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ CmpnyhistGroupPhotoService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 4:58:57
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface CmpnyhistGroupPhotoService {

	int count(CmpnyhistGroupPhotoVo vo) throws Exception;

	List<CmpnyhistGroupPhotoVo> list(CmpnyhistGroupPhotoVo vo) throws Exception;

	CmpnyhistGroupPhotoVo view (CmpnyhistGroupPhotoVo vo) throws Exception;

	void insert(CmpnyhistGroupPhotoVo vo) throws Exception;

	void delete(CmpnyhistGroupPhotoVo vo) throws Exception;

	void update(CmpnyhistGroupPhotoVo vo) throws Exception;

	CmpnyhistGroupPhotoVo viewByPk(Long cmpnyhistGroupPhotoSn) throws Exception;

	void updateSortOrder(CmpnyhistGroupPhotoVo vo) throws Exception;

	List<CmpnyhistGroupPhotoVo> listByCmpnyhistGroupSn(Long cmpnyhistGroupSn) throws Exception;
}
