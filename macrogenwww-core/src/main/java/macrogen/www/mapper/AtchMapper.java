package macrogen.www.mapper;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.AtchVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ AtchMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 7. 오후 3:21:00
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface AtchMapper {
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 첨부파일 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param atchVo
	 */
	void insert(AtchVo atchVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 첨부파일 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param atchVo
	 */
	void delete(AtchVo atchVo);

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 첨부파일 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param atchVo
	 * @return
	 */
	AtchVo view(AtchVo atchVo);
}
