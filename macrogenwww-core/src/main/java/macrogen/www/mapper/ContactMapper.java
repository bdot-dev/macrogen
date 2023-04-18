package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.ContactVo;


/**
 * <pre>
 * macrogen.www.mapper
 *    |_ ContactMapper.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2023. 3. 15
 * 2. 작성자 : eluocnc
 * @version :
 */
@Mapper
public interface ContactMapper {

	int count(ContactVo listVo);

	List<ContactVo> list(ContactVo vo);

	Long seq();

	void delete(ContactVo vo);

	void insert(ContactVo vo);
	
	ContactVo view(ContactVo vo);

}
