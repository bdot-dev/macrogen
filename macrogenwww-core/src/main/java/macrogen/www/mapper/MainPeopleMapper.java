package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.MainPeopleVo;

/**
 * <pre>
 * macrogen.www.mapper
 *    |_ MainPeopleMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2023. 03. 03. 오전 11:48:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface MainPeopleMapper {
	int count(MainPeopleVo vo);

	List<MainPeopleVo> list(MainPeopleVo vo);

	MainPeopleVo view (MainPeopleVo vo);

	Long seq();

	void insert(MainPeopleVo vo);

	void delete(MainPeopleVo vo);

	void update(MainPeopleVo vo);

	void updateSortOrdr(MainPeopleVo vo);

}
