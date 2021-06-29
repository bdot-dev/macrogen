package macrogen.www.scheduled;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class SampleScheduled {
	private static final Logger LOGGER = LoggerFactory.getLogger(SampleScheduled.class);

	/**
	 * 샘플 스케줄러. 매분 0,10,20,30,40,50 초에 수행
	 * @throws Exception
	 */
	@Scheduled(cron="0,10,20,30,40,50 * * * * *")
	public void sample() throws Exception {
		LOGGER.info("sample() started...");

	}
}
