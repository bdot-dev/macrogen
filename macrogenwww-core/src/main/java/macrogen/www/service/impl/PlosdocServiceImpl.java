package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.PlosdocMapper;
import macrogen.www.service.PlosdocService;
import macrogen.www.vo.PlosdocListVo;
import macrogen.www.vo.PlosdocVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ PlosdocServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:31:53
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("plosdocService")
public class PlosdocServiceImpl extends EgovAbstractServiceImpl implements PlosdocService {

	@Autowired
	private PlosdocMapper plosdocMapper;

	@Override
	public int count(PlosdocVo vo) throws Exception {
		return plosdocMapper.count(vo);
	}

	@Override
	public List<PlosdocVo> list(PlosdocVo vo) throws Exception {
		return plosdocMapper.list(vo);
	}

	@Override
	public PlosdocVo view(PlosdocVo vo) throws Exception {
		return plosdocMapper.view(vo);
	}

	@Override
	public void insert(PlosdocVo vo) throws Exception {
		vo.setPlosdocSn(plosdocMapper.seq());
		plosdocMapper.insert(vo);
	}

	@Override
	public void delete(PlosdocVo vo) throws Exception {
		plosdocMapper.delete(vo);
	}

	@Override
	public void update(PlosdocVo vo) throws Exception {
		plosdocMapper.update(vo);
	}

	@Override
	public void insertList(PlosdocListVo listVo) throws Exception {
		// 목록 전체 삭제
		deleteAll();

		// 목록 등록
		if (null != listVo.getPlosdocList() && !listVo.getPlosdocList().isEmpty()) {
			for (PlosdocVo vo : listVo.getPlosdocList()) {
				vo.setUpdtDe(listVo.getListUpdtDe());
				vo.setRegisterSn(listVo.getRegisterSn());
				vo.setUpdusrSn(listVo.getUpdusrSn());
				insert(vo);
			}
		}

	}

	@Override
	public void deleteAll() throws Exception {
		plosdocMapper.deleteAll();
	}
}
