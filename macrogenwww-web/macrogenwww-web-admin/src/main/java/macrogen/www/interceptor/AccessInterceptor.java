package macrogen.www.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import macrogen.www.common.CommonStringUtil;
import macrogen.www.exception.BaseException;
import macrogen.www.service.RoleMngrurlService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.RoleMngrurlVo;

/**
 * <pre>
 * macrogen.www.interceptor
 *    |_ AccessInterceptor.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 12. 14. 오후 1:11:59
 * 2. 작성자 : eluocnc
 * @version :
 */
public class AccessInterceptor extends HandlerInterceptorAdapter {

	private static final Logger LOGGER = LoggerFactory.getLogger(AccessInterceptor.class);

	@Resource(name="roleMngrurlService")
	private RoleMngrurlService roleMngrurlService;

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{

		// XMLHttpRequest 제외
		if (null != request.getHeader("x-requested-with")) {
			return true;
		}

		// 비로그인 URL 제외
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if ("anonymousUser".equals(authentication.getPrincipal())) {
			return true;
		}

		MngrVo mngrVo = (MngrVo) authentication.getPrincipal();

		String servletPath = request.getServletPath();
		LOGGER.info("아이피:::::::::::::::::::::::"+CommonStringUtil.getClientIp(request));
		LOGGER.debug("servletPath:{}", servletPath);

		RoleMngrurlVo roleMngrurlVo = new RoleMngrurlVo();
		roleMngrurlVo.setRoleId(mngrVo.getRoleId());
		roleMngrurlVo.setUrl(servletPath);
		roleMngrurlVo = roleMngrurlService.likeView(roleMngrurlVo);
		if (null == roleMngrurlVo) {
			throw new BaseException("unauthorized");
		}
		return true;
	}

}
