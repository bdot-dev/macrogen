package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.enums.Codes.UserSeCode;
import macrogen.www.mapper.MngrMapper;
import macrogen.www.mapper.UserMapper;
import macrogen.www.service.MngrService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.UserVo;

@Service("mngrService")
public class MngrServiceImpl extends EgovAbstractServiceImpl implements MngrService {

	@Resource(name="userMapper")
	private UserMapper userMapper;

	@Resource(name="mngrMapper")
	private MngrMapper mngrMapper;

	@Override
	public MngrVo view(MngrVo mngrVo) throws Exception {
		return mngrMapper.view(mngrVo);
	}

	@Override
	public MngrVo viewByLoginId(MngrVo mngrVo) throws Exception {
		return mngrMapper.viewByLoginId(mngrVo);
	}

	@Override
	public List<MngrVo> list(MngrVo mngrVo) throws Exception {
		return mngrMapper.list(mngrVo);
	}

	@Override
	public int count(MngrVo mngrVo) throws Exception {
		return mngrMapper.count(mngrVo);
	}

	@Override
	public void insert(MngrVo mngrVo) throws Exception {

		Long userSn = userMapper.seq();

		UserVo userVo = new UserVo();
		userVo.setUserSn(userSn);
		userVo.setUserNm(mngrVo.getUserNm());
		userVo.setLoginId(mngrVo.getLoginId());
		userVo.setLoginPassword(mngrVo.getLoginPassword());
		userVo.setEmail(mngrVo.getEmail());
		userVo.setTelno(mngrVo.getTelno());
		userVo.setMbtlnum(mngrVo.getMbtlnum());
		userVo.setUserSeCode(UserSeCode.MNGR);
		userVo.setRegisterSn(mngrVo.getRegisterSn());
		userVo.setUpdusrSn(mngrVo.getUpdusrSn());
		userVo.setPasswordInitlYn(mngrVo.getPasswordInitlYn());
		userMapper.insert(userVo);

		MngrVo insertVo = new MngrVo();
		insertVo.setUserSn(userVo.getUserSn());
		insertVo.setRoleId(mngrVo.getRoleId());
		insertVo.setRegisterSn(mngrVo.getRegisterSn());
		insertVo.setUpdusrSn(mngrVo.getUpdusrSn());
		mngrMapper.insert(insertVo);

	}

	@Override
	public void update(MngrVo mngrVo) throws Exception{

		UserVo userVo = new UserVo();
		userVo.setUserSn(mngrVo.getUserSn());
		userVo.setUserNm(mngrVo.getUserNm());
		userVo.setLoginPassword(mngrVo.getLoginPassword());
		userVo.setEmail(mngrVo.getEmail());
		userVo.setTelno(mngrVo.getTelno());
		userVo.setMbtlnum(mngrVo.getMbtlnum());
		userVo.setUpdusrSn(mngrVo.getUpdusrSn());
		userMapper.update(userVo);

		MngrVo updateVo = new MngrVo();
		updateVo.setUserSn(mngrVo.getUserSn());
		updateVo.setRoleId(mngrVo.getRoleId());
		updateVo.setUpdusrSn(mngrVo.getUpdusrSn());
		mngrMapper.update(updateVo);

	}

	@Override
	public void delete(MngrVo mngrVo) throws Exception{

		mngrMapper.delete(mngrVo);

		UserVo userVo = new UserVo();
		userVo.setUserSn(mngrVo.getUserSn());
		userMapper.delete(userVo);
	}

	@Override
	public void updateMyinfo(MngrVo mngrVo) throws Exception{

		UserVo userVo = new UserVo();
		userVo.setUserSn(mngrVo.getUserSn());
		userVo.setUserNm(mngrVo.getUserNm());
		userVo.setLoginPassword(mngrVo.getLoginPassword());
		userVo.setEmail(mngrVo.getEmail());
		userVo.setTelno(mngrVo.getTelno());
		userVo.setMbtlnum(mngrVo.getMbtlnum());
		userVo.setUpdusrSn(mngrVo.getUpdusrSn());
		userMapper.update(userVo);

		MngrVo updateVo = new MngrVo();
		updateVo.setUserSn(mngrVo.getUserSn());
		updateVo.setUpdusrSn(mngrVo.getUpdusrSn());
		mngrMapper.update(updateVo);
	}

	@Override
	public void initPasswordInputErrorCo(MngrVo mngrVo) throws Exception {
		UserVo userVo = new UserVo();
		userVo.setUserSn(mngrVo.getUserSn());

		userMapper.initPasswordInputErrorCo(userVo);

	}

	@Override
	public void increaseLoginCo(MngrVo mngrVo) throws Exception {
		UserVo userVo = new UserVo();
		userVo.setUserSn(mngrVo.getUserSn());
		userMapper.increaseLoginCo(userVo);
	}

	@Override
	public void initPassword(MngrVo mngrVo) throws Exception {
		UserVo vo = new UserVo();
		vo.setUpdusrSn(mngrVo.getUpdusrSn());
		vo.setUserSn(mngrVo.getUserSn());
		vo.setLoginPassword(mngrVo.getLoginPassword());
		userMapper.initPassword(vo);
	}

}
