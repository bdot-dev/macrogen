package macrogen.www.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ MberVo.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 11. 19. 오전 11:16:55
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class MberVo extends UserVo {
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date brthdy;
	private String zip;
	private String adres;
	private String adresDetail;

	public Date getBrthdy() {
		return brthdy;
	}
	public void setBrthdy(Date brthdy) {
		this.brthdy = brthdy;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAdres() {
		return adres;
	}
	public void setAdres(String adres) {
		this.adres = adres;
	}
	public String getAdresDetail() {
		return adresDetail;
	}
	public void setAdresDetail(String adresDetail) {
		this.adresDetail = adresDetail;
	}

}
