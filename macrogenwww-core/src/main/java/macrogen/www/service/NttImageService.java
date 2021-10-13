package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.NttImageVo;
import macrogen.www.vo.NttVo;

public interface NttImageService {

	void updateList(NttVo nttVo) throws Exception;

	List<NttImageVo> list(NttImageVo nttImageVo) throws Exception;

	void deleteByNttSn(NttImageVo nttImageVo) throws Exception;

}
