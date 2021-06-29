package macrogen.www.vo;


/**
 * <pre>
 * macrogen.www.vo
 *    |_ TsmsTmplatVo.java
 * 개요 : 알림톡 템플릿 테이블
 * </pre>
 * 1. 작성일 : 2020. 01. 04. 오후 4:52:20
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class TsmsTmplatVo extends DefaultVo {
	
	private String templateCode;
	private String tmplatNm;
	private String tmplatCn;
	private String buttonTy;
	private String buttonNm;
	private String buttonLinkMobl;
	private String buttonLinkPc;
	
	
	/**
	 * @return the templateCode
	 */
	public String getTemplateCode() {
		return templateCode;
	}
	/**
	 * @param templateCode the templateCode to set
	 */
	public void setTemplateCode(String templateCode) {
		this.templateCode = templateCode;
	}
	/**
	 * @return the tmplatNm
	 */
	public String getTmplatNm() {
		return tmplatNm;
	}
	/**
	 * @param tmplatNm the tmplatNm to set
	 */
	public void setTmplatNm(String tmplatNm) {
		this.tmplatNm = tmplatNm;
	}
	/**
	 * @return the tmplatCn
	 */
	public String getTmplatCn() {
		return tmplatCn;
	}
	/**
	 * @param tmplatCn the tmplatCn to set
	 */
	public void setTmplatCn(String tmplatCn) {
		this.tmplatCn = tmplatCn;
	}
	/**
	 * @return the buttonTy
	 */
	public String getButtonTy() {
		return buttonTy;
	}
	/**
	 * @param buttonTy the buttonTy to set
	 */
	public void setButtonTy(String buttonTy) {
		this.buttonTy = buttonTy;
	}
	/**
	 * @return the buttonNm
	 */
	public String getButtonNm() {
		return buttonNm;
	}
	/**
	 * @param buttonNm the buttonNm to set
	 */
	public void setButtonNm(String buttonNm) {
		this.buttonNm = buttonNm;
	}
	/**
	 * @return the buttonLinkMobl
	 */
	public String getButtonLinkMobl() {
		return buttonLinkMobl;
	}
	/**
	 * @param buttonLinkMobl the buttonLinkMobl to set
	 */
	public void setButtonLinkMobl(String buttonLinkMobl) {
		this.buttonLinkMobl = buttonLinkMobl;
	}
	/**
	 * @return the buttonLinkPc
	 */
	public String getButtonLinkPc() {
		return buttonLinkPc;
	}
	/**
	 * @param buttonLinkPc the buttonLinkPc to set
	 */
	public void setButtonLinkPc(String buttonLinkPc) {
		this.buttonLinkPc = buttonLinkPc;
	}

}
