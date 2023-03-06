package macrogen.www.mapper;


import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MngrLogVo;
import macrogen.www.vo.MngrLogVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ RoleMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:10:11
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface MngrLogMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 로그 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<MngrLogVo> list(MngrLogVo logVo);
	
	List<MngrLogVo> listExcel(MngrLogVo logVo);
	
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 로그 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 */
	void insert(MngrLogVo logVo);
	
	/**
	 * <pre>
	 * count
	 * 1. 개요   : 관리자 로그 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 * @return
	 */
	int count(MngrLogVo logVo);
}
