package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.PrductImageMapper;
import macrogen.www.service.PrductImageService;
import macrogen.www.vo.PrductImageVo;
import macrogen.www.vo.PrductVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ PrductImageServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 21. 오전 9:23:44
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("prductImageService")
public class PrductImageServiceImpl extends EgovAbstractServiceImpl implements PrductImageService {

	@Resource(name="prductImageMapper")
	private PrductImageMapper prductImageMapper;

	@Override
	public void updateList(PrductVo prductVo) throws Exception {
		// delete tb_prduct_image by prductVo.prductSn
		PrductImageVo deleteVo = new PrductImageVo();
		deleteVo.setPrductSn(prductVo.getPrductSn());
		prductImageMapper.deleteByPrductSn(deleteVo);

		// insert tb_prduct_image for prductVo.imageList
		if (null != prductVo.getImageList() && !prductVo.getImageList().isEmpty()) {
			int sortOrdr = 1;
			for (PrductImageVo imageVo : prductVo.getImageList()) {
				PrductImageVo insertVo = new PrductImageVo();
				insertVo.setPrductSn(prductVo.getPrductSn());
				insertVo.setAtchId(imageVo.getAtchId());
				insertVo.setSortOrdr(sortOrdr);
				insertVo.setRegisterSn(prductVo.getRegisterSn());
				insertVo.setUpdusrSn(prductVo.getUpdusrSn());
				prductImageMapper.insert(insertVo);
				sortOrdr ++;

			}
		}

	}

	@Override
	public List<PrductImageVo> listByPrductSn(Long prductSn) throws Exception {
		PrductImageVo prductImageVo = new PrductImageVo();
		prductImageVo.setPrductSn(prductSn);
		return prductImageMapper.list(prductImageVo);
	}

}
