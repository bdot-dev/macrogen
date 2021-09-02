package macrogen.www.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

/**
 * <pre>
 * macrogen.www.service
 *    |_ MigrationServiceTest.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 18. 오후 3:20:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/config/spring/context-*-test.xml"})
@Transactional
@Rollback(false)
public class MigrationServiceTest {
	private static final Logger LOGGER = LoggerFactory.getLogger(MigrationServiceTest.class);

	@Autowired
	private NttService nttService;

	@Autowired
	private WnpzService wnpzService;

	@Autowired
	private CmpnyhistService cmpnyhistService;

	@Autowired
	private PatentService patentService;

	@Autowired
	private ThesisService thesisService;

	@Autowired
	private EmpaService empaService;

	/**
	 * 과학자상/여상과학자상/젋은생명정보학자상 이관
	 *   macrogenasis.award_science -> tb_wnpz
	 *   macrogenasis.award_science_en -> tb_wnpz
	 *   macrogenasis.award_wscience -> tb_wnpz
	 *   macrogenasis.award_wscience_en -> tb_wnpz
	 *   macrogenasis.award_life -> tb_wnpz
	 *   macrogenasis.award_life_en -> tb_wnpz
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateAward() throws Exception {
		wnpzService.migrateAward();
		LOGGER.debug("wnpzService.migrateAward() completed.");
	}

	/**
	 * 연혁 이관
	 *   macrogenasis.history -> tb_cmpnyhist
	 *   macrogenasis.history_en -> tb_cmpnyhist
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateHistory() throws Exception {
		cmpnyhistService.migrateHistory();
		LOGGER.debug("cmpnyhistService.migrateHistory() completed.");
	}

	/**
	 * 미디어라이브러리 이관
	 *   macrogenasis.media -> tb_ntt (bbs_id = 'media-library')
	 *   macrogenasis.media_en -> tb_ntt (bbs_id = 'media-library')
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateMedia() throws Exception {
		nttService.migrateMedia();
		LOGGER.debug("nttService.migrateMedia() completed.");
	}

	/**
	 * 특허 이관
	 *   macrogenasis.patent -> tb_patent
	 *   macrogenasis.patent_en -> tb_patent
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migratePatent() throws Exception {
		patentService.migratePatent();
		LOGGER.debug("patentService.migratePatent() completed.");
	}

	/**
	 * 논문 이관
	 *   macrogenasis.thesis -> tb_thesis
	 *   macrogenasis.thesis_en -> tb_thesis
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateThesis() throws Exception {
		thesisService.migrateThesis();
		LOGGER.debug("thesisService.migrateThesis() completed.");
	}

	/**
	 * 채용공고 이관
	 *   채용공고 국문 macrogenasis.board.b_class = 9 -> tb_empa
	 *   채용공고 영문 macrogenasis.board.b_class = 19 -> tb_empa
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateEmpBoard() throws Exception {
		empaService.migrateEmpBoard();
		LOGGER.debug("empaService.migrateEmpBoard() completed.");
	}

	/**
	 * 공지사항 이관
	 *   국문 macrogenasis.board.b_class = 4 -> tb_ntt.bbs_id = 'notice'
	 *   영문 macrogenasis.board.b_class = 14 -> tb_ntt.bbs_id = 'notice'
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateNoticeBoard() throws Exception {
		nttService.migrateNoticeBoard();
		LOGGER.debug("nttService.migrateNoticeBoard() completed.");
	}

	/**
	 * 보도자료 이관
	 *   국문 macrogenasis.board.b_class = 5 -> tb_ntt.bbs_id = 'press-release'
	 *   영문 macrogenasis.board.b_class = 15 -> tb_ntt.bbs_id = 'press-release'
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migratePressReleaseBoard() throws Exception {
		nttService.migratePressReleaseBoard();
		LOGGER.debug("nttService.migratePressReleaseBoard() completed.");
	}

	/**
	 * 투자정보공고 이관 (irdislos)
	 *   국문 macrogenasis.board.b_class = 7 -> tb_ntt.bbs_id = 'irdislos'
	 *   영문 macrogenasis.board.b_class = 17 -> tb_ntt.bbs_id = 'irdislos'
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateIrdislosBoard() throws Exception {
		nttService.migrateIrdislosBoard();
		LOGGER.debug("nttService.migrateIrdislosBoard() completed.");
	}


	/**
	 * 투자정보IR소식 이관 (irnews)
	 *   국문 macrogenasis.board.b_class = 8 -> tb_ntt.bbs_id = 'irnews'
	 *   영문 macrogenasis.board.b_class = 18 -> tb_ntt.bbs_id = 'irnews'
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateIrnewsBoard() throws Exception {
		nttService.migrateIrnewsBoard();
		LOGGER.debug("nttService.migrateIrnewsBoard() completed.");
	}

	/**
	 * 투자문의 이관
	 *   macrogenasis.online_inquiry -> tb_ntt (bbs_id = 'investor-inquiries')
	 *   macrogenasis.online_inquiry_en -> tb_ntt (bbs_id = 'investor-inquiries')
	 * 이전 이관내역 삭제 후, 등록
	 */
	@Test
	public void migrateOnlineInquiry() throws Exception {
		nttService.migrateOnlineInquiry();
		LOGGER.debug("nttService.migrateOnlineInquiry() completed.");
	}

}
