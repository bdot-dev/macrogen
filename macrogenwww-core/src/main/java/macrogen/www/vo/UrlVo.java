package macrogen.www.vo;

@SuppressWarnings("serial")
public class UrlVo extends DefaultVo {
	private String url;
	private Long menuSn;
	private String menuNmPath;

	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Long getMenuSn() {
		return menuSn;
	}
	public void setMenuSn(Long menuSn) {
		this.menuSn = menuSn;
	}
	public String getMenuNmPath() {
		return menuNmPath;
	}
	public void setMenuNmPath(String menuNmPath) {
		this.menuNmPath = menuNmPath;
	}
}
