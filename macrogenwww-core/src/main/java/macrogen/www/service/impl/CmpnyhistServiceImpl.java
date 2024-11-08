package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.enums.LangId;
import macrogen.www.mapper.CmpnyhistMapper;
import macrogen.www.service.CmpnyhistService;
import macrogen.www.vo.CmpnyhistVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ CmpnyhistServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:28:14
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("cmpnyhistService")
public class CmpnyhistServiceImpl extends EgovAbstractServiceImpl implements CmpnyhistService {

	@Autowired
	private CmpnyhistMapper cmpnyhistMapper;

	@Override
	public int count(CmpnyhistVo vo) throws Exception {
		return cmpnyhistMapper.count(vo);
	}

	@Override
	public List<CmpnyhistVo> list(CmpnyhistVo vo) throws Exception {
		return cmpnyhistMapper.list(vo);
	}

	@Override
	public List<CmpnyhistVo> listByCmpnyhistGroupSn(String langCode, Long cmpnyhistGroupSn) throws Exception {
		CmpnyhistVo vo = new CmpnyhistVo();
		vo.setLangCode(langCode);
		vo.setCmpnyhistGroupSn(cmpnyhistGroupSn);
		vo.setFirstIndex(-1);
		return cmpnyhistMapper.list(vo);
	}

	@Override
	public List<CmpnyhistVo> listByYearAndCmpnyhistGroupSn(String langCode, String year, Long cmpnyhistGroupSn)
			throws Exception {
		CmpnyhistVo vo = new CmpnyhistVo();
		vo.setLangCode(langCode);
		vo.setSearchYear(year);
		vo.setCmpnyhistGroupSn(cmpnyhistGroupSn);
		vo.setFirstIndex(-1);
		return cmpnyhistMapper.list(vo);
	}

	@Override
	public CmpnyhistVo view(CmpnyhistVo vo) throws Exception {
		return cmpnyhistMapper.view(vo);
	}

	@Override
	public void insert(CmpnyhistVo vo) throws Exception {
		vo.setCmpnyhistSn(cmpnyhistMapper.seq());
		cmpnyhistMapper.insert(vo);
	}

	@Override
	public void delete(CmpnyhistVo vo) throws Exception {
		cmpnyhistMapper.delete(vo);
	}

	@Override
	public void update(CmpnyhistVo vo) throws Exception {
		cmpnyhistMapper.update(vo);
	}

	@Override
	public CmpnyhistVo viewByPk(Long cmpnyhistSn) throws Exception {
		CmpnyhistVo vo = new CmpnyhistVo();
		vo.setCmpnyhistSn(cmpnyhistSn);
		return view(vo);
	}

	@Override
	public List<String> distinctYearList(String langCode, Long cmpnyhistGroupSn) throws Exception {
		CmpnyhistVo vo = new CmpnyhistVo();
		vo.setLangCode(langCode);
		vo.setCmpnyhistGroupSn(cmpnyhistGroupSn);
		return cmpnyhistMapper.distinctYearList(vo);
	}

	@Override
	public void migrateHistory() throws Exception {
		cmpnyhistMapper.deleteMigratedHistory();

		CmpnyhistVo vo = new CmpnyhistVo();

		vo.setLangCode(LangId.ko.name());
		cmpnyhistMapper.migrateHistory(vo);

		vo.setLangCode(LangId.en.name());
		cmpnyhistMapper.migrateHistory(vo);
	}

}
