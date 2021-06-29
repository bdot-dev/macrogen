package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.RoleMngrmenuVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ RoleMngrmenuMapper.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 8. 오전 10:10:38
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface RoleMngrmenuMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자별 메뉴 권한 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrmenuVo
	 * @return
	 */
	List<RoleMngrmenuVo> list(RoleMngrmenuVo roleMngrmenuVo);
	/**
	 * <pre>
	 * view
	 * 1. 개요   : 관리자별 메뉴 권한 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrmenuVo
	 * @return
	 */
	RoleMngrmenuVo view(RoleMngrmenuVo roleMngrmenuVo);
	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 관리자별 메뉴 권한 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrmenuVo
	 */
	void insert(RoleMngrmenuVo roleMngrmenuVo);
	/**
	 * <pre>
	 * update
	 * 1. 개요   : 관리자별 메뉴 권한 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrmenuVo
	 */
	void update(RoleMngrmenuVo roleMngrmenuVo);
	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자별 메뉴 권한 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrmenuVo
	 */
	void delete(RoleMngrmenuVo roleMngrmenuVo);
	/**
	 * <pre>
	 * deleteByRoleId
	 * 1. 개요   : 관리자별 메뉴 권한 삭제 By RoldId
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleMngrmenuVo
	 */
	void deleteByRoleId(RoleMngrmenuVo roleMngrmenuVo);
	void deleteByMenuSn(RoleMngrmenuVo roleMngrmenuVo);
}
