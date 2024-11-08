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

				// modal_winner_use
				if (path.startsWith("/ko/company/social-contribution") || path.startsWith("/en/company/social-contribution")) {
					request.setAttribute("modal_winner_use", true);
				}

				// modal_research_result_use
				if (path.startsWith("/ko/rnd/institute/precision-medicine") || path.startsWith("/en/rnd/institute/precision-medicine")) {
					request.setAttribute("modal_research_result_use", true);
				}

				// modal_media_library 모달 사용여부
				if (path.startsWith("/ko/newsroom/media-library") || path.startsWith("/en/newsroom/media-library")) {
					request.setAttribute("modal_media_library", true);
				}

				// remove_header_bg_white_unuse
				if (path.startsWith("/ko/company/recruit") || path.startsWith("/en/company/recruit") ||
						path.startsWith("/ko/company/contact-us") || path.startsWith("/en/company/contact-us")) {
					request.setAttribute("remove_header_bg_white_unuse", "Y");
				}

			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
		}
		return decorator;
	}
}
