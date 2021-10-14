package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.enums.LangId;
import macrogen.www.mapper.NttAtchMapper;
import macrogen.www.mapper.NttImageMapper;
import macrogen.www.mapper.NttMapper;
import macrogen.www.service.NttAtchService;
import macrogen.www.service.NttImageService;
import macrogen.www.service.NttService;
import macrogen.www.vo.NttAtchVo;
import macrogen.www.vo.NttImageVo;
import macrogen.www.vo.NttVo;
import macrogen.www.vo.OnlineInquiryVo;

@Service("nttService")
public class NttServiceImpl extends EgovAbstractServiceImpl implements NttService {

	@Resource(name="nttMapper")
	private NttMapper nttMapper;

	@Resource(name="nttAtchService")
	private NttAtchService nttAtchService;

	@Resource(name="nttImageService")
	private NttImageService nttImageService;

	@Resource(name="nttAtchMapper")
	private NttAtchMapper nttAtchMapper;

	@Resource(name="nttImageMapper")
	private NttImageMapper nttImageMapper;

	@Override
	public List<NttVo> list(NttVo nttVo) throws Exception{
		List<NttVo> resultList =  nttMapper.list(nttVo);
		for(NttVo resultVo : resultList) {
			NttAtchVo nttAtchVo = new NttAtchVo();
			nttAtchVo.setFirstIndex(-1);
			nttAtchVo.setNttSn(resultVo.getNttSn());
			List<NttAtchVo> atchList = nttAtchMapper.list(nttAtchVo);
			resultVo.setAtchList(atchList);

			NttImageVo nttImageVo = new NttImageVo();
			nttImageVo.setFirstIndex(-1);
			nttImageVo.setNttSn(resultVo.getNttSn());
			resultVo.setImageList(nttImageMapper.list(nttImageVo));
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

		NttImageVo nttImageVo = new NttImageVo();
		nttImageVo.setFirstIndex(-1);
		nttImageVo.setNttSn(nttVo.getNttSn());
		resultVo.setImageList(nttImageMapper.list(nttImageVo));

		return resultVo;
	}

	@Override
	public void insert(NttVo nttVo) throws Exception{
		// insert tb_ntt and 채번(nttVo.nttSn)
		nttVo.setNttSn(nttMapper.seq());
		nttMapper.insert(nttVo);

		// 재등록 : 게시물_첨부 목록
		nttAtchService.updateList(nttVo);

		// 재등록 : 게시물_이미지 목록
		nttImageService.updateList(nttVo);
	}

	@Override
	public void update(NttVo nttVo) throws Exception{
		nttMapper.update(nttVo);

		// 재등록 : 게시물_첨부 목록
		nttAtchService.updateList(nttVo);

		// 재등록 : 게시물_이미지 목록
		nttImageService.updateList(nttVo);
	}

	@Override
	public void delete(NttVo nttVo) throws Exception{
		// 게시물 첨부 삭제
		NttAtchVo nttAtchVo = new NttAtchVo();
		nttAtchVo.setNttSn(nttVo.getNttSn());
		nttAtchService.deleteByNttSn(nttAtchVo);

		// 게시물 이미지 삭제
		NttImageVo nttImageVo = new NttImageVo();
		nttImageVo.setNttSn(nttVo.getNttSn());
		nttImageService.deleteByNttSn(nttImageVo);

		// 게시물 삭제
		nttMapper.delete(nttVo);
	}

	@Override
	public void increaseRdcnt(NttVo nttVo) throws Exception {
		nttMapper.increaseRdcnt(nttVo);
	}

	@Override
	public List<NttVo> upendFixingList(String langCode, String bbsId) throws Exception {
		NttVo nttVo = new NttVo();
		nttVo.setFirstIndex(-1);
		nttVo.setLangCode(langCode);
		nttVo.setBbsId(bbsId);
		nttVo.setUpendFixingYn("Y");
		return nttMapper.list(nttVo);
	}

	@Override
	public NttVo viewByPk(long nttSn) throws Exception {
		NttVo vo = new NttVo();
		vo.setNttSn(nttSn);
		return view(vo);
	}

	@Override
	public NttVo prev(NttVo listVo) throws Exception {
		return nttMapper.prev(listVo);
	}

	@Override
	public NttVo next(NttVo listVo) throws Exception {
		return nttMapper.next(listVo);
	}

	@Override
	public void migrateMedia() throws Exception {
		nttMapper.deleteMigratedMedia();

		NttVo vo = new NttVo();

		vo.setLangCode(LangId.ko.name());
		nttMapper.migrateMedia(vo);

		vo.setLangCode(LangId.en.name());
		nttMapper.migrateMedia(vo);
	}

	@Override
	public void migrateNoticeBoard() throws Exception {
		nttMapper.deleteMigratedNoticeBoard();

		NttVo vo = new NttVo();

		vo.setLangCode(LangId.ko.name());
		nttMapper.migrateNoticeBoard(vo);

		vo.setLangCode(LangId.en.name());
		nttMapper.migrateNoticeBoard(vo);
	}

	@Override
	public void migratePressReleaseBoard() throws Exception {
		nttMapper.deleteMigratedPressReleaseBoard();

		NttVo vo = new NttVo();

		vo.setLangCode(LangId.ko.name());
		nttMapper.migratePressReleaseBoard(vo);

		vo.setLangCode(LangId.en.name());
		nttMapper.migratePressReleaseBoard(vo);
	}

	@Override
	public void migrateIrdislosBoard() throws Exception {
		nttMapper.deleteMigratedIrdislosBoard();

		NttVo vo = new NttVo();

		vo.setLangCode(LangId.ko.name());
		nttMapper.migrateIrdislosBoard(vo);

		vo.setLangCode(LangId.en.name());
		nttMapper.migrateIrdislosBoard(vo);
	}

	@Override
	public void migrateIrnewsBoard() throws Exception {
		nttMapper.deleteMigratedIrnewsBoard();

		NttVo vo = new NttVo();

		vo.setLangCode(LangId.ko.name());
		nttMapper.migrateIrnewsBoard(vo);

		vo.setLangCode(LangId.en.name());
		nttMapper.migrateIrnewsBoard(vo);
	}

	@Override
	public void migrateOnlineInquiry() throws Exception {
		nttMapper.deleteMigratedOnlineInquiry();

		// 이관대상 전체 목록
		List<OnlineInquiryVo> resultList = nttMapper.allOnlineInquiryList();
		if (null == resultList || resultList.isEmpty()) {
			return;
		}

		for (OnlineInquiryVo result : resultList) {
			NttVo vo = new NttVo();
			vo.setNttSn(result.getoNo());
			vo.setBbsId("investor-inquiries");
			vo.setLangCode(result.getLangCode());
			vo.setNttSj(result.getoTitle());
			vo.setNttCn(result.getoContent());
			vo.setExpsrYn("Y");
			vo.setRegistDt(result.getoRegdate());
			vo.setUpdtDt(result.getoRegdate());
			vo.setMbtlnum(result.getoHp());
			vo.setNmbrWrterNm(result.getoName());
			vo.setEmail(result.getoEmail());
			vo.setRegistIp(result.getoIp());
			nttMapper.insert(vo);
		}

	}

}
