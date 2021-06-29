package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.BbsCtgryMapper;
import macrogen.www.service.BbsCtgryService;
import macrogen.www.vo.BbsCtgryVo;

/**
 * <pre>
 * macrogen.www.service.impl 
 *    |_ BbsCtgryServiceImpl.java
 * 
 * </pre>
 * 1. 작성일 : 2018. 6. 19. 오전 11:34:37
 * 2. 작성자 : eluocnc
 * @version : 
 */
@Service("bbsCtgryService")
public class BbsCtgryServiceImpl extends EgovAbstractServiceImpl implements BbsCtgryService{

	@Resource(name="bbsCtgryMapper")
	private BbsCtgryMapper bbsCtgryMapper;
	
	@Override
	public List<BbsCtgryVo> list(BbsCtgryVo bbsCtgryVo) throws Exception{
		return bbsCtgryMapper.list(bbsCtgryVo);
	}

	@Override
	public List<BbsCtgryVo> listByBbsId(String bbsId) throws Exception {
		BbsCtgryVo bbsCtgryVo = new BbsCtgryVo();
		bbsCtgryVo.setBbsId(bbsId);
		bbsCtgryVo.setFirstIndex(-1);
		return bbsCtgryMapper.list(bbsCtgryVo);
	}
}
