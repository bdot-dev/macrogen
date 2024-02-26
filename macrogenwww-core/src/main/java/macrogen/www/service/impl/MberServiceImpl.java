package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.enums.Codes.UserSeCode;
import macrogen.www.mapper.MberMapper;
import macrogen.www.mapper.UserMapper;
import macrogen.www.service.MberService;
import macrogen.www.vo.MberVo;
import macrogen.www.vo.UserVo;

/**
 * <pre>
 * MberService
 *    |_ MberServiceImpl.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 26. 오후 4:27:07
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("mberService")
public class MberServiceImpl extends EgovAbstractServiceImpl implements MberService {

	/*@Resource(name="userMapper")
	private UserMapper userMapper;

	@Resource(name="mberMapper")
	private MberMapper mberMapper;

	@Override
	public MberVo view(MberVo mberVo) throws Exception {
		return mberMapper.view(mberVo);
	}

	@Override
	public MberVo viewByLoginId(MberVo mberVo) throws Exception {
		return mberMapper.viewByLoginId(mberVo);
	}

	@Override
	public List<MberVo> list(MberVo mberVo) throws Exception {
		return mberMapper.list(mberVo);
	}

	@Override
	public int count(MberVo mberVo) throws Exception {
		return mberMapper.count(mberVo);
	}

	@Override
	public void insert(MberVo mberVo) throws Exception {

		Long userSn = userMapper.seq();

		UserVo userVo = new UserVo();
		userVo.setUserSn(userSn);
		userVo.setUserNm(mberVo.getUserNm());
		userVo.setLoginId(mberVo.getLoginId());
		userVo.setLoginPassword(mberVo.getLoginPassword());
		userVo.setEmail(mberVo.getEmail());
		userVo.setTelno(mberVo.getTelno());
		userVo.setMbtlnum(mberVo.getMbtlnum());
		userVo.setUserSeCode(UserSeCode.MBER);
		userVo.setRegisterSn(mberVo.getRegisterSn());
		userVo.setUpdusrSn(mberVo.getUpdusrSn());
		userMapper.insert(userVo);

		MberVo insertVo = new MberVo();
		insertVo.setUserSn(userVo.getUserSn());
		insertVo.setRegisterSn(mberVo.getRegisterSn());
		insertVo.setUpdusrSn(mberVo.getUpdusrSn());
		insertVo.setBrthdy(mberVo.getBrthdy());
		mberMapper.insert(insertVo);
	}

	@Override
	public void update(MberVo mberVo) throws Exception{

		UserVo userVo = new UserVo();
		userVo.setUserSn(mberVo.getUserSn());
		userVo.setUserNm(mberVo.getUserNm());
		userVo.setLoginPassword(mberVo.getLoginPassword());
		userVo.setEmail(mberVo.getEmail());
		userVo.setTelno(mberVo.getTelno());
		userVo.setMbtlnum(mberVo.getMbtlnum());
		userVo.setUpdusrSn(mberVo.getUpdusrSn());
		userMapper.update(userVo);

		MberVo updateVo = new MberVo();
		updateVo.setUserSn(mberVo.getUserSn());
		updateVo.setUpdusrSn(mberVo.getUpdusrSn());
		updateVo.setBrthdy(mberVo.getBrthdy());
		mberMapper.update(updateVo);

	}

	@Override
	public void delete(MberVo mberVo) throws Exception{
		mberMapper.delete(mberVo);

		UserVo userVo = new UserVo();
		userVo.setUserSn(mberVo.getUserSn());
		userMapper.delete(userVo);
	}

	@Override
	public void updateMyinfo(MberVo mberVo) throws Exception{

		UserVo userVo = new UserVo();
		userVo.setUserSn(mberVo.getUserSn());
		userVo.setUserNm(mberVo.getUserNm());
		userVo.setLoginPassword(mberVo.getLoginPassword());
		userVo.setEmail(mberVo.getEmail());
		userVo.setTelno(mberVo.getTelno());
		userVo.setMbtlnum(mberVo.getMbtlnum());
		userVo.setUpdusrSn(mberVo.getUpdusrSn());
		userMapper.update(userVo);

		MberVo updateVo = new MberVo();
		updateVo.setUserSn(mberVo.getUserSn());
		updateVo.setUpdusrSn(mberVo.getUpdusrSn());
		updateVo.setBrthdy(mberVo.getBrthdy());
		mberMapper.update(updateVo);
	}

	@Override
	public void initPasswordInputErrorCo(MberVo mberVo) throws Exception {
		UserVo userVo = new UserVo();
		userVo.setUserSn(mberVo.getUserSn());

		userMapper.initPasswordInputErrorCo(userVo);

	}

	@Override
	public void increaseLoginCo(MberVo mberVo) throws Exception {
		UserVo userVo = new UserVo();
		userVo.setUserSn(mberVo.getUserSn());
		userMapper.increaseLoginCo(userVo);
	}*/

}
