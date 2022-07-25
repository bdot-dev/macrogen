package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.SocialContentsMapper;
import macrogen.www.service.SocialContentsService;
import macrogen.www.vo.SocialContentsVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ SocialContentServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:04:53
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("socialContentsService")
public class SocialContentsServiceImpl extends EgovAbstractServiceImpl implements SocialContentsService {

	@Autowired
	private SocialContentsMapper socialContentsMapper;

	@Override
	public int count(SocialContentsVo vo) throws Exception {
		return socialContentsMapper.count(vo);
	}

	@Override
	public List<SocialContentsVo> list(SocialContentsVo vo) throws Exception {
		return socialContentsMapper.list(vo);
	}

	@Override
	public List<SocialContentsVo> allListBySocialContentsCode(String langCode, String cntntsCtgryCode) throws Exception {
		SocialContentsVo vo = new SocialContentsVo();
		vo.setLangCode(langCode);
		vo.setCntntsCtgryCode(cntntsCtgryCode);
		vo.setFirstIndex(-1);
		return socialContentsMapper.list(vo);
	}

	@Override
	public SocialContentsVo view(SocialContentsVo vo) throws Exception {
		return socialContentsMapper.view(vo);
	}

	@Override
	public void insert(SocialContentsVo vo) throws Exception {
		vo.setCntntsSn(socialContentsMapper.seq());
		socialContentsMapper.insert(vo);
	}

	@Override
	public void delete(SocialContentsVo vo) throws Exception {
		socialContentsMapper.delete(vo);
	}

	@Override
	public void update(SocialContentsVo vo) throws Exception {
		socialContentsMapper.update(vo);
	}

	@Override
	public SocialContentsVo viewByPk(Long sn) throws Exception {
		SocialContentsVo vo = new SocialContentsVo();
		vo.setCntntsSn(sn);
		return view(vo);
	}

}
