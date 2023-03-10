package macrogen.www.vo;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ MainNttVo.java
 *
 * </pre>
 * 1. 작성일 : 2023. 3. 3. 오후 4:03
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class MainNttVo extends DefaultVo{
	
	private Long mainNttSn;					// 게시물 순번
	private String mainBbsId;				// 게시판 ID
	private String mainNttSjPc;				// 게시물 제목_PC
	private String mainNttSjMo;				// 게시물 제목_MO
	private String mainNttCnPc;				// 게시물 내용_PC
	private String mainNttCnMo;				// 게시물 내용_MO
	
	private String imageAtchIdPc;			// 이미지 첨부 아이디_PC
	private String imageAtchIdMo;			// 이미지 첨부 아이디_MO
	
	private String imageFlpthPc;	
	private String imageFlpthMobl;
	
	private String expsrYn;					// 노출여부
	private Integer expsrPrty;				// 노출순서
	private String langCode;				// 언어 코드	
	
	private String title;					// 제목
	
	private String btYn;					// 버튼 삽입 여부
	private String btSjPc1;					// 버튼명 PC_1
	private String btSjMo1;					// 버튼명 MO_1
	private String linkUrl1;					// 링크 URL_1
	
	private String btSjPc2;					// 버튼명 PC_2
	private String btSjMo2;					// 버튼명 MO_2
	private String linkUrl2;				// 링크 URL_2	
	
	private String searchExpsrYn;			// 검색 조건 노출여부
	
	public Long getMainNttSn() {
		return mainNttSn;
	}
	public void setMainNttSn(Long mainNttSn) {
		this.mainNttSn = mainNttSn;
	}
	public String getMainBbsId() {
		return mainBbsId;
	}
	public void setMainBbsId(String mainBbsId) {
		this.mainBbsId = mainBbsId;
	}
	public String getMainNttSjPc() {
		return mainNttSjPc;
	}
	public void setMainNttSjPc(String mainNttSjPc) {
		this.mainNttSjPc = mainNttSjPc;
	}
	public String getMainNttSjMo() {
		return mainNttSjMo;
	}
	public void setMainNttSjMo(String mainNttSjMo) {
		this.mainNttSjMo = mainNttSjMo;
	}
	public String getMainNttCnPc() {
		return mainNttCnPc;
	}
	public void setMainNttCnPc(String mainNttCnPc) {
		this.mainNttCnPc = mainNttCnPc;
	}
	public String getMainNttCnMo() {
		return mainNttCnMo;
	}
	public void setMainNttCnMo(String mainNttCnMo) {
		this.mainNttCnMo = mainNttCnMo;
	}
	
	public String getImageAtchIdPc() {
		return imageAtchIdPc;
	}
	public void setImageAtchIdPc(String imageAtchIdPc) {
		this.imageAtchIdPc = imageAtchIdPc;
	}
	public String getImageAtchIdMo() {
		return imageAtchIdMo;
	}
	public void setImageAtchIdMo(String imageAtchIdMo) {
		this.imageAtchIdMo = imageAtchIdMo;
	}
	
	public String getImageFlpthPc() {
		return imageFlpthPc;
	}
	public void setImageFlpthPc(String imageFlpthPc) {
		this.imageFlpthPc = imageFlpthPc;
	}
	
	public String getImageFlpthMobl() {
		return imageFlpthMobl;
	}
	public void setImageFlpthMobl(String imageFlpthMobl) {
		this.imageFlpthMobl = imageFlpthMobl;
	}
	public String getExpsrYn() {
		return expsrYn;
	}
	public void setExpsrYn(String expsrYn) {
		this.expsrYn = expsrYn;
	}	
	public Integer getExpsrPrty() {
		return expsrPrty;
	}
	public void setExpsrPrty(Integer expsrPrty) {
		this.expsrPrty = expsrPrty;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public String getBtYn() {
		return btYn;
	}
	public void setBtYn(String btYn) {
		this.btYn = btYn;
	}
	public String getBtSjPc1() {
		return btSjPc1;
	}
	public void setBtSjPc1(String btSjPc1) {
		this.btSjPc1 = btSjPc1;
	}
	public String getBtSjMo1() {
		return btSjMo1;
	}
	public void setBtSjMo1(String btSjMo1) {
		this.btSjMo1 = btSjMo1;
	}
	public String getLinkUrl1() {
		return linkUrl1;
	}
	public void setLinkUrl1(String linkUrl1) {
		this.linkUrl1 = linkUrl1;
	}
	public String getBtSjPc2() {
		return btSjPc2;
	}
	public void setBtSjPc2(String btSjPc2) {
		this.btSjPc2 = btSjPc2;
	}
	public String getBtSjMo2() {
		return btSjMo2;
	}
	public void setBtSjMo2(String btSjMo2) {
		this.btSjMo2 = btSjMo2;
	}
	public String getLinkUrl2() {
		return linkUrl2;
	}
	public void setLinkUrl2(String linkUrl2) {
		this.linkUrl2 = linkUrl2;
	}
	public String getSearchExpsrYn() {
		return searchExpsrYn;
	}
	public void setSearchExpsrYn(String searchExpsrYn) {
		this.searchExpsrYn = searchExpsrYn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
