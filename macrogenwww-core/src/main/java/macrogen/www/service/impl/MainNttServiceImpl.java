package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MainNttMapper;
import macrogen.www.service.MainNttService;

import macrogen.www.vo.MainNttVo;

@Service("mainNttService")
public class MainNttServiceImpl extends EgovAbstractServiceImpl implements MainNttService {
	
	@Resource(name="mainNttMapper")
	private MainNttMapper mainNttMapper;
	
	@Override
	public List<MainNttVo> list(MainNttVo mainNttVo) throws Exception {
		
		List<MainNttVo> resultList = mainNttMapper.list(mainNttVo);
		
		return resultList;
	}
	
	@Override
	public int count(MainNttVo mainNttVo) throws Exception {
		return mainNttMapper.count(mainNttVo);
	}
	
	@Override
	public void insert(MainNttVo mainNttVo) {
		mainNttVo.setMainNttSn(mainNttMapper.seq());
		mainNttMapper.insert(mainNttVo);
		
		// 재등록 : 게시물_첨부 목록
		
	}
	
	@Override
	public void update(MainNttVo mainNttVo) {
		mainNttMapper.update(mainNttVo);
	}
	
	@Override
	public void delete(MainNttVo mainNttVo) {
		
		// 게시물 삭제
		mainNttMapper.delete(mainNttVo);
	}
	
	@Override 
	public void updateExpsrPrty(MainNttVo mainNttVo) throws Exception {
		mainNttMapper.updateExpsrPrty(mainNttVo);
	}
	 
	@Override
	public MainNttVo viewByPk(Long mainNttSn) throws Exception {
		MainNttVo resultVo = new MainNttVo();
		resultVo.setMainNttSn(mainNttSn);
		return view(resultVo);
	} 
	
	@Override
	public MainNttVo view(MainNttVo mainNttVo) throws Exception {
		return mainNttMapper.view(mainNttVo);
	}
}
