package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.UrlMapper;
import macrogen.www.service.UrlService;
import macrogen.www.vo.UrlVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ UrlServiceImpl.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 12. 오후 1:33:13
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("urlService")
public class UrlServiceImpl extends EgovAbstractServiceImpl implements UrlService {

	@Resource(name="urlMapper")
	private UrlMapper urlMapper;

	@Override
	public UrlVo view(UrlVo urlVo) throws Exception {
		return urlMapper.view(urlVo);
	}

	@Override
	public UrlVo likeView(UrlVo urlVo) throws Exception {
		return urlMapper.likeView(urlVo);
	}

	@Override
	public List<UrlVo> list(UrlVo urlVo) throws Exception {
		return urlMapper.list(urlVo);
	}

	@Override
	public int count(UrlVo urlVo) throws Exception {
		return urlMapper.count(urlVo);
	}

	@Override
	public void insert(UrlVo urlVo) throws Exception {
		urlMapper.insert(urlVo);
	}

	@Override
	public void update(UrlVo urlVo) throws Exception {
		urlMapper.update(urlVo);
	}

	@Override
	public void delete(UrlVo urlVo) throws Exception {
		urlMapper.delete(urlVo);
	}

	@Override
	public UrlVo likeOne(String path) throws Exception {
		UrlVo urlVo = new UrlVo();
		urlVo.setUrl(path);
		urlVo = urlMapper.view(urlVo);
		if (null != urlVo) {
			return urlVo;
		} else {
			urlVo = new UrlVo();
			urlVo.setUrl(path);
			return urlMapper.likeView(urlVo);
		}
	}

}
