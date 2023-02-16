package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.InvstLogMapper;
import macrogen.www.service.InvstLogService;
import macrogen.www.vo.InvstLogVo;


@Service("invstLogService")
public class InvstLogServiceImpl extends EgovAbstractServiceImpl implements InvstLogService {

	@Resource(name="invstLogMapper")
	private InvstLogMapper invstLogMapper;

	@Override
	public List<InvstLogVo> list(InvstLogVo logVo) throws Exception {
		return invstLogMapper.list(logVo);
	}
	
	@Override
	public List<InvstLogVo> listExcel(InvstLogVo logVo) throws Exception {
		return invstLogMapper.listExcel(logVo);
	}

	@Override
	public void insert(InvstLogVo logVo) throws Exception {
		invstLogMapper.insert(logVo);
	}

	@Override
	public int count(InvstLogVo logVo) throws Exception {
		return invstLogMapper.count(logVo);
	}
	
}
