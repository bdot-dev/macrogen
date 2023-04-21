package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MainNttVo;


public interface MainNttService {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 게시물 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @return
	 * @throws Exception
	 */
	List<MainNttVo> list(MainNttVo mainNttVo) throws Exception;
	
	/**
	 * <pre>
	 * count
	 * 1. 개요   : 게시물 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @return
	 * @throws Exception
	 */
	int count(MainNttVo mainNttVo) throws Exception;

	/**
	 * <pre>
	 * sortUpdate
	 * 1. 개요   : 노출 순서 정렬
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @throws Exception
	 */
	MainNttVo viewByPk(Long mainNttSn) throws Exception;
	
	/**
	 * <pre>
	 * view
	 * 1. 개요   : 게시물 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @return
	 * @throws Exception
	 */
	MainNttVo view(MainNttVo mainNttVo) throws Exception;
	
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 게시물 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @throws Exception
	 */
	void insert(MainNttVo mainNttVo);
	
	/**
	 * <pre>
	 * update
	 * 1. 개요   : 게시물 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @throws Exception
	 */
	void update(MainNttVo mainNttVo);
	
	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 게시물 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @throws Exception
	 */
	void delete(MainNttVo mainNttVo);
	
	void updateExpsrPrty(MainNttVo mainNttVo) throws Exception;

}
