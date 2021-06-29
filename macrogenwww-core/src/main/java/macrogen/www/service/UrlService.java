package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.UrlVo;

public interface UrlService {

	UrlVo view(UrlVo urlVo) throws Exception;

	UrlVo likeView(UrlVo urlVo) throws Exception;

	List<UrlVo> list(UrlVo urlVo) throws Exception;

	void insert(UrlVo urlVo) throws Exception;

	void update(UrlVo urlVo) throws Exception;

	void delete(UrlVo urlVo) throws Exception;

	int count(UrlVo urlVo) throws Exception;

	UrlVo likeOne(String path) throws Exception;
}
