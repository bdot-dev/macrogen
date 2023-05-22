package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MainNttVo;

@Mapper
public interface MainNttMapper {

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 게시물 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @return
	 */
	List<MainNttVo> list(MainNttVo mainNttVo);
	
	/**
	 * <pre>
	 * count
	 * 1. 개요   : 게시물 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @return
	 */
	int count (MainNttVo mainNttVo);
	
	/**
	 * <pre>
	 * view
	 * 1. 개요   : 게시물 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 * @return
	 */
	MainNttVo view(MainNttVo mainNttVo);
	
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 게시물 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
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
	 */
	void delete(MainNttVo mainNttVo);

	/**
	 * <pre>
	 * sortUpdate
	 * 1. 개요   : 노출순서 정렬
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainNttVo
	 */
	void updateExpsrPrty(MainNttVo mainNttVo);
	
	
	Long seq();
}
