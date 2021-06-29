package macrogen.www.sitemesh;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

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

			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
		}
		return decorator;
	}
}
