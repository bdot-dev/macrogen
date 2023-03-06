package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MainPeopleMapper;
import macrogen.www.service.MainPeopleService;
import macrogen.www.vo.MainPeopleVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ MainPeopleServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2023. 03. 03. 오전 11:48:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("mainPeopleService")
public class MainPeopleServiceImpl extends EgovAbstractServiceImpl implements MainPeopleService {

	@Autowired
	private MainPeopleMapper mainPeopleMapper;

	@Override
	public int count(MainPeopleVo vo) throws Exception {
		return mainPeopleMapper.count(vo);
	}

	@Override
	public List<MainPeopleVo> list(MainPeopleVo vo) throws Exception {
		return mainPeopleMapper.list(vo);
	}

	@Override
	public MainPeopleVo view(MainPeopleVo vo) throws Exception {
		return mainPeopleMapper.view(vo);
	}

	@Override
	public void insert(MainPeopleVo vo) throws Exception {
		vo.setPeopleSn(mainPeopleMapper.seq());
		mainPeopleMapper.insert(vo);
	}

	@Override
	public void delete(MainPeopleVo vo) throws Exception {
		mainPeopleMapper.delete(vo);
	}

	@Override
	public void update(MainPeopleVo vo) throws Exception {
		mainPeopleMapper.update(vo);
	}

	@Override
	public MainPeopleVo viewByPk(Long sn) throws Exception {
		MainPeopleVo vo = new MainPeopleVo();
		vo.setPeopleSn(sn);
		return view(vo);
	}

}
