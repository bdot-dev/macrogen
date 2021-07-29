package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.ThesisMapper;
import macrogen.www.service.ThesisService;
import macrogen.www.vo.ThesisVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ ThesisServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:29:31
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("thesisService")
public class ThesisServiceImpl extends EgovAbstractServiceImpl implements ThesisService {

	@Autowired
	private ThesisMapper thesisMapper;

	@Override
	public int count(ThesisVo vo) throws Exception {
		return thesisMapper.count(vo);
	}

	@Override
	public List<ThesisVo> list(ThesisVo vo) throws Exception {
		return thesisMapper.list(vo);
	}

	@Override
	public ThesisVo view(ThesisVo vo) throws Exception {
		return thesisMapper.view(vo);
	}

	@Override
	public void insert(ThesisVo vo) throws Exception {
		vo.setThesisSn(thesisMapper.seq());
		thesisMapper.insert(vo);
	}

	@Override
	public void delete(ThesisVo vo) throws Exception {
		thesisMapper.delete(vo);
	}

	@Override
	public void update(ThesisVo vo) throws Exception {
		thesisMapper.update(vo);
	}


}
