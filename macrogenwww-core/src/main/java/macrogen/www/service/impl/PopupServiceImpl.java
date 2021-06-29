package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.PopupMapper;
import macrogen.www.service.PopupService;
import macrogen.www.vo.PopupVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ PopupServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 1. 오전 11:01:33
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("popupService")
public class PopupServiceImpl extends EgovAbstractServiceImpl implements PopupService{

	@Resource(name="popupMapper")
	private PopupMapper popupMapper;

	@Override
	public List<PopupVo> list(PopupVo popupVo) throws Exception {
		return popupMapper.list(popupVo);
	}

	@Override
	public int count(PopupVo popupVo) throws Exception {
		return popupMapper.count(popupVo);
	}

	@Override
	public PopupVo view(PopupVo popupVo) throws Exception {
		return popupMapper.view(popupVo);
	}

	@Override
	public void insert(PopupVo popupVo) throws Exception {
		popupVo.setPopupSn(popupMapper.seq());
		popupMapper.insert(popupVo);
	}

	@Override
	public void update(PopupVo popupVo) throws Exception {
		popupMapper.update(popupVo);
	}

	@Override
	public void delete(PopupVo popupVo) throws Exception {
		popupMapper.delete(popupVo);
	}

	@Override
	public void updateSortOrdr(PopupVo popupVo) throws Exception {
		popupMapper.updateSortOrdr(popupVo);
	}

	@Override
	public void increaseClickCo(PopupVo popupVo) throws Exception {
		popupMapper.increaseClickCo(popupVo);
	}

}
