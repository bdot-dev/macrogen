package macrogen.www.interceptor;

import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import macrogen.www.common.CommonStringUtil;
import macrogen.www.service.IpFilterService;
import macrogen.www.vo.IpFilterVo;


/**
 * <pre>
 * macrogen.www.interceptor
 *    |_ IpFilterInterceptor.java
 * 개요 :
 * </pre>
 * 2. 작성자 : eluocnc
 * @version :
 */
public class IpFilterInterceptor extends HandlerInterceptorAdapter {

	private static final Logger LOGGER = LoggerFactory.getLogger(IpFilterInterceptor.class);
	private static final String IS_MOBILE = "MOBILE";
	
	@Resource(name="ipFilterService")
	private IpFilterService ipFilterService;

	@Value("${globals.site.environment}")
    private String environment;

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		
		LOGGER.debug("userIp:{}", request.getRemoteAddr());
		LOGGER.debug("userDevice :{}", request.getHeader("user-agent"));
		LOGGER.debug("servletPath:{}", request.getServletPath());
		
		//Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		//모바일 기기 체크
		String userAgent = request.getHeader("User-Agent").toUpperCase();
		
		boolean devChk = false; 
		if(userAgent.indexOf(IS_MOBILE) > -1) {
			LOGGER.info("MOBILE");
	    } else {
	    	LOGGER.info("PC");
	    	devChk = true;
	    }

		List<IpFilterVo> allowedIpList = ipFilterService.listAll();

		//ip 체크
		

		try {
			
			boolean ipChk = false;
			
			String clientIp = CommonStringUtil.getClientIp(request);
			LOGGER.info("userIp : "+clientIp);
			
			if(allowedIpList.size()==0) {
				ipChk = true;
			}else if(allowedIpList.size()>0) {
				for(int i=0;i<allowedIpList.size();i++) {
					if(clientIp.equals(allowedIpList.get(i).getIp())) {
						ipChk = true;
					}
				}
			}
			
			if(ipChk) {
				return true;
			}
			else if(!ipChk) {
				response.setStatus(HttpServletResponse.SC_TEMPORARY_REDIRECT);
				response.setHeader("Location", "/accessError.jsp");
			}
			
		} catch (Exception e) {
			LOGGER.debug(e.getMessage());
		}

		
		return true;
	}

}
