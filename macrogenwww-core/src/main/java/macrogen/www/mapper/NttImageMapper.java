package macrogen.www.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import macrogen.www.vo.NttImageVo;

@Mapper
public interface NttImageMapper {

	void insert(NttImageVo nttImageVo);

	void deleteByNttSn(NttImageVo nttImageVo);

	List<NttImageVo> list(NttImageVo nttImageVo);

	void delete(NttImageVo nttImageVo);

}
