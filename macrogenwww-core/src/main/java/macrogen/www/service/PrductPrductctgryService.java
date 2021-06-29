package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.PrductPrductctgryVo;
import macrogen.www.vo.PrductVo;

public interface PrductPrductctgryService {

	void updateList(PrductVo prductVo) throws Exception;

	List<PrductPrductctgryVo> listByPrductSn(Long prductSn) throws Exception;

}
