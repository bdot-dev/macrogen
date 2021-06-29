package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MngrmenuVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ MngrmenuMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:25:41
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface MngrmenuMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 메뉴 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<MngrmenuVo> list(MngrmenuVo param);
	/**
	 * <pre>
	 * view
	 * 1. 개요   : 관리자 메뉴 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrmenuVo
	 * @return
	 */
	MngrmenuVo view(MngrmenuVo mngrmenuVo);
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 메뉴 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrmenuVo
	 */
	void insert(MngrmenuVo mngrmenuVo);
	/**
	 * <pre>
	 * update
	 * 1. 개요   : 관리자 메뉴 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrmenuVo
	 */
	void update(MngrmenuVo mngrmenuVo);
	/**
	 * <pre>
	 * updateSortOrdr
	 * 1. 개요   : 관리자 메뉴 정렬 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrmenuVo
	 */
	void updateSortOrdr(MngrmenuVo mngrmenuVo);
	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 메뉴 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrmenuVo
	 */
	void delete(MngrmenuVo mngrmenuVo);

	Long seq();
}
