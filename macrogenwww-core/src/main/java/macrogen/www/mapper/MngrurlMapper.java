package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MngrurlVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ MngrurlMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 12. 오후 1:35:56
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface MngrurlMapper {

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 관리자 URL 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 * @return
	 */
	MngrurlVo view(MngrurlVo mngrurlVo);

	/**
	 * <pre>
	 * likeView
	 * 1. 개요   : 관리자 URL 링크 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 * @return
	 */
	MngrurlVo likeView(MngrurlVo mngrurlVo);

	/**
	 * <pre>
	 * menuSnView
	 * 1. 개요   : 관리자 URL By MenuSn
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 * @return
	 */
	MngrurlVo menuSnView(MngrurlVo mngrurlVo);

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 URL 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 * @return
	 */
	List<MngrurlVo> list(MngrurlVo mngrurlVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 URL 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 */
	void insert(MngrurlVo mngrurlVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 관리자 URL 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 */
	void update(MngrurlVo mngrurlVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 URL 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 */
	void delete(MngrurlVo mngrurlVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 관리자 URL 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 * @return
	 */
	int count(MngrurlVo mngrurlVo);

}
