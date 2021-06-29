package macrogen.www.common.storage; 

import java.io.Serializable;

/**
 * <pre>
 * macrogen.www.common.storage 
 *    |_ imageVo.java
 * 
 * </pre>
 * 1. 작성일 : 2018. 11. 2. 오전 8:23:41
 * 2. 작성자 : eluocnc
 * @version : 
 */
@SuppressWarnings("serial")
public class ImageVo implements Serializable {
	/**
	 * 이미지_가로
	 */
	private Integer width;
	/**
	 * 이미지_높이
	 */
	private Integer height;
	/**
	 * 썸네일_파일경로
	 */
	private String thumbFlpth;

	public Integer getWidth() {
		return width;
	}
	public void setWidth(Integer width) {
		this.width = width;
	}
	public Integer getHeight() {
		return height;
	}
	public void setHeight(Integer height) {
		this.height = height;
	}
	public String getThumbFlpth() {
		return thumbFlpth;
	}
	public void setThumbFlpth(String thumbFlpth) {
		this.thumbFlpth = thumbFlpth;
	}

}
