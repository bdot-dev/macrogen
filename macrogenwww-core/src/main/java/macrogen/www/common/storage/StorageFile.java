package macrogen.www.common.storage;

import java.io.Serializable;

/**
 * <pre>
 * macrogen.www.common.storage 
 *    |_ StorageFile.java
 * 업로드파일정보
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:35:31
 * 2.작성자 : eluocnc
 * @version : 
 */
@SuppressWarnings("serial")
public class StorageFile implements Serializable {

	/**
	 * 저장 파일명
	 */
	private String name;
	/**
	 * 원본 파일명
	 */
	private String originalFileName;
	/**
	 * 저장 경로
	 */
	private String relativePath;
	/**
	 * 파일 사이즈
	 */
	private Long size;
	/**
	 * 확장자
	 */
	private String extension;
	/**
	 * 썸네일 저장경로
	 */
	private String thumbFlpth;
	/**
	 * 이미지_가로
	 */
	private Integer imageWidth;
	/**
	 * 이미지_높이
	 */
	private Integer imageHg;
	/**
	 * 대체텍스트
	 */
	private String alt;
	/**
	 * 이미지 구분
	 */
	private String se;

	public StorageFile() {
	}
	public StorageFile(String name, String originalFileName,
			String relativePath, long size, String extension) {
		this.name = name;
		this.originalFileName = originalFileName;
		this.relativePath = relativePath;
		this.size = size;
		this.extension = extension;
	}

	public StorageFile(String name, String originalFileName,
			String relativePath, long size, String extension, String thumbFlpth,
			Integer imageWidth, Integer imageHg) {
		this.name = name;
		this.originalFileName = originalFileName;
		this.relativePath = relativePath;
		this.size = size;
		this.extension = extension;
		this.thumbFlpth = thumbFlpth;
		this.imageWidth = imageWidth;
		this.imageHg = imageHg;
	}

	public String getThumbFlpth() {
		return thumbFlpth;
	}
	public void setThumbFlpth(String thumbFlpth) {
		this.thumbFlpth = thumbFlpth;
	}
	public Integer getImageWidth() {
		return imageWidth;
	}
	public void setImageWidth(Integer imageWidth) {
		this.imageWidth = imageWidth;
	}
	public Integer getImageHg() {
		return imageHg;
	}
	public void setImageHg(Integer imageHg) {
		this.imageHg = imageHg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRelativePath() {
		return relativePath;
	}
	public void setRelativePath(String relativePath) {
		this.relativePath = relativePath;
	}
	public Long getSize() {
		return size;
	}
	public void setSize(Long size) {
		this.size = size;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getExtension() {
		return extension;
	}
	public void setExtension(String extension) {
		this.extension = extension;
	}
	public String getAlt() {
		return alt;
	}
	public void setAlt(String alt) {
		this.alt = alt;
	}
	public String getSe() {
		return se;
	}
	public void setSe(String se) {
		this.se = se;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("StorageFile [name=");
		builder.append(name);
		builder.append(", originalFileName=");
		builder.append(originalFileName);
		builder.append(", relativePath=");
		builder.append(relativePath);
		builder.append(", size=");
		builder.append(size);
		builder.append(", extension=");
		builder.append(extension);
		builder.append("]");
		return builder.toString();
	}

}
