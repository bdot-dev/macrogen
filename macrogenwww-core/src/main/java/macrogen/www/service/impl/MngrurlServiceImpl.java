package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MngrurlMapper;
import macrogen.www.mapper.RoleMngrurlMapper;
import macrogen.www.service.MngrurlService;
import macrogen.www.vo.MngrurlVo;
import macrogen.www.vo.RoleMngrurlVo;

@Service("mngrurlService")
public class MngrurlServiceImpl extends EgovAbstractServiceImpl implements MngrurlService {

	@Resource(name="mngrurlMapper")
	private MngrurlMapper mngrurlMapper;

	@Resource(name="roleMngrurlMapper")
	private RoleMngrurlMapper roleMngrurlMapper;

	@Override
	public MngrurlVo view(MngrurlVo mngrurlVo) throws Exception {
		return mngrurlMapper.view(mngrurlVo);
	}

	@Override
	public MngrurlVo likeView(MngrurlVo mngrurlVo) throws Exception {
		return mngrurlMapper.likeView(mngrurlVo);
	}

	@Override
	public List<MngrurlVo> list(MngrurlVo mngrurlVo) throws Exception {
		return mngrurlMapper.list(mngrurlVo);
	}

	@Override
	public int count(MngrurlVo mngrurlVo) throws Exception {
		return mngrurlMapper.count(mngrurlVo);
	}

	@Override
	public void insert(MngrurlVo mngrurlVo) throws Exception {
		mngrurlMapper.insert(mngrurlVo);
	}

	@Override
	public void update(MngrurlVo mngrurlVo) throws Exception {
		mngrurlMapper.update(mngrurlVo);
	}

	@Override
	public void delete(MngrurlVo mngrurlVo) throws Exception {
		RoleMngrurlVo roleMngrurlVo = new RoleMngrurlVo();
		roleMngrurlVo.setUrl(mngrurlVo.getUrl());
		roleMngrurlMapper.deleteByUrl(roleMngrurlVo);;

		mngrurlMapper.delete(mngrurlVo);
	}

	@Override
	public MngrurlVo likeOne(String path) throws Exception {
		MngrurlVo urlVo = new MngrurlVo();
		urlVo.setUrl(path);
		urlVo = mngrurlMapper.view(urlVo);
		if (null != urlVo) {
			return urlVo;
		} else {
			urlVo = new MngrurlVo();
			urlVo.setUrl(path);
			return mngrurlMapper.likeView(urlVo);
		}

	}

}
