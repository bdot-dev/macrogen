package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.enums.LangId;
import macrogen.www.mapper.EmpaMapper;
import macrogen.www.service.EmpaService;
import macrogen.www.vo.EmpaVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ EmpaServiceImpl.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 11. 오후 2:33:16
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("empaService")
public class EmpaServiceImpl extends EgovAbstractServiceImpl implements EmpaService {

	@Autowired
	private EmpaMapper empaMapper;

	@Override
	public int count(EmpaVo vo) throws Exception {
		return empaMapper.count(vo);
	}

	@Override
	public List<EmpaVo> list(EmpaVo vo) throws Exception {
		return empaMapper.list(vo);
	}

	@Override
	public EmpaVo view(EmpaVo vo) throws Exception {
		return empaMapper.view(vo);
	}

	@Override
	public void insert(EmpaVo vo) throws Exception {
		vo.setEmpaSn(empaMapper.seq());
		empaMapper.insert(vo);
	}

	@Override
	public void delete(EmpaVo vo) throws Exception {
		empaMapper.delete(vo);
	}

	@Override
	public void update(EmpaVo vo) throws Exception {
		empaMapper.update(vo);
	}

	@Override
	public EmpaVo viewByPk(Long sn) throws Exception {
		EmpaVo vo = new EmpaVo();
		vo.setEmpaSn(sn);
		return view(vo);
	}

	@Override
	public void migrateEmpBoard() throws Exception {
		empaMapper.deleteMigratedEmpBoard();

		EmpaVo vo = new EmpaVo();

		vo.setLangCode(LangId.ko.name());
		empaMapper.migrateEmpBoard(vo);

		vo.setLangCode(LangId.en.name());
		empaMapper.migrateEmpBoard(vo);

	}

}
