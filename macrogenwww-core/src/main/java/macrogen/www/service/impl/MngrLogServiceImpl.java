package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MngrLogMapper;
import macrogen.www.service.MngrLogService;
import macrogen.www.vo.MngrLogVo;


@Service("mngrLogService")
public class MngrLogServiceImpl extends EgovAbstractServiceImpl implements MngrLogService {

	@Resource(name="mngrLogMapper")
	private MngrLogMapper mngrLogMapper;

	@Override
	public List<MngrLogVo> list(MngrLogVo logVo) throws Exception {
		return mngrLogMapper.list(logVo);
	}
	
	@Override
	public List<MngrLogVo> listExcel(MngrLogVo logVo) throws Exception {
		return mngrLogMapper.listExcel(logVo);
	}

	@Override
	public void insert(MngrLogVo logVo) throws Exception {
		mngrLogMapper.insert(logVo);
	}

	@Override
	public int count(MngrLogVo logVo) throws Exception {
		return mngrLogMapper.count(logVo);
	}
	
}
