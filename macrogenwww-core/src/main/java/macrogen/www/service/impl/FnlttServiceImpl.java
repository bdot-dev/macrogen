package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.FnlttMapper;
import macrogen.www.service.FnlttService;
import macrogen.www.vo.FnlttVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ FnlttServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:31:00
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("fnlttService")
public class FnlttServiceImpl extends EgovAbstractServiceImpl implements FnlttService {

	@Autowired
	private FnlttMapper fnlttMapper;

	@Override
	public int count(FnlttVo vo) throws Exception {
		return fnlttMapper.count(vo);
	}

	@Override
	public List<FnlttVo> list(FnlttVo vo) throws Exception {
		return fnlttMapper.list(vo);
	}

	@Override
	public FnlttVo view(FnlttVo vo) throws Exception {
		return fnlttMapper.view(vo);
	}

	@Override
	public void insert(FnlttVo vo) throws Exception {
		vo.setFnlttSn(fnlttMapper.seq());
		fnlttMapper.insert(vo);
	}

	@Override
	public void delete(FnlttVo vo) throws Exception {
		fnlttMapper.delete(vo);
	}

	@Override
	public void update(FnlttVo vo) throws Exception {
		fnlttMapper.update(vo);
	}

}
