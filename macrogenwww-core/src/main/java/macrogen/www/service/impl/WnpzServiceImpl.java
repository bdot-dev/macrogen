package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.enums.Codes;
import macrogen.www.enums.LangId;
import macrogen.www.mapper.WnpzMapper;
import macrogen.www.service.WnpzService;
import macrogen.www.vo.WnpzVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ WnpzServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:30:20
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("wnpzService")
public class WnpzServiceImpl extends EgovAbstractServiceImpl implements WnpzService {

	@Autowired
	private WnpzMapper wnpzMapper;

	@Override
	public int count(WnpzVo vo) throws Exception {
		return wnpzMapper.count(vo);
	}

	@Override
	public List<WnpzVo> list(WnpzVo vo) throws Exception {
		return wnpzMapper.list(vo);
	}

	@Override
	public List<WnpzVo> allListByWnpzClCode(String langCode, String wnpzClCode) throws Exception {
		WnpzVo vo = new WnpzVo();
		vo.setLangCode(langCode);
		vo.setWnpzClCode(wnpzClCode);
		vo.setFirstIndex(-1);
		return wnpzMapper.list(vo);
	}

	@Override
	public WnpzVo view(WnpzVo vo) throws Exception {
		return wnpzMapper.view(vo);
	}

	@Override
	public void insert(WnpzVo vo) throws Exception {
		vo.setWnpzSn(wnpzMapper.seq());
		wnpzMapper.insert(vo);
	}

	@Override
	public void delete(WnpzVo vo) throws Exception {
		wnpzMapper.delete(vo);
	}

	@Override
	public void update(WnpzVo vo) throws Exception {
		wnpzMapper.update(vo);
	}

	@Override
	public WnpzVo viewByPk(Long sn) throws Exception {
		WnpzVo vo = new WnpzVo();
		vo.setWnpzSn(sn);
		return view(vo);
	}

	@Override
	public WnpzVo prev(WnpzVo vo) throws Exception {
		return wnpzMapper.prev(vo);
	}

	@Override
	public WnpzVo next(WnpzVo vo) throws Exception {
		return wnpzMapper.next(vo);
	}

	@Override
	public void migrateAward() throws Exception {
		wnpzMapper.deleteMigratedAward();

		WnpzVo vo = new WnpzVo();

		vo.setLangCode(LangId.ko.name());
		vo.setWnpzClCode(Codes.WnpzClCode.msa.name());
		wnpzMapper.migrateAward(vo);

		vo.setLangCode(LangId.en.name());
		vo.setWnpzClCode(Codes.WnpzClCode.msa.name());
		wnpzMapper.migrateAward(vo);

		vo.setLangCode(LangId.ko.name());
		vo.setWnpzClCode(Codes.WnpzClCode.wsa.name());
		wnpzMapper.migrateAward(vo);

		vo.setLangCode(LangId.en.name());
		vo.setWnpzClCode(Codes.WnpzClCode.wsa.name());
		wnpzMapper.migrateAward(vo);

		vo.setLangCode(LangId.ko.name());
		vo.setWnpzClCode(Codes.WnpzClCode.yba.name());
		wnpzMapper.migrateAward(vo);

		vo.setLangCode(LangId.en.name());
		vo.setWnpzClCode(Codes.WnpzClCode.yba.name());
		wnpzMapper.migrateAward(vo);
	}

}
