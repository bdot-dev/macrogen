package macrogen.www.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.common.CommonStringUtil;
import macrogen.www.mapper.MngrAuthLogMapper;
import macrogen.www.mapper.MngrmenuMapper;
import macrogen.www.mapper.MngrurlMapper;
import macrogen.www.mapper.RoleMapper;
import macrogen.www.mapper.RoleMngrmenuMapper;
import macrogen.www.mapper.RoleMngrurlMapper;
import macrogen.www.service.MngrmenuService;
import macrogen.www.service.RoleService;
import macrogen.www.vo.MngrAuthLogVo;
import macrogen.www.vo.MngrmenuVo;
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
	
	@Resource(name="mngrmenuService")
	private MngrmenuService mngrmenuService;

	@Resource(name="roleMngrurlMapper")
	private RoleMngrurlMapper roleMngrurlMapper;
	
	@Resource(name="mngrAuthLogMapper")
	private MngrAuthLogMapper mngrAuthLogMapper;
	
	private final org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());

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

		// TB_ROLE_MNGRMENU 등록 => 전체 삭제 후 등록\
		roleVo.setChangeSnList(roleVo.getMenuSnList());
		
		deleteRoleMngrmenuByRoleId(roleVo);
		deleteRoleMngrurlByRoleId(roleVo);
		insertRoleMngrmenu(roleVo);
	}

	@Override
	public void update(RoleVo roleVo) throws Exception{
		MngrmenuVo param = new MngrmenuVo();
		param.setFirstIndex(-1);
		param.setTopmostYn("Y");
		param.setRoleId(roleVo.getRoleId());
		List<MngrmenuVo> menuList = mngrmenuService.tree(param);
		
		ArrayList<Long> tmpArr = new ArrayList<>();

		List<Long> menuSnList = new ArrayList<Long>();
		List<Long> menuChSnList = new ArrayList<Long>();
		List<Long> menuTrdSnList = new ArrayList<Long>();
		
		
		for(int i=0;i<menuList.size();i++) {
			menuSnList.add(menuList.get(i).getMenuSn());
			for(int j=0;j<menuList.get(i).getChildren().size();j++) {
				menuChSnList.add(menuList.get(i).getChildren().get(j).getMenuSn());
				for(int k=0;k<menuList.get(i).getChildren().get(j).getChildren().size();k++) {
					menuTrdSnList.add(menuList.get(i).getChildren().get(j).getChildren().get(k).getMenuSn());
				}
			}
		}
		
		tmpArr.addAll(roleVo.getMenuSnList());
		
		for(Long menuSn : menuSnList) {
			if (roleVo.getMenuSnList().contains(menuSn) == true) {
	            //일치하는 아이템을 지움
				tmpArr.remove(menuSn);
	        }else if(roleVo.getMenuSnList().contains(menuSn) == false) {
	        	tmpArr.add(menuSn);
	        }
		}
		for(Long menuSn : menuChSnList) {
			if (roleVo.getMenuSnList().contains(menuSn) == true) {
				//일치하는 아이템을 지움
				tmpArr.remove(menuSn);
			}else if(roleVo.getMenuSnList().contains(menuSn) == false) {
	        	tmpArr.add(menuSn);
	        }
		}
		
		for(Long menuSn : menuTrdSnList) {
			if (roleVo.getMenuSnList().contains(menuSn) == true) {
				//일치하는 아이템을 지움
				tmpArr.remove(menuSn);
			}else if(roleVo.getMenuSnList().contains(menuSn) == false) {
	        	tmpArr.add(menuSn);
	        }
		}
		
		List<Long> urlList = roleMapper.urlList(roleVo); //role의 기존 url 리스트
		
		
		roleVo.setChangeSnList(tmpArr);
		roleVo.setOrgUrlList(urlList);
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
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String clientIp = CommonStringUtil.getClientIp(request);
		
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
		
		if(roleVo.getChangeSnList()!=null) {
			
			for (Long menuSn : roleVo.getChangeSnList()) {
				MngrAuthLogVo authVo = new MngrAuthLogVo();
				authVo.setRoleId(roleVo.getRoleId());
				authVo.setMenuSn(menuSn);
				authVo.setIp(clientIp);
				authVo.setResult("저장");
				authVo.setRegisterSn(roleVo.getRegisterSn());
				if(roleVo.getPendncyMenuSnList()!=null) {
					if (roleVo.getPendncyMenuSnList().contains(menuSn) == true) {
						authVo.setPendncyYn("Y");
					}else if(roleVo.getPendncyMenuSnList().contains(menuSn) == false) {
						authVo.setPendncyYn("N");
			        }
				}
				mngrAuthLogMapper.insertMngrMenu(authVo);
			}
		
		}
		ArrayList<Long> tmpArr = new ArrayList<>();
		
		if(roleVo.getOrgUrlList()!=null) {
			tmpArr.addAll(roleVo.getOrgUrlList());
		}
		
		for(Long menuSn : roleVo.getAccessSnList()) {
			if(roleVo.getOrgUrlList() == null) {
	        	tmpArr.add(menuSn);
	        }else if(roleVo.getOrgUrlList()!=null) {
				if (roleVo.getOrgUrlList().contains(menuSn) == true) {
					//일치하는 아이템을 지움
					tmpArr.remove(menuSn);
				}else if(roleVo.getOrgUrlList().contains(menuSn) == false) {
		        	tmpArr.add(menuSn);
		        }
	        }
			
			
		}
		

		for (Long menuSn : tmpArr) {
			RoleMngrurlVo searchVo = new RoleMngrurlVo();
			searchVo.setMenuSn(menuSn);
			MngrurlVo resultVo = mngrurlMapper.menuSnView(searchVo);
			if( resultVo != null ){
				MngrAuthLogVo authVo = new MngrAuthLogVo();
				authVo.setRoleId(roleVo.getRoleId());
				authVo.setUrl(resultVo.getUrl());
				authVo.setIp(clientIp);
				authVo.setMenuSn(menuSn);
				authVo.setResult("저장");
				authVo.setRegisterSn(roleVo.getRegisterSn());
				
				mngrAuthLogMapper.insertMngrUrl(authVo);
			}

		}
		
	}

}
