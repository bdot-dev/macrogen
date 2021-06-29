package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.NttAtchMapper;
import macrogen.www.mapper.NttMapper;
import macrogen.www.service.NttAtchService;
import macrogen.www.service.NttService;
import macrogen.www.vo.NttAtchVo;
import macrogen.www.vo.NttVo;

@Service("nttService")
public class NttServiceImpl extends EgovAbstractServiceImpl implements NttService {

	@Resource(name="nttMapper")
	private NttMapper nttMapper;

	@Resource(name="nttAtchService")
	private NttAtchService nttAtchService;

	@Resource(name="nttAtchMapper")
	private NttAtchMapper nttAtchMapper;

	@Override
	public List<NttVo> list(NttVo nttVo) throws Exception{
		List<NttVo> resultList =  nttMapper.list(nttVo);
		for(NttVo resultVo : resultList) {
			NttAtchVo nttAtchVo = new NttAtchVo();
			nttAtchVo.setFirstIndex(-1);
			nttAtchVo.setNttSn(resultVo.getNttSn());
			List<NttAtchVo> atchList = nttAtchMapper.list(nttAtchVo);
			resultVo.setAtchList(atchList);
		}
		return resultList;

	}

	@Override
	public int count(NttVo nttVo) throws Exception {
		return nttMapper.count(nttVo);
	}

	@Override
	public NttVo view(NttVo nttVo) throws Exception{
		NttVo resultVo = nttMapper.view(nttVo);

		// 첨부목록 : 뉴스_내용_이미지 목록
		NttAtchVo nttAtchVo = new NttAtchVo();
		nttAtchVo.setFirstIndex(-1);
		nttAtchVo.setNttSn(nttVo.getNttSn());
		List<NttAtchVo> atchList = nttAtchMapper.list(nttAtchVo);
		resultVo.setAtchList(atchList);

		return resultVo;
	}

	@Override
	public void insert(NttVo nttVo) throws Exception{
		// insert tb_ntt and 채번(nttVo.nttSn)
		nttVo.setNttSn(nttMapper.seq());
		nttMapper.insert(nttVo);

		// 재등록 : 게시물_첨부 목록
		nttAtchService.updateList(nttVo);

	}

	@Override
	public void update(NttVo nttVo) throws Exception{
		nttMapper.update(nttVo);

		// 재등록 : 게시물_첨부 목록
		nttAtchService.updateList(nttVo);
	}

	@Override
	public void delete(NttVo nttVo) throws Exception{
		// 게시물 첨부 삭제
		NttAtchVo nttAtchVo = new NttAtchVo();
		nttAtchVo.setNttSn(nttVo.getNttSn());
		nttAtchService.deleteByNttSn(nttAtchVo);

		// 게시물 삭제
		nttMapper.delete(nttVo);
	}

	@Override
	public void increaseRdcnt(NttVo nttVo) throws Exception {
		nttMapper.increaseRdcnt(nttVo);
	}

}
