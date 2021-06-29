package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.PrductctgryVo;

@Mapper
public interface PrductctgryMapper {

	/**
	 * 제폼_카테고리 목록
	 * @param param
	 * @return
	 */
	List<PrductctgryVo> list(PrductctgryVo param);
	/**
	 * 제품_카테고리 상세
	 * @param param
	 * @return
	 */
	PrductctgryVo view(PrductctgryVo param);
	/**
	 * 제품_카테고리 등록
	 * @param param
	 */
	void insert(PrductctgryVo param);
	/**
	 * 제품_카테고리 수정
	 * @param param
	 */
	void update(PrductctgryVo param);
	/**
	 * 제품_카테고리 정렬 수정
	 * @param param
	 */
	void updateSortOrdr(PrductctgryVo param);
	/**
	 * 제품_카테고리 삭제
	 * @param param
	 */
	void delete(PrductctgryVo param);

	Long seq();
}
