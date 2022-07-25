package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.SocialContentsVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ SocialContentService.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:04:11
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface SocialContentsService {

	int count(SocialContentsVo vo) throws Exception;

	List<SocialContentsVo> list(SocialContentsVo vo) throws Exception;

	List<SocialContentsVo> allListBySocialContentsCode(String langCode, String cntntsCtgryCode) throws Exception;

	SocialContentsVo view (SocialContentsVo vo) throws Exception;

	void insert(SocialContentsVo vo) throws Exception;

	void delete(SocialContentsVo vo) throws Exception;

	void update(SocialContentsVo vo) throws Exception;

	SocialContentsVo viewByPk(Long sn) throws Exception;

}
