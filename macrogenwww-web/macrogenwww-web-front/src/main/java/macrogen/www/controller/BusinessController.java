package macrogen.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.enums.LangId;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ BusinessController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 2. 오후 6:37:58
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/business")
public class BusinessController extends DefaultController {

	@RequestMapping("/research/ngs")
	public String researchNgs(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/ngs." + getLang();
	}

	@RequestMapping("/research/ces")
	public String researchCes(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/ces." + getLang();
	}

	@RequestMapping("/research/oligo")
	public String researchOligo(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/oligo." + getLang();
	}

	@RequestMapping("/research/microarray")
	public String researchMicroarray(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/microarray." + getLang();
	}

	@RequestMapping("/research/model")
	public String researchModel(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/research/model." + getLang();
	}


	@RequestMapping("/diagnosis/cancer")
	public String diagnosisCancer(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/diagnosis/cancer." + getLang();
	}

	@RequestMapping("/diagnosis/newborn")
	public String diagnosisNewborn(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/diagnosis/newborn." + getLang();
	}

	@RequestMapping("/diagnosis/liquid-biopsy")
	public String diagnosisLiquidBiopsy(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/diagnosis/liquid-biopsy." + getLang();
	}

	@RequestMapping("/diagnosis/covid")
	public String diagnosisCovid(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/diagnosis/covid." + getLang();
	}


	@RequestMapping("/healthcare/personal-genetic")
	public String healthcarePersonalGenetic(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/healthcare/personal-genetic." + getLang();
	}

	@RequestMapping("/healthcare/intestinal-microbiome")
	public String healthcareIntestinalMicrobiome(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/healthcare/intestinal-microbiome." + getLang();
	}

	@RequestMapping("/healthcare/pet-genetic")
	public String healthcarePetGenetic(@PathVariable LangId langId) throws Exception {
		return getDev() + "/business/healthcare/pet-genetic." + getLang();
	}

}
