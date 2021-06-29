package macrogen.www.vo;

import org.springframework.web.multipart.MultipartFile;

import macrogen.www.common.storage.StorageFile;

/**
 * <pre>
 * macrogen.www.vo
 *    |_ AtchVo.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 7. 오후 2:59:38
 * 2. 작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("serial")
public class AtchVo extends DefaultVo {

	private String atchId;
	private String logicNm;
	private String physiclFlpth;
	private Long fileSize;
	private String thumbFlpth;
	private Integer imageWidth;
	private Integer imageHg;

	private MultipartFile atchFile;

	public AtchVo() {
	}
	public AtchVo(String atchId) {
		this.atchId = atchId;
	}
	public AtchVo(StorageFile storageFile) {
		this.physiclFlpth = storageFile.getRelativePath() + storageFile.getName();
		this.logicNm = storageFile.getOriginalFileName();
		this.fileSize = storageFile.getSize();
		this.thumbFlpth = storageFile.getThumbFlpth();
		this.imageWidth = storageFile.getImageWidth();
		this.imageHg = storageFile.getImageHg();
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
	public String getLogicNm() {
		return logicNm;
	}
	public void setLogicNm(String logicNm) {
		this.logicNm = logicNm;
	}
	public String getPhysiclFlpth() {
		return physiclFlpth;
	}
	public void setPhysiclFlpth(String physiclFlpth) {
		this.physiclFlpth = physiclFlpth;
	}
	public Long getFileSize() {
		return fileSize;
	}
	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}
	public MultipartFile getAtchFile() {
		return atchFile;
	}
	public void setAtchFile(MultipartFile atchFile) {
		this.atchFile = atchFile;
	}
	public String getAtchId() {
		return atchId;
	}
	public void setAtchId(String atchId) {
		this.atchId = atchId;
	}

}
