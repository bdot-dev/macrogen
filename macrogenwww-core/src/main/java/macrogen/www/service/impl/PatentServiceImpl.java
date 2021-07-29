package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.PatentMapper;
import macrogen.www.service.PatentService;
import macrogen.www.vo.PatentVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ PatentServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:29:03
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("patentService")
public class PatentServiceImpl extends EgovAbstractServiceImpl implements PatentService {

	@Autowired
	private PatentMapper patentMapper;

	@Override
	public int count(PatentVo vo) throws Exception {
		return patentMapper.count(vo);
	}

	@Override
	public List<PatentVo> list(PatentVo vo) throws Exception {
		return patentMapper.list(vo);
	}

	@Override
	public PatentVo view(PatentVo vo) throws Exception {
		return patentMapper.view(vo);
	}

	@Override
	public void insert(PatentVo vo) throws Exception {
		vo.setPatentSn(patentMapper.seq());
		patentMapper.insert(vo);
	}

	@Override
	public void delete(PatentVo vo) throws Exception {
		patentMapper.delete(vo);
	}

	@Override
	public void update(PatentVo vo) throws Exception {
		patentMapper.update(vo);
	}

}
