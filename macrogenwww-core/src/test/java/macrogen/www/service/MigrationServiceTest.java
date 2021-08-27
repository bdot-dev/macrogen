package macrogen.www.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
public class MigrationServiceTest {
	private static final Logger LOGGER = LoggerFactory.getLogger(MigrationServiceTest.class);

	@Autowired
	private NttService nttService;

	@Test
	public void migratePressRelease() throws Exception {
		nttService.migratePressRelease();
		LOGGER.debug("nttService.migratePressRelease() completed.");
	}

}
