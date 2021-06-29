package macrogen.www.tag;

import java.util.Map;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

import macrogen.www.service.CodeService;
import macrogen.www.vo.CodeVo;

@SuppressWarnings("serial")
public class CodeTextTag extends RequestContextAwareTag {
	private String group;
	private String code;
	
	@Override
	protected int doStartTagInternal() throws Exception {
		CodeService codeService = (CodeService) getRequestContext().getWebApplicationContext().getBean("codeService");

		Map<String, CodeVo> allCodeMap = codeService.allMapList();

		CodeVo codeVo = allCodeMap.get(String.format("%s:%s", group, code));
		if (null != codeVo) {
			pageContext.getOut().print(codeVo.getCodeNm());
		} else {
			pageContext.getOut().print("");
		}
        return SKIP_BODY;
	}

	public void setGroup(String group) {
		this.group = group;
	}
	public void setCode(String code) {
		this.code = code;
	}

}
