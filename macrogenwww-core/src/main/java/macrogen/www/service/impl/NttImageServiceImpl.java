package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.AtchMapper;
import macrogen.www.mapper.NttImageMapper;
import macrogen.www.service.NttImageService;
import macrogen.www.vo.AtchVo;
import macrogen.www.vo.NttImageVo;
import macrogen.www.vo.NttVo;

/**
 * <pre>
 * macrogen.www.service.impl
 *    |_ NttImageServiceImpl.java
 *
 * </pre>
 * 1. 작성일 : 2018. 10. 25. 오전 10:03:06
 * 2. 작성자 : eluocnc
 * @version :
 */
@Service("nttImageService")
public class NttImageServiceImpl extends EgovAbstractServiceImpl implements NttImageService {

	@Resource(name="nttImageMapper")
	private NttImageMapper nttImageMapper;

	@Resource(name="atchMapper")
	private AtchMapper atchMapper;

	@Override
	public void updateList(NttVo nttVo) throws Exception {
		// delete by nttSn
		NttImageVo deletVo = new NttImageVo();
		deletVo.setNttSn(nttVo.getNttSn());
		nttImageMapper.deleteByNttSn(deletVo);

		// insert imageList
		if (null != nttVo.getImageList() && !nttVo.getImageList().isEmpty()) {
			for (NttImageVo nttImageVo : nttVo.getImageList()) {
				NttImageVo insertVo = new NttImageVo();
				insertVo.setNttSn(nttVo.getNttSn());
				insertVo.setAtchId(nttImageVo.getAtchId());
				insertVo.setRegisterSn(nttVo.getRegisterSn());
				insertVo.setUpdusrSn(nttVo.getUpdusrSn());
				nttImageMapper.insert(insertVo);
			}
		}
	}

	@Override
	public List<NttImageVo> list(NttImageVo nttImageVo) throws Exception {
		return nttImageMapper.list(nttImageVo);
	}

	@Override
	public void deleteByNttSn(NttImageVo nttImageVo) throws Exception {
		NttImageVo filter = new NttImageVo();
		filter.setNttSn(nttImageVo.getNttSn());
		filter.setFirstIndex(-1);
		List<NttImageVo> nttImageList = nttImageMapper.list(filter);

		for (NttImageVo vo : nttImageList) {
			// 게시물_첨부 삭제
			NttImageVo deleteVo = new NttImageVo();
			deleteVo.setNttSn(vo.getNttSn());
			deleteVo.setAtchId(vo.getAtchId());
			nttImageMapper.delete(deleteVo);

			// 첨부삭제
			AtchVo atchVo = new AtchVo();
			atchVo.setAtchId(vo.getAtchId());
			atchMapper.delete(atchVo);
		}

	}

}
