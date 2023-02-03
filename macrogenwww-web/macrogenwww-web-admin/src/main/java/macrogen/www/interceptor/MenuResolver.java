package macrogen.www.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import macrogen.www.service.MngrService;
import macrogen.www.service.MngrmenuService;
import macrogen.www.service.MngrurlService;

import macrogen.www.vo.MngrVo;
import macrogen.www.vo.MngrmenuVo;
import macrogen.www.vo.MngrurlVo;

public class MenuResolver extends HandlerInterceptorAdapter  {

	private static final Logger LOGGER = LoggerFactory.getLogger(MenuResolver.class);

	@Resource(name="mngrurlService")
	private MngrurlService mngrurlService;

	@Resource(name="mngrmenuService")
	private MngrmenuService mngrmenuService;
	
	@Resource(name="mngrService")
	private MngrService mngrService;
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {

		// 비로그인 URL 제외
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if ("anonymousUser".equals(authentication.getPrincipal())) {
			return true;
		}else {
			MngrVo mngrVo = (MngrVo) authentication.getPrincipal();
			try {
				// 중복로그인 체크 
				Boolean bUserOverlap = false;
				if(!StringUtils.isEmpty(mngrVo)) {
					MngrVo admInfo = mngrService.view(mngrVo);
					if(admInfo != null && admInfo.getLoginTkn().equals(mngrVo.getLoginTkn()) ) bUserOverlap = true;
				}
				
				
				request.setAttribute("bUserOverlap", bUserOverlap);
				request.setAttribute("mngrVo", mngrVo);
				
				
			}catch (Exception e) {
				LOGGER.error(e.getMessage() + " : " + e.toString());
				//return false;
			}
		}

		if (null != response.getContentType()) {
			return true;
		}

		try {
			// check servletPath empty
			HttpSession session = request.getSession();
			String path = request.getServletPath();
			if (StringUtils.isEmpty(path)) {
				session.removeAttribute("selected_menu_vo");
				return true;
			}

			// check simimlar url not exists
			MngrurlVo urlVo = mngrurlService.likeOne(path);
			if (null == urlVo) {
				session.removeAttribute("selected_menu_vo");
				return true;
			}

			// set selected menu in session
			MngrmenuVo mngrmenuVo = mngrmenuService.viewByPk(urlVo.getMenuSn());
			if (null == mngrmenuVo) {
				session.removeAttribute("selected_menu_vo");
				return true;
			} else {
				session.setAttribute("selected_menu_vo", mngrmenuVo);
				return true;
			}

		} catch(Exception e){
			LOGGER.error(e.getMessage() + " : " + e.toString());
		}
		return true;
	}

}
