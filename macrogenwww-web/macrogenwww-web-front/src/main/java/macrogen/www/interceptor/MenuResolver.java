package macrogen.www.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import macrogen.www.service.MenuService;
import macrogen.www.service.UrlService;
import macrogen.www.vo.MenuVo;
import macrogen.www.vo.UrlVo;

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
			// check servletPath empty
			HttpSession session = request.getSession();
			String path = request.getServletPath();
			if (StringUtils.isEmpty(path)) {
				session.removeAttribute("selected_menu_vo");
				return true;
			}

			// check simimlar url not exists
			UrlVo urlVo = urlService.likeOne(path);
			if(null == urlVo){
				session.removeAttribute("selected_menu_vo");
				return true;
			}

			// set selected menu in session
			MenuVo menuVo = menuService.viewByPk(urlVo.getMenuSn());
			if (null == menuVo) {
				session.removeAttribute("selected_menu_vo");
				return true;
			} else {
				session.setAttribute("selected_menu_vo", menuVo);
				return true;
			}

		} catch(Exception e){
			LOGGER.error(e.getMessage() + " : " + e.toString());
		}
		return true;
	}

}
