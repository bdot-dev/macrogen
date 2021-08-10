package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.CmpnyhistGroupPhotoVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ CmpnyhistGroupPhotoMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 4:58:38
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface CmpnyhistGroupPhotoMapper {

	int count(CmpnyhistGroupPhotoVo vo);

	List<CmpnyhistGroupPhotoVo> list(CmpnyhistGroupPhotoVo vo);

	CmpnyhistGroupPhotoVo view (CmpnyhistGroupPhotoVo vo);

	Long seq();

	void insert(CmpnyhistGroupPhotoVo vo);

	void delete(CmpnyhistGroupPhotoVo vo);

	void update(CmpnyhistGroupPhotoVo vo);

	void updateSortOrder(CmpnyhistGroupPhotoVo vo);
}
