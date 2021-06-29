package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.AtchMapper;
import macrogen.www.mapper.NttAtchMapper;
import macrogen.www.service.NttAtchService;
import macrogen.www.vo.AtchVo;
import macrogen.www.vo.NttAtchVo;
import macrogen.www.vo.NttVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ NttAtchServiceImpl.java
 *
 * </pre>
 * 1. 작성일 : 2018. 10. 25. 오전 10:03:06
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("nttAtchService")
public class NttAtchServiceImpl extends EgovAbstractServiceImpl implements NttAtchService {

	@Resource(name="nttAtchMapper")
	private NttAtchMapper nttAtchMapper;

	@Resource(name="atchMapper")
	private AtchMapper atchMapper;

	@Override
	public void updateList(NttVo nttVo) throws Exception {
		// delete by nttSn
		NttAtchVo deletVo = new NttAtchVo();
		deletVo.setNttSn(nttVo.getNttSn());
		nttAtchMapper.deleteByNttSn(deletVo);

		// insert atchList
		if (null != nttVo.getAtchList() && !nttVo.getAtchList().isEmpty()) {
			for (NttAtchVo nttAtchVo : nttVo.getAtchList()) {
				NttAtchVo insertVo = new NttAtchVo();
				insertVo.setNttSn(nttVo.getNttSn());
				insertVo.setAtchId(nttAtchVo.getAtchId());
				insertVo.setRegisterSn(nttVo.getRegisterSn());
				insertVo.setUpdusrSn(nttVo.getUpdusrSn());
				nttAtchMapper.insert(insertVo);
			}
		}
	}

	@Override
	public List<NttAtchVo> list(NttAtchVo nttAtchVo) throws Exception {
		return nttAtchMapper.list(nttAtchVo);
	}

	@Override
	public void deleteByNttSn(NttAtchVo nttAtchVo) throws Exception {
		NttAtchVo filter = new NttAtchVo();
		filter.setNttSn(nttAtchVo.getNttSn());
		filter.setFirstIndex(-1);
		List<NttAtchVo> nttAtchList = nttAtchMapper.list(filter);

		for (NttAtchVo vo : nttAtchList) {
			// 게시물_첨부 삭제
			NttAtchVo deleteVo = new NttAtchVo();
			deleteVo.setNttSn(vo.getNttSn());
			deleteVo.setAtchId(vo.getAtchId());
			nttAtchMapper.delete(deleteVo);

			// 첨부삭제
			AtchVo atchVo = new AtchVo();
			atchVo.setAtchId(vo.getAtchId());
			atchMapper.delete(atchVo);
		}

	}

}
