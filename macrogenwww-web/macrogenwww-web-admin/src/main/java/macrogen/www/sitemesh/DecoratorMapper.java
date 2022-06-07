package macrogen.www.sitemesh;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.opensymphony.module.sitemesh.Decorator;
import com.opensymphony.module.sitemesh.Page;
import com.opensymphony.module.sitemesh.mapper.AbstractDecoratorMapper;

/**
 * <pre>
 * macrogen.www.common.sitemesh 
 *    |_ DecoratorMapper.java
 * 레이아웃 렌더링 직전의 처리
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:31:40
 * 2.작성자 : eluocnc
 * @version : 
 */
@Component
public class DecoratorMapper extends AbstractDecoratorMapper {
	private static final Logger LOGGER = LoggerFactory.getLogger(DecoratorMapper.class);

	private static final String[] UNUSE_LEFTMENU_URL = {"/main", "/myinfo/form", "/myinfo/auth"};
	
	/**
	 * <pre>
	 * getDecorator
	 * 1. 개요   : 레이아웃 렌더링 직전의 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @see com.opensymphony.module.sitemesh.mapper.AbstractDecoratorMapper#getDecorator(javax.servlet.http.HttpServletRequest, com.opensymphony.module.sitemesh.Page)
	 * @param request
	 * @param page
	 * @return
	 */ 	
	@Override
	public Decorator getDecorator(HttpServletRequest request, Page page) {
		Decorator decorator = super.getDecorator(request, page);
		if (null != decorator) {
			try {
				String path = request.getServletPath();

				// leftmenu 사용여부
				for (String url : UNUSE_LEFTMENU_URL) {
					if (path.equals(url)) {
						request.setAttribute("LEFTMENU_YN", "N");
						break;
					}
				}

			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
		}
		return decorator;
	}
}
