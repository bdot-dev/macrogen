package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.RoleVo;

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
public interface RoleMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 권한 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<RoleVo> list(RoleVo param);

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 권한 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 * @return
	 */
	RoleVo view(RoleVo roleVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 권한 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 */
	void insert(RoleVo roleVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 권한 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 */
	void update(RoleVo roleVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 권한 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 */
	void delete(RoleVo roleVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 권한 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 * @return
	 */
	int count(RoleVo roleVo);
}
