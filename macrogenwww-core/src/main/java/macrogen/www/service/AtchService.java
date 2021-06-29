package macrogen.www.service;

import macrogen.www.vo.AtchVo;

/**
 * <pre>
 * macrogen.www.service
 *    |_ AtchService.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:41:50
 * 2. 작성자 : eluocnc
 * @version :
 */
public interface AtchService {

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 첨부 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param atchVo 첨부파일
	 * @throws Exception 예외가 발생하면
	 */
	void insert(AtchVo atchVo) throws Exception;

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 첨부 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param atchVo 첨부파일
	 * @throws Exception 예외가 발생하면
	 */
	void delete(AtchVo atchVo) throws Exception;

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 첨부 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param atchVo 첨부파일
	 * @return 첨부파일
	 * @throws Exception 예외가 발생하면
	 */
	AtchVo view(AtchVo atchVo) throws Exception;

	AtchVo viewByPk(String atchId) throws Exception;

}
