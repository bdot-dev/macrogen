package macrogen.www.mapper;


import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.InvstLogVo;


@Mapper
public interface InvstLogMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 투자자 문의 로그 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<InvstLogVo> list(InvstLogVo logVo);
	
	List<InvstLogVo> listExcel(InvstLogVo logVo);
	
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 투자자 문의 로그 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 */
	void insert(InvstLogVo logVo);
	
	/**
	 * <pre>
	 * count
	 * 1. 개요   : 투자자 문의 로그 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 * @return
	 */
	int count(InvstLogVo logVo);
}
