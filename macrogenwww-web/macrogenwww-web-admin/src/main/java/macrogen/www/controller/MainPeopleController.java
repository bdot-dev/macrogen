package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.enums.LangId;
import macrogen.www.service.MainPeopleService;
import macrogen.www.vo.MainPeopleVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ MainPeopleController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2023. 03. 03. 오전 11:48:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/main-people")
public class MainPeopleController {

	@Autowired
	private MainPeopleService mainPeopleService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") MainPeopleVo listVo, Model model) throws Exception {

		return "main-people/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody MainPeopleVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.toString());

		List<MainPeopleVo> resultList = mainPeopleService.list(listVo);
		paginationInfo.setTotalRecordCount(mainPeopleService.count(listVo));

		if(resultList == null || resultList.size() == 0) {
			resultList.add(new MainPeopleVo());
			resultList.add(new MainPeopleVo());
			resultList.add(new MainPeopleVo());
			resultList.add(new MainPeopleVo());
		}

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo loginVo, @RequestBody List<MainPeopleVo> dataList /*MainPeopleVo vo*/) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		//List<MainPeopleVo> dataList = vo.getDataVoList();
		if(dataList != null && dataList.size() > 0) {
			System.out.println(" ==== " + dataList.size());
			for(MainPeopleVo data : dataList) {
				data.setRegisterSn(loginVo.getUserSn());
				data.setUpdusrSn(loginVo.getUserSn());
				if (StringUtils.isEmpty(data.getPeopleSn())) {
					data.setLangCode(langId.name());
					mainPeopleService.insert(data);
				} else {
					mainPeopleService.update(data);
				}
			}
		}

		return resultMap;
	}
}
