package macrogen.www.vo;

import java.math.BigDecimal;
import java.util.Date;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ FnlttVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:02:59
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class FnlttVo extends DefaultVo {
	private Long fnlttSn;
	private Date updtDe;
	private String iemOdrKo;
	private String iemOdrEn;
	private Date iemDe;
	private BigDecimal curAssets;
	private BigDecimal noncurAssets;
	private BigDecimal curLiabil;
	private BigDecimal noncurLiabil;
	private BigDecimal capl;
	private BigDecimal capitalSurplus;
	private BigDecimal accOtherCompIncome;
	private BigDecimal otherCompOfEquity;
	private BigDecimal retainedEarnings;
	private BigDecimal noncontrInterest;

	public Long getFnlttSn() {
		return fnlttSn;
	}
	public void setFnlttSn(Long fnlttSn) {
		this.fnlttSn = fnlttSn;
	}
	public Date getUpdtDe() {
		return updtDe;
	}
	public void setUpdtDe(Date updtDe) {
		this.updtDe = updtDe;
	}
	public String getIemOdrKo() {
		return iemOdrKo;
	}
	public void setIemOdrKo(String iemOdrKo) {
		this.iemOdrKo = iemOdrKo;
	}
	public String getIemOdrEn() {
		return iemOdrEn;
	}
	public void setIemOdrEn(String iemOdrEn) {
		this.iemOdrEn = iemOdrEn;
	}
	public Date getIemDe() {
		return iemDe;
	}
	public void setIemDe(Date iemDe) {
		this.iemDe = iemDe;
	}
	public BigDecimal getCurAssets() {
		return curAssets;
	}
	public void setCurAssets(BigDecimal curAssets) {
		this.curAssets = curAssets;
	}
	public BigDecimal getNoncurAssets() {
		return noncurAssets;
	}
	public void setNoncurAssets(BigDecimal noncurAssets) {
		this.noncurAssets = noncurAssets;
	}
	public BigDecimal getCurLiabil() {
		return curLiabil;
	}
	public void setCurLiabil(BigDecimal curLiabil) {
		this.curLiabil = curLiabil;
	}
	public BigDecimal getNoncurLiabil() {
		return noncurLiabil;
	}
	public void setNoncurLiabil(BigDecimal noncurLiabil) {
		this.noncurLiabil = noncurLiabil;
	}
	public BigDecimal getCapl() {
		return capl;
	}
	public void setCapl(BigDecimal capl) {
		this.capl = capl;
	}
	public BigDecimal getCapitalSurplus() {
		return capitalSurplus;
	}
	public void setCapitalSurplus(BigDecimal capitalSurplus) {
		this.capitalSurplus = capitalSurplus;
	}
	public BigDecimal getAccOtherCompIncome() {
		return accOtherCompIncome;
	}
	public void setAccOtherCompIncome(BigDecimal accOtherCompIncome) {
		this.accOtherCompIncome = accOtherCompIncome;
	}
	public BigDecimal getOtherCompOfEquity() {
		return otherCompOfEquity;
	}
	public void setOtherCompOfEquity(BigDecimal otherCompOfEquity) {
		this.otherCompOfEquity = otherCompOfEquity;
	}
	public BigDecimal getRetainedEarnings() {
		return retainedEarnings;
	}
	public void setRetainedEarnings(BigDecimal retainedEarnings) {
		this.retainedEarnings = retainedEarnings;
	}
	public BigDecimal getNoncontrInterest() {
		return noncontrInterest;
	}
	public void setNoncontrInterest(BigDecimal noncontrInterest) {
		this.noncontrInterest = noncontrInterest;
	}

}
