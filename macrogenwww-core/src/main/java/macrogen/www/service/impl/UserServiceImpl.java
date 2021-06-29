package macrogen.www.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.UserMapper;
import macrogen.www.service.UserService;
import macrogen.www.vo.UserVo;

@Service("userService")
public class UserServiceImpl extends EgovAbstractServiceImpl implements UserService {

	@Resource(name="userMapper")
	private UserMapper userMapper;

	@Override
	public void insert(UserVo userVo) throws Exception{
		userMapper.insert(userVo);
	}

	@Override
	public void update(UserVo userVo) throws Exception{
		userMapper.update(userVo);
	}

	@Override
	public void delete(UserVo userVo) throws Exception{
		userMapper.delete(userVo);
	}

	@Override
	public void increasePasswordInputErrorCo(UserVo userVo) throws Exception {
		userMapper.increasePasswordInputErrorCo(userVo);
	}

	@Override
	public void initPasswordInputErrorCo(UserVo userVo) throws Exception {
		userMapper.initPasswordInputErrorCo(userVo);
	}

	@Override
	public UserVo view(UserVo userVo) throws Exception {
		return userMapper.view(userVo);
	}

	@Override
	public UserVo viewByLoginId(String loginId) throws Exception {
		return userMapper.viewByLoginId(loginId);
	}

	@Override
	public void increaseLoginCo(UserVo userVo) throws Exception {
		userMapper.increaseLoginCo(userVo);
	}


}