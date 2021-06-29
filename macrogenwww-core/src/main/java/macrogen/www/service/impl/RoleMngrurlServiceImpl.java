package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.RoleMngrurlMapper;
import macrogen.www.service.RoleMngrurlService;
import macrogen.www.vo.RoleMngrurlVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ RoleMngrurlServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 12. 12. 오전 11:36:18
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("roleMngrurlService")
public class RoleMngrurlServiceImpl extends EgovAbstractServiceImpl implements RoleMngrurlService {

	@Resource(name="roleMngrurlMapper")
	private RoleMngrurlMapper roleMngrurlMapper;

	@Override
	public List<RoleMngrurlVo> list(RoleMngrurlVo roleMngrurlVo) {
		return roleMngrurlMapper.list(roleMngrurlVo);
	}

	@Override
	public int count(RoleMngrurlVo roleMngrurlVo) {
		return roleMngrurlMapper.count(roleMngrurlVo);
	}

	@Override
	public void insert(RoleMngrurlVo roleMngrurlVo) {
		roleMngrurlMapper.insert(roleMngrurlVo);
	}

	@Override
	public void deleteByRoleId(RoleMngrurlVo roleMngrurlVo) {
		roleMngrurlMapper.deleteByRoleId(roleMngrurlVo);
	}

	@Override
	public void deleteByUrl(RoleMngrurlVo roleMngrurlVo) {
		roleMngrurlMapper.deleteByUrl(roleMngrurlVo);
	}

	@Override
	public RoleMngrurlVo likeView(RoleMngrurlVo roleMngrurlVo) throws Exception {
		return roleMngrurlMapper.likeView(roleMngrurlVo);
	}

}
