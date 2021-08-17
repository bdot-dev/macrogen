package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.SetupMapper;
import macrogen.www.service.AtchService;
import macrogen.www.service.SetupService;
import macrogen.www.vo.AtchVo;
import macrogen.www.vo.SetupVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ SetupServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 12. 오후 4:06:51
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("setupService")
public class SetupServiceImpl extends EgovAbstractServiceImpl implements SetupService {

	@Autowired
	private SetupMapper setupMapper;

	@Autowired
	private AtchService atchService;

	@Override
	public int count(SetupVo vo) throws Exception {
		return setupMapper.count(vo);
	}

	@Override
	public List<SetupVo> list(SetupVo vo) throws Exception {
		return setupMapper.list(vo);
	}

	@Override
	public SetupVo view(SetupVo vo) throws Exception {
		return setupMapper.view(vo);
	}

	@Override
	public void insert(SetupVo vo) throws Exception {
		setupMapper.insert(vo);
	}

	@Override
	public void delete(SetupVo vo) throws Exception {
		setupMapper.delete(vo);
	}

	@Override
	public void update(SetupVo vo) throws Exception {
		setupMapper.update(vo);
	}

	@Override
	public SetupVo viewByPk(String id) throws Exception {
		SetupVo vo = new SetupVo();
		vo.setSetupId(id);
		return view(vo);
	}

	@Override
	public AtchVo getApplFormWordAtchVo() throws Exception {
		SetupVo setupVo = viewByPk("APPL_FORM_WORD");
		if (null == setupVo || StringUtils.isEmpty(setupVo.getSetupValue())) {
			return null;
		}
		return atchService.viewByPk(setupVo.getSetupValue());
	}

	@Override
	public AtchVo getApplFormHwpAtchVo() throws Exception {
		SetupVo setupVo = viewByPk("APPL_FORM_HWP");
		if (null == setupVo || StringUtils.isEmpty(setupVo.getSetupValue())) {
			return null;
		}
		return atchService.viewByPk(setupVo.getSetupValue());
	}

	@Override
	public void update(String setupId, String setupValue) throws Exception {
		SetupVo setupVo = new SetupVo();
		setupVo.setSetupId(setupId);
		setupVo.setSetupValue(setupValue);
		setupMapper.update(setupVo);
	}

}
