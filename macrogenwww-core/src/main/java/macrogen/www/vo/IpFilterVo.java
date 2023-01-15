package macrogen.www.vo;


@SuppressWarnings("serial")
public class IpFilterVo extends DefaultVo {
	private Long col;
	private String ip;
	private String title;
	private String useYn;
	public Long getCol() {
		return col;
	}
	public void setCol(Long col) {
		this.col = col;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	
}
