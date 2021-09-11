package macrogen.www.common;

import java.text.MessageFormat;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
/**
 * ImagePaginationRenderer.java 클래스
 *
 * @author 서준식
 * @since 2011. 9. 16.
 * @version 1.0
 * @see
 *
 * <pre>
 * 개정이력(Modification Information)
 *
 *   수정일      수정자           수정내용
 *  -------    -------------    ----------------------
 *   2011. 9. 16.   서준식       이미지 경로에 ContextPath추가
 * </pre>
 */
public class ImagePaginationRenderer extends AbstractPaginationRenderer implements ServletContextAware{

	private ServletContext servletContext;

	public ImagePaginationRenderer() {

	}

	public void initVariables(){
//		firstPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">[처음]</a>&#160;";
//		previousPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">[이전]</a>&#160;";
//		currentPageLabel = "<strong>{0}</strong>&#160;";
//		otherPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a>&#160;";
//		nextPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">[다음]</a>&#160;";
//		lastPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">[마지막]</a>&#160;";

		firstPageLabel = "" +
				"<li class=\"page-item first\">" +
				"    <a class=\"page-link\" href=\"?pageIndex={1}\" onclick=\"{0}({1});return false;\">" +
				"        <span class=\"sr-only\">맨 앞</span>" +
				"    </a>" +
				"</li>";
		previousPageLabel = "" +
				"<li class=\"page-item prev\">" +
				"    <a class=\"page-link\" href=\"?pageIndex={1}\" onclick=\"{0}({1});return false;\">" +
				"        <span class=\"sr-only\">이전</span>" +
				"    </a>" +
				"</li>";

		nextPageLabel = "" +
				"<li class=\"page-item next\">" +
				"    <a class=\"page-link\" href=\"?pageIndex={1}\" onclick=\"{0}({1});return false;\">" +
				"        <span class=\"sr-only\">다음</span>" +
				"    </a>" +
				"</li>";
		lastPageLabel = "" +
				"<li class=\"page-item last\">" +
				"    <a class=\"page-link\" href=\"?pageIndex={1}\" onclick=\"{0}({1});return false;\">" +
				"        <span class=\"sr-only\">맨 뒤</span>" +
				"    </a>" +
				"</li>";


		currentPageLabel = "<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:;\">{0}</a></li>";
		otherPageLabel = "<li class=\"page-item\"><a class=\"page-link\" href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \">{2}</a></li>";
	}

	@Override
	public String renderPagination(PaginationInfo paginationInfo, String jsFunction) {

		StringBuffer strBuff = new StringBuffer();

		int firstPageNo = paginationInfo.getFirstPageNo();
		int firstPageNoOnPageList = paginationInfo.getFirstPageNoOnPageList();
		int totalPageCount = paginationInfo.getTotalPageCount();
		int pageSize = paginationInfo.getPageSize();
		int lastPageNoOnPageList = paginationInfo.getLastPageNoOnPageList();
		int currentPageNo = paginationInfo.getCurrentPageNo();
		int lastPageNo = paginationInfo.getLastPageNo();

		strBuff.append("<ul class=\"navigation\">");
		if (totalPageCount > pageSize) {
			if (firstPageNoOnPageList > pageSize) {
				strBuff.append(MessageFormat.format(firstPageLabel, new Object[] { jsFunction, Integer.toString(firstPageNo) }));
				strBuff.append(MessageFormat.format(previousPageLabel, new Object[] { jsFunction, Integer.toString(firstPageNoOnPageList - 1) }));
			} else {
				strBuff.append(MessageFormat.format(firstPageLabel, new Object[] { jsFunction, Integer.toString(firstPageNo) }));
				strBuff.append(MessageFormat.format(previousPageLabel, new Object[] { jsFunction, Integer.toString(firstPageNo) }));
			}
		}

		if (totalPageCount > pageSize) {
			if (lastPageNoOnPageList < totalPageCount) {
				strBuff.append(MessageFormat.format(nextPageLabel, new Object[] { jsFunction, Integer.toString(firstPageNoOnPageList + pageSize) }));
				strBuff.append(MessageFormat.format(lastPageLabel, new Object[] { jsFunction, Integer.toString(lastPageNo) }));
			} else {
				strBuff.append(MessageFormat.format(nextPageLabel, new Object[] { jsFunction, Integer.toString(lastPageNo) }));
				strBuff.append(MessageFormat.format(lastPageLabel, new Object[] { jsFunction, Integer.toString(lastPageNo) }));
			}
		}
		strBuff.append("</ul>");

		strBuff.append("<ul class=\"pagination\">");
		for (int i = firstPageNoOnPageList; i <= lastPageNoOnPageList; i++) {
			if (i == currentPageNo) {
				strBuff.append(MessageFormat.format(currentPageLabel, new Object[] { Integer.toString(i) }));
			} else {
				strBuff.append(MessageFormat.format(otherPageLabel, new Object[] { jsFunction, Integer.toString(i), Integer.toString(i) }));
			}
		}
		strBuff.append("</ul>");

		return strBuff.toString();
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		initVariables();
	}

	public ServletContext getServletContext() {
		return servletContext;
	}
}
