package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.CmpnyhistGroupPhotoMapper;
import macrogen.www.service.CmpnyhistGroupPhotoService;
import macrogen.www.vo.CmpnyhistGroupPhotoVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ CmpnyhistGroupPhotoServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 4:59:57
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("cmpnyhistGroupPhotoService")
public class CmpnyhistGroupPhotoServiceImpl extends EgovAbstractServiceImpl implements CmpnyhistGroupPhotoService {

	@Autowired
	private CmpnyhistGroupPhotoMapper cmpnyhistGroupPhotoMapper;

	@Override
	public int count(CmpnyhistGroupPhotoVo vo) throws Exception {
		return cmpnyhistGroupPhotoMapper.count(vo);
	}

	@Override
	public List<CmpnyhistGroupPhotoVo> list(CmpnyhistGroupPhotoVo vo) throws Exception {
		return cmpnyhistGroupPhotoMapper.list(vo);
	}

	@Override
	public CmpnyhistGroupPhotoVo view(CmpnyhistGroupPhotoVo vo) throws Exception {
		return cmpnyhistGroupPhotoMapper.view(vo);
	}

	@Override
	public void insert(CmpnyhistGroupPhotoVo vo) throws Exception {
		vo.setCmpnyhistGroupPhotoSn(cmpnyhistGroupPhotoMapper.seq());
		cmpnyhistGroupPhotoMapper.insert(vo);
	}

	@Override
	public void delete(CmpnyhistGroupPhotoVo vo) throws Exception {
		cmpnyhistGroupPhotoMapper.delete(vo);
	}

	@Override
	public void update(CmpnyhistGroupPhotoVo vo) throws Exception {
		cmpnyhistGroupPhotoMapper.update(vo);
	}

	@Override
	public CmpnyhistGroupPhotoVo viewByPk(Long cmpnyhistGroupPhotoSn) throws Exception {
		CmpnyhistGroupPhotoVo vo = new CmpnyhistGroupPhotoVo();
		vo.setCmpnyhistGroupPhotoSn(cmpnyhistGroupPhotoSn);
		return view(vo);
	}

	@Override
	public void updateSortOrder(CmpnyhistGroupPhotoVo vo) throws Exception {
		cmpnyhistGroupPhotoMapper.updateSortOrder(vo);

	}

}
