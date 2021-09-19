package macrogen.www.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import macrogen.www.service.MenuService;
import macrogen.www.service.UrlService;

public class MenuResolver extends HandlerInterceptorAdapter  {

	private static final Logger LOGGER = LoggerFactory.getLogger(MenuResolver.class);

	@Resource(name="urlService")
	private UrlService urlService;

	@Resource(name="menuService")
	private MenuService menuService;

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {

		if (null != response.getContentType()) {
			return true;
		}

		try {
			String path = request.getServletPath();
			LOGGER.debug(path);

			if (StringUtils.isEmpty(path)) {
				return true;
			}

			// set layout_type
			if (path.startsWith("/ko/main") || path.startsWith("/en/main")) {
				request.setAttribute("layout_type", "main");

			} else if (path.startsWith("/ko/company") || path.startsWith("/en/company")) {
				request.setAttribute("layout_type", "company");

			} else if (path.startsWith("/ko/business") || path.startsWith("/en/business")) {
				request.setAttribute("layout_type", "business");

			} else if (path.startsWith("/ko/rnd/institute") || path.startsWith("/en/rnd/institute")) {
				request.setAttribute("layout_type", "rnd_institute");

			} else if (path.startsWith("/ko/esg") || path.startsWith("/en/esg")) {
				request.setAttribute("layout_type", "basic");

			} else {
				// rnd, newsroom, ir, policy
				request.setAttribute("layout_type", "basic");

			}

			// check servletPath empty
			/*
			HttpSession session = request.getSession();
			String path = request.getServletPath();
			if (StringUtils.isEmpty(path)) {
				session.removeAttribute("selected_menu_vo");
				return true;
			}
			*/

			// check simimlar url not exists
			/*
			UrlVo urlVo = urlService.likeOne(path);
			if(null == urlVo){
				session.removeAttribute("selected_menu_vo");
				return true;
			}
			*/

			// set selected menu in session
			/*
			MenuVo menuVo = menuService.viewByPk(urlVo.getMenuSn());
			if (null == menuVo) {
				session.removeAttribute("selected_menu_vo");
				return true;
			} else {
				session.setAttribute("selected_menu_vo", menuVo);
				return true;
			}
			*/

		} catch(Exception e){
			LOGGER.error(e.getMessage() + " : " + e.toString());
		}
		return true;
	}

}
