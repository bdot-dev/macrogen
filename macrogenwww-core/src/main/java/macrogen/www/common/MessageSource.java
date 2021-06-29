package macrogen.www.common;

import java.util.Locale;

public interface MessageSource {

	public String getMessage(String code, Locale locale);

}
