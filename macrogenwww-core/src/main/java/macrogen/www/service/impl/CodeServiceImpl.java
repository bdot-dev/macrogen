package macrogen.www.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.CodeMapper;
import macrogen.www.service.CodeService;
import macrogen.www.vo.CodeVo;

@Service("codeService")
public class CodeServiceImpl extends EgovAbstractServiceImpl implements CodeService {

	@Resource(name="codeMapper")
	private CodeMapper codeMapper;

	@Cacheable("codeService.allMapList")
	@Override
	public Map<String, CodeVo> allMapList() throws Exception {
		Map<String, CodeVo> map = new HashMap<>();
		
		CodeVo param = new CodeVo();
		param.setFirstIndex(-1);
		for (CodeVo codeVo : codeMapper.list(param)) {
			map.put(String.format("%s:%s", codeVo.getCodeSe(), codeVo.getCode()), codeVo);
		}
		return map;
	}

	@Override
	public List<CodeVo> list(CodeVo codeVo) throws Exception {
		return codeMapper.list(codeVo);
	}

	@Override
	public int count(CodeVo codeVo) throws Exception {
		return codeMapper.count(codeVo);
	}

	@Override
	public CodeVo view(CodeVo codeVo) throws Exception {
		return codeMapper.view(codeVo);
	}

	@Override
	public CodeVo view(String codeSe, String code) throws Exception {
		CodeVo codeVo = new CodeVo();
		codeVo.setCodeSe(codeSe);
		codeVo.setCode(code);
		return codeMapper.view(codeVo);	
	}

	@Override
	public void insert(CodeVo codeVo) throws Exception {
		codeMapper.insert(codeVo);
		
	}

	@Override
	public void update(CodeVo codeVo) throws Exception {
		codeMapper.update(codeVo);
	}

	@Override
	public void delete(CodeVo codeVo) throws Exception {
		codeMapper.delete(codeVo);
	}

	@Override
	public List<CodeVo> listByCodeSe(String codeSe) {
		CodeVo codeVo = new CodeVo();
		codeVo.setCodeSe(codeSe);
		codeVo.setFirstIndex(-1);
		return codeMapper.list(codeVo);
	}



}
