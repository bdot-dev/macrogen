package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.MngrmenuMapper;
import macrogen.www.service.MngrmenuService;
import macrogen.www.service.MngrurlService;
import macrogen.www.service.RoleMngrmenuService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.MngrmenuVo;
import macrogen.www.vo.MngrurlVo;
import macrogen.www.vo.RoleMngrmenuVo;

@Service("mngrmenuService")
public class MngrmenuServiceImpl extends EgovAbstractServiceImpl implements MngrmenuService {

	@Resource(name="mngrmenuMapper")
	private MngrmenuMapper mngrmenuMapper;

	@Resource(name="mngrurlService")
	private MngrurlService mngrurlService;

	@Resource(name="roleMngrmenuService")
	private RoleMngrmenuService roleMngrmenuService;

	@Override
	public MngrmenuVo view(MngrmenuVo mngrmenuVo) throws Exception {
		return mngrmenuMapper.view(mngrmenuVo);
	}

	@Override
	public MngrmenuVo viewByPk(Long menuSn) throws Exception {
		MngrmenuVo mngrmenuVo = new MngrmenuVo();
		mngrmenuVo.setMenuSn(menuSn);
		return view(mngrmenuVo);
	}

	@Override
	public List<MngrmenuVo> list(MngrmenuVo mngrmenuVo) throws Exception {
		return mngrmenuMapper.list(mngrmenuVo);
	}

	@Override
	public MngrmenuVo firstNotEmptyUrl(MngrmenuVo mngrmenuVo, MngrVo loginVo) throws Exception {
		MngrmenuVo param = new MngrmenuVo();
		param.setMenuSnPath(mngrmenuVo.getMenuSnPath());
		param.setRoleId(loginVo.getRoleId());
		param.setNotEmptyUrlYn("Y");
		param.setFirstIndex(0);
		param.setRecordCountPerPage(1);
		List<MngrmenuVo> menuList = mngrmenuMapper.list(param);
		if (null != menuList && menuList.size() > 0) {
			return menuList.get(0);
		} else {
			return null;
		}
	}

	/**
	 * <pre>
	 * tree
	 * 1. 개요   : 3차까지 트리구조의 목록 리턴
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @see macrogen.www.service.MngrmenuService#tree(macrogen.www.vo.MngrmenuVo)
	 * @param mngrmenuVo
	 * @return
	 * @throws Exception
	 */
	@Override
	public List<MngrmenuVo> tree(MngrmenuVo mngrmenuVo) throws Exception {
		// 최상위 목록 (1st list)
		List<MngrmenuVo> firstList = mngrmenuMapper.list(mngrmenuVo);
		for (MngrmenuVo first : firstList) {
			// 2nd list
			mngrmenuVo.setUpperMenuSn(first.getMenuSn());
			mngrmenuVo.setTopmostYn("N");
			List<MngrmenuVo> secondList = mngrmenuMapper.list(mngrmenuVo);
			for (MngrmenuVo second : secondList) {
				// 3nd list
				mngrmenuVo.setUpperMenuSn(second.getMenuSn());
				mngrmenuVo.setTopmostYn("N");
				List<MngrmenuVo> thirdList = mngrmenuMapper.list(mngrmenuVo);
				second.setChildren(thirdList);
			}
			first.setChildren(secondList);
		}
		return firstList;
	}

	@Override
	public void insert(MngrmenuVo mngrmenuVo) throws Exception {
		Long menuSn = mngrmenuMapper.seq();
		mngrmenuVo.setMenuSn(menuSn);
		mngrmenuMapper.insert(mngrmenuVo);
	}

	@Override
	public void update(MngrmenuVo mngrmenuVo) throws Exception {
		mngrmenuMapper.update(mngrmenuVo);
	}

	@Override
	public void updateSortOrdr(MngrmenuVo mngrmenuVo) throws Exception {
		mngrmenuMapper.updateSortOrdr(mngrmenuVo);
	}

	@Override
	public void delete(MngrmenuVo mngrmenuVo) throws Exception {
		// delete tb_mngrurl
		MngrurlVo mngrurlVo = new MngrurlVo();
		mngrurlVo.setMenuSn(mngrmenuVo.getMenuSn());
		mngrurlVo.setFirstIndex(-1);
		List<MngrurlVo> mngrurlList = mngrurlService.list(mngrurlVo);
		for (MngrurlVo vo : mngrurlList) {
			mngrurlService.delete(vo);
		}

		// delete tb_role_mngrmenu
		RoleMngrmenuVo roleMngrmenuVo = new RoleMngrmenuVo();
		roleMngrmenuVo.setMenuSn(mngrmenuVo.getMenuSn());
		roleMngrmenuService.deleteByMenuSn(roleMngrmenuVo);

		mngrmenuMapper.delete(mngrmenuVo);
	}

}
