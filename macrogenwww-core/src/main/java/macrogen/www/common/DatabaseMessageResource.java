package macrogen.www.common;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.support.AbstractMessageSource;

import macrogen.www.service.CharstService;
import macrogen.www.vo.CharstVo;

public class DatabaseMessageResource extends AbstractMessageSource {

	private static final Logger LOGGER = LoggerFactory.getLogger(DatabaseMessageResource.class);

	private MessageSource messageSource;

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	/**
	 * 호출되는 경우:
	 */
	@Override
	protected MessageFormat resolveCode(String code, Locale locale) {
		try {
			Map<String, CharstVo> messageMap = ((CharstService) messageSource).allMap();
			CharstVo charstVo =  messageMap.get(code);
			if (null == charstVo) {
				return null;
			}
			String charst = null;
			if ("ko".equals(locale.getLanguage())) {
				charst = charstVo.getCharstKo();
			} else if ("en".equals(locale.getLanguage())) {
				charst = charstVo.getCharstEn();
			} else if ("zh".equals(locale.getLanguage())) {
				charst = charstVo.getCharstZh();
			} else {
				charst = charstVo.getCharst();
			}
			return new MessageFormat(charst, locale);
			
		} catch (Exception e) {
			LOGGER.debug(e.getMessage());
		}
		return null;
	}

}
