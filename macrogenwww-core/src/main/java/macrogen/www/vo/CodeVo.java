package macrogen.www.vo;

@SuppressWarnings("serial")
public class CodeVo extends DefaultVo {
	private String codeSe;
	private String code;
	private String codeNm;
	private Integer sortOrdr;

	public String getCodeSe() {
		return codeSe;
	}
	public void setCodeSe(String codeSe) {
		this.codeSe = codeSe;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public String getCodeNm() {
		return codeNm;
	}
	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}

}
