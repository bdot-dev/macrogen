package macrogen.www.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.util.StringUtils;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ PopupVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 1. 오전 10:54:40
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PopupVo extends DefaultVo {
	private Long popupSn;
	private String langCode;
	private String popupNm;
	private Date popupBeginDt;
	private Date popupEndDt;
	private String popupImageAtchId;
	private String popupImageFlpth;
	private String popupImageDc;
	private String popupLinkUrl;
	private String popupLinkTrgtCode;
	private Integer clickCo;
	private String expsrYn;
	private Integer sortOrdr;

	private String searchExpsrYn;

	private String popupBeginDe;
	private String popupBeginHour;
	private String popupEndDe;
	private String popupEndHour;

	private Boolean exposed;

	public Date getPopupBeginDt() throws Exception {
		if (null == popupBeginDe) {
			return popupBeginDt;
		} else {
			SimpleDateFormat foramt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			if (StringUtils.isEmpty(popupBeginHour)) {
				return foramt.parse(popupBeginDe + " 00:00:00");
			} else {
				return foramt.parse(popupBeginDe + " " + popupBeginHour +":00:00");
			}
		}
	}
	public Date getPopupEndDt() throws Exception {
		if (null == popupEndDe) {
			return popupEndDt;
		} else {
			SimpleDateFormat foramt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			if (StringUtils.isEmpty(popupEndHour)) {
				return foramt.parse(popupEndDe + " 23:59:59");
			} else {
				return foramt.parse(popupEndDe + " " + popupEndHour +":00:00");
			}
		}
	}
	public String getPopupBeginDe() {
		if (null != popupBeginDe) {
			return popupBeginDe;
		}
		if (null == popupBeginDt) {
			return null;
		}

		SimpleDateFormat foramt = new SimpleDateFormat("yyyy-MM-dd");
		return foramt.format(popupBeginDt);
	}
	public String getPopupEndDe() {
		if (null != popupEndDe) {
			return popupEndDe;
		}
		if (null == popupEndDt) {
			return null;
		}

		SimpleDateFormat foramt = new SimpleDateFormat("yyyy-MM-dd");
		return foramt.format(popupEndDt);
	}
	public String getPopupBeginHour() {
		if (null != popupBeginHour) {
			return popupBeginHour;
		}
		if (null == popupBeginDt) {
			return null;
		}

		SimpleDateFormat format = new SimpleDateFormat("HHmmss");
		String hourStr = format.format(popupBeginDt);
		if ("000000".equals(hourStr)) {
			return null;
		} else {
			return hourStr.substring(0, 2);
		}
	}
	public String getPopupEndHour() {
		if (null != popupEndHour) {
			return popupEndHour;
		}
		if (null == popupEndDt) {
			return null;
		}

		SimpleDateFormat format = new SimpleDateFormat("HHmmss");
		String hourStr = format.format(popupEndDt);
		if ("235959".equals(hourStr)) {
			return null;
		} else {
			return hourStr.substring(0, 2);
		}
	}

	public Long getPopupSn() {
		return popupSn;
	}
	public void setPopupSn(Long popupSn) {
		this.popupSn = popupSn;
	}
	public String getPopupNm() {
		return popupNm;
	}
	public void setPopupNm(String popupNm) {
		this.popupNm = popupNm;
	}
	public void setPopupBeginDt(Date popupBeginDt) {
		this.popupBeginDt = popupBeginDt;
	}
	public void setPopupEndDt(Date popupEndDt) {
		this.popupEndDt = popupEndDt;
	}
	public String getPopupImageAtchId() {
		return popupImageAtchId;
	}
	public void setPopupImageAtchId(String popupImageAtchId) {
		this.popupImageAtchId = popupImageAtchId;
	}
	public String getPopupImageDc() {
		return popupImageDc;
	}
	public void setPopupImageDc(String popupImageDc) {
		this.popupImageDc = popupImageDc;
	}
	public String getPopupLinkUrl() {
		return popupLinkUrl;
	}
	public void setPopupLinkUrl(String popupLinkUrl) {
		this.popupLinkUrl = popupLinkUrl;
	}
	public String getPopupLinkTrgtCode() {
		return popupLinkTrgtCode;
	}
	public void setPopupLinkTrgtCode(String popupLinkTrgtCode) {
		this.popupLinkTrgtCode = popupLinkTrgtCode;
	}
	public Integer getClickCo() {
		return clickCo;
	}
	public void setClickCo(Integer clickCo) {
		this.clickCo = clickCo;
	}
	public String getExpsrYn() {
		return expsrYn;
	}
	public void setExpsrYn(String expsrYn) {
		this.expsrYn = expsrYn;
	}
	public Integer getSortOrdr() {
		return sortOrdr;
	}
	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}
	public String getSearchExpsrYn() {
		return searchExpsrYn;
	}
	public void setSearchExpsrYn(String searchExpsrYn) {
		this.searchExpsrYn = searchExpsrYn;
	}
	public String getPopupImageFlpth() {
		return popupImageFlpth;
	}
	public void setPopupImageFlpth(String popupImageFlpth) {
		this.popupImageFlpth = popupImageFlpth;
	}
	public void setPopupBeginDe(String popupBeginDe) {
		this.popupBeginDe = popupBeginDe;
	}
	public void setPopupBeginHour(String popupBeginHour) {
		this.popupBeginHour = popupBeginHour;
	}
	public void setPopupEndDe(String popupEndDe) {
		this.popupEndDe = popupEndDe;
	}
	public void setPopupEndHour(String popupEndHour) {
		this.popupEndHour = popupEndHour;
	}
	public String getLangCode() {
		return langCode;
	}
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
	public Boolean getExposed() {
		return exposed;
	}
	public void setExposed(Boolean exposed) {
		this.exposed = exposed;
	}
}
