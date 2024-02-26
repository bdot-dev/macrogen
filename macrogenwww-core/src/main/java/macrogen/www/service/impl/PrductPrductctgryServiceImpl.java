package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.PrductPrductctgryMapper;
import macrogen.www.service.PrductPrductctgryService;
import macrogen.www.vo.PrductPrductctgryVo;
import macrogen.www.vo.PrductVo;

@Service("prductPrductctgryService")
public class PrductPrductctgryServiceImpl extends EgovAbstractServiceImpl implements PrductPrductctgryService {

	@Resource(name="prductPrductctgryMapper")
	private PrductPrductctgryMapper prductPrductctgryMapper;
/*
	@Override
	public void updateList(PrductVo prductVo) throws Exception {
		// delete tb_prduct_prductctgry by prductVo.prductSn
		PrductPrductctgryVo deleteVo = new PrductPrductctgryVo();
		deleteVo.setPrductSn(prductVo.getPrductSn());
		prductPrductctgryMapper.deleteByPrductSn(deleteVo);

		// insert tb_prduct_prductctgry for prductVo.prductctgryList
		if (null != prductVo.getPrductctgryList() && !prductVo.getPrductctgryList().isEmpty()) {
			int sortOrdr = 1;
			for (PrductPrductctgryVo prductctgryVo : prductVo.getPrductctgryList()) {
				PrductPrductctgryVo insertVo = new PrductPrductctgryVo();
				insertVo.setPrductSn(prductVo.getPrductSn());
				insertVo.setRegisterSn(prductVo.getRegisterSn());
				insertVo.setUpdusrSn(prductVo.getUpdusrSn());
				insertVo.setSortOrdr(sortOrdr);
				insertVo.setCtgrySn(prductctgryVo.getCtgrySn());
				prductPrductctgryMapper.insert(insertVo);
				sortOrdr ++;
			}
		}
	}

	@Override
	public List<PrductPrductctgryVo> listByPrductSn(Long prductSn) throws Exception {
		PrductPrductctgryVo prductPrductctgryVo = new PrductPrductctgryVo();
		prductPrductctgryVo.setPrductSn(prductSn);
		return prductPrductctgryMapper.list(prductPrductctgryVo);
	}*/

}
