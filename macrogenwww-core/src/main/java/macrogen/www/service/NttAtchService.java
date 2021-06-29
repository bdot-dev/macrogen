package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.NttAtchVo;
import macrogen.www.vo.NttVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ NttAtchService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 10. 25. 오전 10:02:24
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface NttAtchService {

	/**
	 * <pre>
	 * updateList
	 * 1. 개요   : 게시판 첨부파일 목록 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @throws Exception
	 */
	void updateList(NttVo nttVo) throws Exception;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 게시판 첨부파일 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttAtchVo
	 * @return
	 * @throws Exception
	 */
	List<NttAtchVo> list(NttAtchVo nttAtchVo) throws Exception;

	/**
	 * <pre>
	 * deleteByNttSn
	 * 1. 개요   : 게시판 첨부 삭제 By NttSn
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttAtchVo
	 * @throws Exception
	 */
	void deleteByNttSn(NttAtchVo nttAtchVo) throws Exception;

}
