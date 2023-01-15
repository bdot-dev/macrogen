package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.LoginLogMapper;
import macrogen.www.service.LoginLogService;
import macrogen.www.vo.LoginLogVo;


@Service("loginLogService")
public class LoginLogServiceImpl extends EgovAbstractServiceImpl implements LoginLogService {

	@Resource(name="loginLogMapper")
	private LoginLogMapper loginLogMapper;

	@Override
	public List<LoginLogVo> list(LoginLogVo logVo) throws Exception {
		return loginLogMapper.list(logVo);
	}
	
	@Override
	public List<LoginLogVo> listExcel(LoginLogVo logVo) throws Exception {
		return loginLogMapper.listExcel(logVo);
	}

	@Override
	public void insert(LoginLogVo logVo) throws Exception {
		loginLogMapper.insert(logVo);
	}

	@Override
	public int count(LoginLogVo logVo) throws Exception {
		return loginLogMapper.count(logVo);
	}
	
}
