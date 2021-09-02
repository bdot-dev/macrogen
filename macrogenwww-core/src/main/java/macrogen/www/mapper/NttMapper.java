package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.NttVo;
import macrogen.www.vo.OnlineInquiryVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ NttMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:09:02
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface NttMapper {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 게시물 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<NttVo> list(NttVo param);

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 게시물 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @return
	 */
	NttVo view(NttVo nttVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 게시물 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 */
	void insert(NttVo nttVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 게시물 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 */
	void update(NttVo nttVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 게시물 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 */
	void delete(NttVo nttVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 게시물 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 * @return
	 */
	int count(NttVo nttVo);

	/**
	 * <pre>
	 * viewCount
	 * 1. 개요   : 상세 카운터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param nttVo
	 */
	void increaseRdcnt(NttVo nttVo);

	Long seq();

	void deleteMigratedMedia();

	void migrateMedia(NttVo vo);

	void deleteMigratedNoticeBoard();

	void migrateNoticeBoard(NttVo vo);

	void deleteMigratedPressReleaseBoard();

	void migratePressReleaseBoard(NttVo vo);

	void deleteMigratedIrdislosBoard();

	void migrateIrdislosBoard(NttVo vo);

	void deleteMigratedIrnewsBoard();

	void migrateIrnewsBoard(NttVo vo);

	void deleteMigratedOnlineInquiry();

	List<OnlineInquiryVo> allOnlineInquiryList();
}
