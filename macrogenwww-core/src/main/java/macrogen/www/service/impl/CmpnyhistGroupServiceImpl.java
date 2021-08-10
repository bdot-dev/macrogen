package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.CmpnyhistGroupMapper;
import macrogen.www.service.CmpnyhistGroupService;
import macrogen.www.vo.CmpnyhistGroupVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ CmpnyhistGroupServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 4:59:32
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("cmpnyhistGroupService")
public class CmpnyhistGroupServiceImpl extends EgovAbstractServiceImpl implements CmpnyhistGroupService {

	@Autowired
	private CmpnyhistGroupMapper cmpnyhistGroupMapper;

	@Override
	public int count(CmpnyhistGroupVo vo) throws Exception {
		return cmpnyhistGroupMapper.count(vo);
	}

	@Override
	public List<CmpnyhistGroupVo> list(CmpnyhistGroupVo vo) throws Exception {
		return cmpnyhistGroupMapper.list(vo);
	}

	@Override
	public CmpnyhistGroupVo view(CmpnyhistGroupVo vo) throws Exception {
		return cmpnyhistGroupMapper.view(vo);
	}

	@Override
	public void insert(CmpnyhistGroupVo vo) throws Exception {
		vo.setCmpnyhistGroupSn(cmpnyhistGroupMapper.seq());
		cmpnyhistGroupMapper.insert(vo);
	}

	@Override
	public void delete(CmpnyhistGroupVo vo) throws Exception {
		cmpnyhistGroupMapper.delete(vo);
	}

	@Override
	public void update(CmpnyhistGroupVo vo) throws Exception {
		cmpnyhistGroupMapper.update(vo);
	}

	@Override
	public CmpnyhistGroupVo viewByPk(Long cmpnyhistGroupSn) throws Exception {
		CmpnyhistGroupVo vo = new CmpnyhistGroupVo();
		vo.setCmpnyhistGroupSn(cmpnyhistGroupSn);
		return view(vo);
	}

	@Override
	public List<CmpnyhistGroupVo> allList() throws Exception {
		CmpnyhistGroupVo vo = new CmpnyhistGroupVo();
		vo.setFirstIndex(-1);
		return cmpnyhistGroupMapper.list(vo);
	}
}
