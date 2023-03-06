package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MngrAuthLogMapper;
import macrogen.www.service.MngrAuthLogService;
import macrogen.www.vo.MngrAuthLogVo;


@Service("mngrAuthLogService")
public class MngrAuthLogServiceImpl extends EgovAbstractServiceImpl implements MngrAuthLogService {

	@Resource(name="mngrAuthLogMapper")
	private MngrAuthLogMapper mngrAuthLogMapper;

	@Override
	public List<MngrAuthLogVo> list(MngrAuthLogVo logVo) throws Exception {
		return mngrAuthLogMapper.list(logVo);
	}
	
	@Override
	public List<MngrAuthLogVo> listExcel(MngrAuthLogVo logVo) throws Exception {
		return mngrAuthLogMapper.listExcel(logVo);
	}
	
	@Override
	public MngrAuthLogVo view(MngrAuthLogVo logVo) throws Exception {
		return mngrAuthLogMapper.view(logVo);
	}
	
	@Override
	public MngrAuthLogVo viewRef(MngrAuthLogVo logVo) throws Exception {
		return mngrAuthLogMapper.viewRef(logVo);
	}
	
	@Override
	public List<MngrAuthLogVo> viewMenuList(MngrAuthLogVo logVo) throws Exception {
		return mngrAuthLogMapper.viewMenuList(logVo);
	}

	@Override
	public List<MngrAuthLogVo> viewUrlList(MngrAuthLogVo logVo) throws Exception {
		return mngrAuthLogMapper.viewUrlList(logVo);
	}

	@Override
	public void insert(MngrAuthLogVo logVo) throws Exception {
		mngrAuthLogMapper.insert(logVo);
	}
	
	@Override
	public void insertMngrMenu(MngrAuthLogVo logVo) throws Exception {
		mngrAuthLogMapper.insertMngrMenu(logVo);
	}

	@Override
	public void insertMngrUrl(MngrAuthLogVo logVo) throws Exception {
		mngrAuthLogMapper.insertMngrUrl(logVo);
	}

	@Override
	public int count(MngrAuthLogVo logVo) throws Exception {
		return mngrAuthLogMapper.count(logVo);
	}
	
}
