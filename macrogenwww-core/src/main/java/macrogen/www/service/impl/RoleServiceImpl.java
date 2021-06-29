package macrogen.www.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MngrurlMapper;
import macrogen.www.mapper.RoleMapper;
import macrogen.www.mapper.RoleMngrmenuMapper;
import macrogen.www.mapper.RoleMngrurlMapper;
import macrogen.www.service.RoleService;
import macrogen.www.vo.MngrurlVo;
import macrogen.www.vo.RoleMngrmenuVo;
import macrogen.www.vo.RoleMngrurlVo;
import macrogen.www.vo.RoleVo;

@Service("roleService")
public class RoleServiceImpl extends EgovAbstractServiceImpl implements RoleService {

	@Resource(name="roleMapper")
	private RoleMapper roleMapper;

	@Resource(name="roleMngrmenuMapper")
	private RoleMngrmenuMapper roleMngrmenuMapper;

	@Resource(name="mngrurlMapper")
	private MngrurlMapper mngrurlMapper;

	@Resource(name="roleMngrurlMapper")
	private RoleMngrurlMapper roleMngrurlMapper;

	@Override
	public Map<String, RoleVo> allMapList() throws Exception{
		Map<String, RoleVo> map = new HashMap<String, RoleVo>();

		RoleVo param = new RoleVo();
		param.setFirstIndex(-1);
		for (RoleVo roleVo : roleMapper.list(param)){
			map.put(String.format("%s", roleVo.getRoleId()), roleVo);
		}
		return map;
	}

	@Override
	public List<RoleVo> list(RoleVo roleVo) throws Exception{
		return roleMapper.list(roleVo);
	}

	@Override
	public int count(RoleVo roleVo) throws Exception {
		return roleMapper.count(roleVo);
	}

	@Override
	public RoleVo view(RoleVo roleVo) throws Exception{
		return roleMapper.view(roleVo);
	}

	@Override
	public void insert(RoleVo roleVo) throws Exception{
		roleMapper.insert(roleVo);

		// TB_ROLE_MNGRMENU 등록 => 전체 삭제 후 등록
		deleteRoleMngrmenuByRoleId(roleVo);
		deleteRoleMngrurlByRoleId(roleVo);
		insertRoleMngrmenu(roleVo);
	}

	@Override
	public void update(RoleVo roleVo) throws Exception{
		roleMapper.update(roleVo);

		// TB_ROLE_MNGRMENU 등록 => 전체 삭제 후 등록
		deleteRoleMngrmenuByRoleId(roleVo);
		deleteRoleMngrurlByRoleId(roleVo);
		insertRoleMngrmenu(roleVo);
	}

	@Override
	public void delete(RoleVo roleVo) throws Exception{
		deleteRoleMngrmenuByRoleId(roleVo);
		deleteRoleMngrurlByRoleId(roleVo);
		roleMapper.delete(roleVo);
	}

	private void deleteRoleMngrmenuByRoleId(RoleVo roleVo) throws Exception {
		RoleMngrmenuVo roleMngrmenuVo = new RoleMngrmenuVo();
		roleMngrmenuVo.setRoleId(roleVo.getRoleId());
		roleMngrmenuMapper.deleteByRoleId(roleMngrmenuVo);
	}

	private void deleteRoleMngrurlByRoleId(RoleVo roleVo) throws Exception {
		RoleMngrurlVo roleMngrurlVo = new RoleMngrurlVo();
		roleMngrurlVo.setRoleId(roleVo.getRoleId());
		roleMngrurlMapper.deleteByRoleId(roleMngrurlVo);
	}

	private void insertRoleMngrmenu(RoleVo roleVo) throws Exception {
		// insert checked list
		for (Long menuSn : roleVo.getMenuSnList()) {
			RoleMngrmenuVo inserVo = new RoleMngrmenuVo();
			inserVo.setRoleId(roleVo.getRoleId());
			inserVo.setMenuSn(menuSn);
			inserVo.setPendncyYn("N");
			inserVo.setRegisterSn(roleVo.getRegisterSn());
			inserVo.setUpdusrSn(roleVo.getUpdusrSn());
			roleMngrmenuMapper.insert(inserVo);
		}

		// insert undetermined list
		for (Long menuSn : roleVo.getPendncyMenuSnList()) {
			RoleMngrmenuVo inserVo = new RoleMngrmenuVo();
			inserVo.setRoleId(roleVo.getRoleId());
			inserVo.setMenuSn(menuSn);
			inserVo.setPendncyYn("Y");
			inserVo.setRegisterSn(roleVo.getRegisterSn());
			inserVo.setUpdusrSn(roleVo.getUpdusrSn());
			roleMngrmenuMapper.insert(inserVo);
		}

		// insert Access list
		for (Long menuSn : roleVo.getAccessSnList()) {
			RoleMngrurlVo searchVo = new RoleMngrurlVo();
			searchVo.setMenuSn(menuSn);
			MngrurlVo resultVo = mngrurlMapper.menuSnView(searchVo);
			if( resultVo != null ){
				RoleMngrurlVo insertVo = new RoleMngrurlVo();
				insertVo.setRoleId(roleVo.getRoleId());
				insertVo.setUrl(resultVo.getUrl());
				roleMngrurlMapper.insert(insertVo);
			}

		}
	}

}
