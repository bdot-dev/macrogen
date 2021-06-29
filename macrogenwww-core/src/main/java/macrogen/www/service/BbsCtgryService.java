package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.BbsCtgryVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ BbsCtgryService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 19. 오전 11:30:31
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface BbsCtgryService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 게시판 카테고리 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param 게시판카테고리
	 * @return 게시판카테고리 목록
	 * @throws Exception 예외가 발생하면
	 */
	List<BbsCtgryVo> list(BbsCtgryVo param) throws Exception;

	/**
	 * <pre>
	 * listByBbsId
	 * 1. 개요   : 게시판 카테고리 목록 By bbsId
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param string 게시판 아이디
	 * @return 게시판 카테고리 목록
	 * @throws Exception 예외가 발생하면
	 */
	List<BbsCtgryVo> listByBbsId(String string) throws Exception;

}
