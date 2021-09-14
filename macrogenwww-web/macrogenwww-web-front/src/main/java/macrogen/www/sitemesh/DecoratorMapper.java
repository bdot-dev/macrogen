package macrogen.www.sitemesh;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.opensymphony.module.sitemesh.Decorator;
import com.opensymphony.module.sitemesh.Page;
import com.opensymphony.module.sitemesh.mapper.AbstractDecoratorMapper;

@Component
public class DecoratorMapper extends AbstractDecoratorMapper {
	private static final Logger LOGGER = LoggerFactory.getLogger(DecoratorMapper.class);

	@Override
	public Decorator getDecorator(HttpServletRequest request, Page page) {
		Decorator decorator = super.getDecorator(request, page);
		if (null != decorator) {
			try {
				String path = request.getServletPath();
				LOGGER.debug(path);

				if (StringUtils.isEmpty(path)) {
					return decorator;
				}

				if (path.startsWith("/ko/main") || path.startsWith("/en/main")) {
					request.setAttribute("layout_type", "main");

				} else if (path.startsWith("/ko/company") || path.startsWith("/en/company")) {
					request.setAttribute("layout_type", "company");

				} else if (path.startsWith("/ko/business") || path.startsWith("/en/business")) {
					request.setAttribute("layout_type", "business");

				} else if (path.startsWith("/ko/esg") || path.startsWith("/en/esg")) {
					request.setAttribute("layout_type", "basic");

				} else {
					// rnd, newsroom, ir, policy
					request.setAttribute("layout_type", "basic");

				}


			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
		}
		return decorator;
	}
}
