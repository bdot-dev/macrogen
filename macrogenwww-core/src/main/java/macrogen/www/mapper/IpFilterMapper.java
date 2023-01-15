package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.IpFilterVo;

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
public interface IpFilterMapper {
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 아이피 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<IpFilterVo> list(IpFilterVo ipFilterVo);
	
	
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 아이피 목록 전체
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param param
	 * @return
	 */
	List<IpFilterVo> listAll();

	/**
	 * <pre>
	 * view
	 * 1. 개요   : 아이피 상세
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 * @return
	 */
	IpFilterVo view(IpFilterVo ipFilterVo);

	/**
	 * <pre>
	 * insert
	 * 1. 개요   : 아이피 등록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 */
	void insert(IpFilterVo ipFilterVo);

	/**
	 * <pre>
	 * update
	 * 1. 개요   : 아이피 수정
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 */
	void update(IpFilterVo ipFilterVo);

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 아이피 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 */
	void delete(IpFilterVo ipFilterVo);

	/**
	 * <pre>
	 * count
	 * 1. 개요   : 아이피 개수
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param ipFilterVo
	 * @return
	 */
	int count(IpFilterVo ipFilterVo);
}
