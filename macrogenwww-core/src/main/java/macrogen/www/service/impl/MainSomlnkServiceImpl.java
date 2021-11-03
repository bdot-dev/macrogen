package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MainSomlnkMapper;
import macrogen.www.service.MainSomlnkService;
import macrogen.www.vo.MainSomlnkVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ MainSomlnkServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:04:53
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("mainSomlnkService")
public class MainSomlnkServiceImpl extends EgovAbstractServiceImpl implements MainSomlnkService {

	@Autowired
	private MainSomlnkMapper mainSomlnkMapper;

	@Override
	public int count(MainSomlnkVo vo) throws Exception {
		return mainSomlnkMapper.count(vo);
	}

	@Override
	public List<MainSomlnkVo> list(MainSomlnkVo vo) throws Exception {
		return mainSomlnkMapper.list(vo);
	}

	@Override
	public List<MainSomlnkVo> allListByMainSomlnkClCode(String langCode, String somlnkCtgryCode) throws Exception {
		MainSomlnkVo vo = new MainSomlnkVo();
		vo.setLangCode(langCode);
		vo.setSomlnkCtgryCode(somlnkCtgryCode);
		vo.setFirstIndex(-1);
		return mainSomlnkMapper.list(vo);
	}

	@Override
	public MainSomlnkVo view(MainSomlnkVo vo) throws Exception {
		return mainSomlnkMapper.view(vo);
	}

	@Override
	public void insert(MainSomlnkVo vo) throws Exception {
		vo.setMainSomlnkSn(mainSomlnkMapper.seq());
		mainSomlnkMapper.insert(vo);
	}

	@Override
	public void delete(MainSomlnkVo vo) throws Exception {
		mainSomlnkMapper.delete(vo);
	}

	@Override
	public void update(MainSomlnkVo vo) throws Exception {
		mainSomlnkMapper.update(vo);
	}

	@Override
	public MainSomlnkVo viewByPk(Long sn) throws Exception {
		MainSomlnkVo vo = new MainSomlnkVo();
		vo.setMainSomlnkSn(sn);
		return view(vo);
	}

}
