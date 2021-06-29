package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.RelatePrductMapper;
import macrogen.www.service.RelatePrductService;
import macrogen.www.vo.PrductVo;
import macrogen.www.vo.RelatePrductVo;

@Service("relatePrductService")
public class RelatePrductServiceImpl extends EgovAbstractServiceImpl implements RelatePrductService {

	@Resource(name="relatePrductMapper")
	private RelatePrductMapper relatePrductMapper;

	@Override
	public List<RelatePrductVo> listByPrductSn(Long prductSn) throws Exception {
		RelatePrductVo relatePrductVo = new RelatePrductVo();
		relatePrductVo.setPrductSn(prductSn);
		relatePrductVo.setFirstIndex(-1);
		return relatePrductMapper.list(relatePrductVo);
	}

	@Override
	public void updateList(PrductVo prductVo) throws Exception {
		// delete tb_relate_prduct by prductVo.prductSn
		RelatePrductVo deleteVo = new RelatePrductVo();
		deleteVo.setPrductSn(prductVo.getPrductSn());
		relatePrductMapper.deleteByPrductSn(deleteVo);

		// insert tb_relate_prduct for prductVo.relatePrductList
		if (null != prductVo.getRelatePrductList() && !prductVo.getRelatePrductList().isEmpty()) {
			int sortOrdr = 1;
			for (RelatePrductVo relatePrductVo : prductVo.getRelatePrductList()) {
				RelatePrductVo insertVo = new RelatePrductVo();
				insertVo.setPrductSn(prductVo.getPrductSn());
				insertVo.setRegisterSn(prductVo.getRegisterSn());
				insertVo.setUpdusrSn(prductVo.getUpdusrSn());
				insertVo.setSortOrdr(sortOrdr);
				insertVo.setRelatePrductSn(relatePrductVo.getRelatePrductSn());
				relatePrductMapper.insert(insertVo);
				sortOrdr ++;
			}
		}

	}
}
