package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.NttVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ NttService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:46:21
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface NttService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 게시물 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @return
	 * @throws Exception
	 */
	List<NttVo> list(NttVo nttVo) throws Exception;

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 게시물 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @return
	 * @throws Exception
	 */
	int count(NttVo nttVo) throws Exception;

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 게시물 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @return
	 * @throws Exception
	 */
	NttVo view(NttVo nttVo) throws Exception;

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 게시물 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @throws Exception
	 */
	void insert(NttVo nttVo) throws Exception;

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 게시물 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @throws Exception
	 */
	void update(NttVo nttVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 게시물 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @throws Exception
	 */
	void delete(NttVo nttVo) throws Exception;

    /**
     * <pre>
     * viewCount
     * 1. 개요   : 상세 뷰 카운터
     * 2. 작성자 : eluocnc
     * </pre>
     *
     * @param nttVo
     * @throws Exception
     */
    void increaseRdcnt(NttVo nttVo) throws Exception;

	List<NttVo> upendFixingList(String langCode, String bbsId) throws Exception;

	NttVo viewByPk(long nttSn) throws Exception;

	NttVo prev(NttVo listVo) throws Exception;

	NttVo next(NttVo listVo) throws Exception;

	void migrateMedia() throws Exception;

	void migrateNoticeBoard() throws Exception;

	void migratePressReleaseBoard() throws Exception;

	void migrateIrdislosBoard() throws Exception;

	void migrateIrnewsBoard() throws Exception;

	void migrateOnlineInquiry() throws Exception;

}
