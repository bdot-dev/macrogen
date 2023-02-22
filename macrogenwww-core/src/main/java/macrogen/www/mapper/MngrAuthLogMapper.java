package macrogen.www.mapper;


import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MngrAuthLogVo;
import macrogen.www.vo.MngrAuthLogVo;

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
public interface MngrAuthLogMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 권한 로그 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<MngrAuthLogVo> list(MngrAuthLogVo logVo);
	
	List<MngrAuthLogVo> listExcel(MngrAuthLogVo logVo);
	
	MngrAuthLogVo view(MngrAuthLogVo logVo);
	
	MngrAuthLogVo viewRef(MngrAuthLogVo logVo);
	
	List<MngrAuthLogVo> viewMenuList(MngrAuthLogVo logVo);
	
	List<MngrAuthLogVo> viewUrlList(MngrAuthLogVo logVo);
	
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자 권한 로그 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 */
	void insert(MngrAuthLogVo logVo);
	
	void insertMngrMenu(MngrAuthLogVo logVo) throws Exception;
	
	void insertMngrUrl(MngrAuthLogVo logVo) throws Exception;
	
	/**
	 * <pre>
	 * count
	 * 1. 개요   : 관리자 권한 로그 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param logVo
	 * @return
	 */
	int count(MngrAuthLogVo logVo);
}
