package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.RoleMngrmenuMapper;
import macrogen.www.service.RoleMngrmenuService;
import macrogen.www.vo.RoleMngrmenuVo;

@Service("roleMngrmenuService")
public class RoleMngrmenuServiceImpl extends EgovAbstractServiceImpl implements RoleMngrmenuService {

	@Resource(name="roleMngrmenuMapper")
	private RoleMngrmenuMapper roleMngrmenuMapper;

	@Override
	public List<RoleMngrmenuVo> list(RoleMngrmenuVo roleMngrmenuVo) throws Exception {
		return roleMngrmenuMapper.list(roleMngrmenuVo);
	}

	@Override
	public RoleMngrmenuVo first(RoleMngrmenuVo roleMngrmenuVo) throws Exception {
		List<RoleMngrmenuVo> list = roleMngrmenuMapper.list(roleMngrmenuVo);
		if (null != list && !list.isEmpty()) {
			return list.get(0);
		} else {
			return null;
		}
	}

	@Override
	public void deleteByMenuSn(RoleMngrmenuVo roleMngrmenuVo) throws Exception {
		roleMngrmenuMapper.deleteByMenuSn(roleMngrmenuVo);
	}

}
