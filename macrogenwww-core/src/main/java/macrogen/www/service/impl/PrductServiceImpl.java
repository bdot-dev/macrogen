package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.common.storage.StorageService;
import macrogen.www.mapper.PrductMapper;
import macrogen.www.service.PrductImageService;
import macrogen.www.service.PrductPrductctgryService;
import macrogen.www.service.PrductService;
import macrogen.www.service.RelatePrductService;
import macrogen.www.vo.PrductVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ PrductServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 12. 4. 오전 10:17:50
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("prductService")
public class PrductServiceImpl extends EgovAbstractServiceImpl implements PrductService{

	@Resource(name="prductMapper")
	private PrductMapper prductMapper;

	@Resource(name="prductPrductctgryService")
	private PrductPrductctgryService prductPrductctgryService;

	@Resource(name="prductImageService")
	private PrductImageService prductImageService;

	@Resource(name="relatePrductService")
	private RelatePrductService relatePrductService;

	@Resource(name="storageService")
	private StorageService storageService;

	@Override
	public List<PrductVo> list(PrductVo prductVo) throws Exception {
		return prductMapper.list(prductVo);
	}

	@Override
	public int count(PrductVo prductVo) throws Exception {
		return prductMapper.count(prductVo);
	}

	@Override
	public PrductVo view(PrductVo prductVo) throws Exception  {
		PrductVo resultVo = prductMapper.view(prductVo);
		resultVo.setImageList(prductImageService.listByPrductSn(prductVo.getPrductSn()));
		resultVo.setPrductctgryList(prductPrductctgryService.listByPrductSn(prductVo.getPrductSn()));
		resultVo.setRelatePrductList(relatePrductService.listByPrductSn(prductVo.getPrductSn()));
		return resultVo;
	}

	@Override
	public void insert(PrductVo prductVo) throws Exception  {
		Long prductSn = prductMapper.seq();
		prductVo.setPrductSn(prductSn);
		prductMapper.insert(prductVo);

		// 재등록 : 상품이미지 목록
		prductImageService.updateList(prductVo);

		// 재등록 : 제품_제품카테고리 목록
		prductPrductctgryService.updateList(prductVo);

		// 재등록 : 관련제품 목록
		relatePrductService.updateList(prductVo);

	}

	@Override
	public void update(PrductVo prductVo) throws Exception  {
		prductMapper.update(prductVo);

		// 재등록 : 상품이미지 목록
		prductImageService.updateList(prductVo);

		// 재등록 : 제품_제품카테고리 목록
		prductPrductctgryService.updateList(prductVo);

		// 재등록 : 관련제품 목록
		relatePrductService.updateList(prductVo);

	}

	@Override
	public void delete(PrductVo prductVo) throws Exception  {
		prductMapper.delete(prductVo);
	}

	@Override
	public void updateSortOrder(PrductVo prductVo) throws Exception {
		prductMapper.updateSortOrder(prductVo);
	}

	@Override
	public void updateExpsrYn(PrductVo prductVo) throws Exception {
		prductMapper.updateExpsrYn(prductVo);
	}

}
