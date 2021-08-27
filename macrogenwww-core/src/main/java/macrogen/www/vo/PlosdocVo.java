package macrogen.www.vo;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * <pre>
 * macrogen.www.vo
 *    |_ PlosdocVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 29 오전 11:03:14
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class PlosdocVo extends DefaultVo {
	private Long plosdocSn;
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updtDe;
	private String iemOdrKo;
	private String iemOdrEn;
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date iemDe;
	private BigDecimal sales;
	private BigDecimal costSales;
	private BigDecimal sellAdminExpenses;
	private BigDecimal incomeLossBefIncometax;
	private BigDecimal incometaxExpenses;
	private BigDecimal discontOperIncome;
	private BigDecimal otherCompIncome;

	public Long getPlosdocSn() {
		return plosdocSn;
	}
	public void setPlosdocSn(Long plosdocSn) {
		this.plosdocSn = plosdocSn;
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
	public BigDecimal getSales() {
		return sales;
	}
	public void setSales(BigDecimal sales) {
		this.sales = sales;
	}
	public BigDecimal getCostSales() {
		return costSales;
	}
	public void setCostSales(BigDecimal costSales) {
		this.costSales = costSales;
	}
	public BigDecimal getSellAdminExpenses() {
		return sellAdminExpenses;
	}
	public void setSellAdminExpenses(BigDecimal sellAdminExpenses) {
		this.sellAdminExpenses = sellAdminExpenses;
	}
	public BigDecimal getIncomeLossBefIncometax() {
		return incomeLossBefIncometax;
	}
	public void setIncomeLossBefIncometax(BigDecimal incomeLossBefIncometax) {
		this.incomeLossBefIncometax = incomeLossBefIncometax;
	}
	public BigDecimal getIncometaxExpenses() {
		return incometaxExpenses;
	}
	public void setIncometaxExpenses(BigDecimal incometaxExpenses) {
		this.incometaxExpenses = incometaxExpenses;
	}
	public BigDecimal getDiscontOperIncome() {
		return discontOperIncome;
	}
	public void setDiscontOperIncome(BigDecimal discontOperIncome) {
		this.discontOperIncome = discontOperIncome;
	}
	public BigDecimal getOtherCompIncome() {
		return otherCompIncome;
	}
	public void setOtherCompIncome(BigDecimal otherCompIncome) {
		this.otherCompIncome = otherCompIncome;
	}

}
