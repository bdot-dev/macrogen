package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.IntrstPrductMapper;
import macrogen.www.service.IntrstPrductService;
import macrogen.www.vo.IntrstPrductVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ IntrstPrductServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 8. 오전 11:24:01
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("intrstPrductService")
public class IntrstPrductServiceImpl extends EgovAbstractServiceImpl implements IntrstPrductService{

	@Resource(name="intrstPrductMapper")
	private IntrstPrductMapper intrstPrductMapper;

	@Override
	public List<IntrstPrductVo> list(IntrstPrductVo intrstPrductVo) throws Exception {
		return intrstPrductMapper.list(intrstPrductVo);
	}

	@Override
	public int count(IntrstPrductVo intrstPrductVo) throws Exception {
		return intrstPrductMapper.count(intrstPrductVo);
	}

	@Override
	public void insert(IntrstPrductVo intrstPrductVo) throws Exception {
		intrstPrductMapper.insert(intrstPrductVo);
	}

	@Override
	public void delete(IntrstPrductVo intrstPrductVo) throws Exception {
		intrstPrductMapper.delete(intrstPrductVo);
	}

}
