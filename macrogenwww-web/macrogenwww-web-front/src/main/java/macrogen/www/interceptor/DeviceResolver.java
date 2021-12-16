package macrogen.www.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class DeviceResolver extends HandlerInterceptorAdapter  {

	private static final Logger LOGGER = LoggerFactory.getLogger(DeviceResolver.class);

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		try {
			if(response.getContentType() == null) {
				LOGGER.debug("servletPath:{}", request.getServletPath());
				HttpSession session = request.getSession();

				Device device = DeviceUtils.getCurrentDevice(request);
				if (device.isNormal()) {
					session.setAttribute("DEVICE_TYPE", "pc");
				} else if (device.isMobile()) {
					session.setAttribute("DEVICE_TYPE", "pc");
					//session.setAttribute("DEVICE_TYPE", "mobl");
				} else if (device.isTablet()) {
					session.setAttribute("DEVICE_TYPE", "pc");
				} else {
					session.setAttribute("DEVICE_TYPE", "pc");
				}

			}

		} catch(Exception e){
			LOGGER.error(e.getMessage());
		}
		return true;
	}

}
