package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.PrductctgryMapper;
import macrogen.www.service.PrductctgryService;
import macrogen.www.vo.PrductctgryVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ PrductctgryServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 11. 30. 오후 1:05:40
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("prductctgryService")
public class PrductctgryServiceImpl extends EgovAbstractServiceImpl implements PrductctgryService{

	@Resource(name="prductctgryMapper")
	private PrductctgryMapper prductctgryMapper;

	/*@Override
	public List<PrductctgryVo> list(PrductctgryVo param) {
		return prductctgryMapper.list(param);
	}

	@Override
	public PrductctgryVo view(PrductctgryVo param) {
		return prductctgryMapper.view(param);
	}

	@Override
	public void insert(PrductctgryVo prductctgryVo) {
		Long ctgrySn = prductctgryMapper.seq();
		prductctgryVo.setCtgrySn(ctgrySn);
		prductctgryMapper.insert(prductctgryVo);
	}

	@Override
	public void update(PrductctgryVo param) {
		prductctgryMapper.update(param);
	}

	@Override
	public void updateSortOrdr(PrductctgryVo param) {
		prductctgryMapper.updateSortOrdr(param);

	}

	@Override
	public void delete(PrductctgryVo param) {
		prductctgryMapper.delete(param);
	}

	@Override
	public List<PrductctgryVo> tree(PrductctgryVo param) {
		return treeFunction(param);
	}

	private List<PrductctgryVo> treeFunction(PrductctgryVo prductctgryVo) {
		List<PrductctgryVo> resultList = prductctgryMapper.list(prductctgryVo);
		for(PrductctgryVo ctgryVo : resultList){
			PrductctgryVo searchVo = new PrductctgryVo();
			searchVo.setUpperCtgrySn(ctgryVo.getCtgrySn());
			searchVo.setExpsrYn(prductctgryVo.getExpsrYn());
			searchVo.setFirstIndex(-1);
			List<PrductctgryVo> list =  prductctgryMapper.list(searchVo);
			if (null != list && list.size() > 0) {
				ctgryVo.setChildren(treeFunction(searchVo));
			}
		}
		return resultList;
	}

	@Override
	public List<PrductctgryVo> listByUpperCtgrySn(Long ctgrySn) {
		PrductctgryVo searchVo = new PrductctgryVo();
		searchVo.setUpperCtgrySn(ctgrySn);
		return prductctgryMapper.list(searchVo);
	}*/

}
