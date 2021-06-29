package macrogen.www.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.common.MessageSource;
import macrogen.www.mapper.CharstMapper;
import macrogen.www.service.CharstService;
import macrogen.www.vo.CharstVo;

@Service("charstService")
public class CharstServiceImpl extends EgovAbstractServiceImpl 
		implements CharstService, MessageSource {

	@Resource(name="charstMapper")
	private CharstMapper charstMapper;

	@Override
	public List<CharstVo> list(CharstVo charstVo) throws Exception {
		return charstMapper.list(charstVo);
	}

	@Override
	public int count(CharstVo charstVo) throws Exception {
		return charstMapper.count(charstVo);
	}

	@Override
	public CharstVo view(CharstVo charstVo) throws Exception {
		return charstMapper.view(charstVo);
	}

	@Override
	public void insert(CharstVo charstVo) throws Exception {
		charstMapper.insert(charstVo);
	}

	@Override
	public void update(CharstVo charstVo) throws Exception {
		charstMapper.update(charstVo);
	}
	
	@Override
	public void delete(CharstVo charstVo) throws Exception {
		charstMapper.delete(charstVo);
	}
	
	@Cacheable("charstService.allMap")
	@Override
	public Map<String, CharstVo> allMap() throws Exception {
		Map<String, CharstVo> map = new HashMap<>();

		CharstVo charstVo = new CharstVo();
		charstVo.setFirstIndex(-1);
		List<CharstVo> list = charstMapper.list(charstVo);
		for (CharstVo vo : list) {
			map.put(vo.getCharstId(), vo); 
		}
		return map;
	}

	@Override
	public String getMessage(String code, Locale locale) {
		try {
			CharstVo charstVo = new CharstVo();
			charstVo.setCharstId(code);
			charstVo = charstMapper.view(charstVo);
			
			if (null == charstVo) {
				return null;
			}

			String charst = null;
			if ("ko".equals(locale.getLanguage())) {
				charst = charstVo.getCharstKo();
			} else if ("en".equals(locale.getLanguage())) {
				charst = charstVo.getCharstEn();
			} else if ("zh".equals(locale.getLanguage())) {
				charst = charstVo.getCharstZh();
			} else {
				charst = charstVo.getCharst();
			}
			
			return charst;
		} catch (Exception e) {
			return null;
		}	
	}

}
