package macrogen.www.common.storage;

import java.util.UUID;

import org.springframework.util.StringUtils;

/**
 * <pre>
 * macrogen.www.common.storage 
 *    |_ StorageUtils.java
 * 파일관련 유틸
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:44:44
 * 2.작성자 : eluocnc
 * @version : 
 */
public class StorageUtils {

	/**
	 * <pre>
	 * createUniqueFileName
	 * 1. 개요   : UUID 생성
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param extension
	 * @return
	 */ 	
	public static final String createUniqueFileName(String extension) {
		UUID uuid = UUID.randomUUID();
		StringBuilder builder = new StringBuilder();
		builder.append(uuid.toString()).append(".").append(extension);

		return builder.toString();
	}

	public static final String UNIVERSAL_FILE_SEPARATOR = "/";

	public static final String[] MONTH_NAMES = new String[] { "01", "02", "03",
			"04", "05", "06", "07", "08", "09", "10", "11", "12" };

	public static final String[] IMAGE_FILE_EXTENSIONS = new String[] { "jpg",
			"jpeg", "png", "bmp", "gif", "tiff", "tif" };

	public static final String[] EXCUTABLE_FILE_EXTENSIONS = new String[] {
			"jsp", "exe", "sh", "php", "shell", "html", "htm", "js", "asp", "cgi", "aspx", "jspx" };

	public static final String[] EXCEL_FILE_EXTENSIONS = new String[] { "xls", "xlsx"};

	public static final String[] ALLOWED_FILE_EXTENSIONS = new String[] {
		"jpg", "jpeg", "png", "bmp", "gif", "tiff", "tif"
		, "ppt", "pptx", "doc", "docx", "xls", "xlsx", "hwp"
		, "pdf", "txt", "zip", "svg", "dwg", "sldprt"
	};

	/**
	 * <pre>
	 * isImageFile
	 * 1. 개요   : 이미지확장자 체크
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param fileName
	 * @return
	 */ 	
	public static boolean isImageFile(String fileName) {
		String extension = StringUtils.getFilenameExtension(fileName);
		for (String ext : IMAGE_FILE_EXTENSIONS) {
			if (ext.equalsIgnoreCase(extension)) {
				return true;
			}
		}
		return false;
	}

	/**
	 * <pre>
	 * isXlsFile
	 * 1. 개요   : 엑셀확장자 체크
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param fileName
	 * @return
	 */ 	
	public static boolean isXlsFile(String fileName) {
		String extension = StringUtils.getFilenameExtension(fileName);
		for (String ext : EXCEL_FILE_EXTENSIONS) {
			if (ext.equalsIgnoreCase(extension)) {
				return true;
			}
		}
		return false;
	}

	/**
	 * <pre>
	 * isUploadableFile
	 * 1. 개요   : 업로드가능확장자 체크
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param fileName
	 * @return
	 */ 	
	public static boolean isUploadableFile(String fileName) {
		String extension = StringUtils.getFilenameExtension(fileName);
		for (String ext : ALLOWED_FILE_EXTENSIONS) {
			if (ext.equalsIgnoreCase(extension)) {
				return true;
			}
		}
		return false;
	}


	/**
	 * <pre>
	 * isExcutableFile
	 * 1. 개요   : 실행가능확장자 체크
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param fileName
	 * @return
	 */ 	
	public static boolean isExcutableFile(String fileName) {
		String extension = StringUtils.getFilenameExtension(fileName);
		for (String ext : EXCUTABLE_FILE_EXTENSIONS) {
			if (ext.equalsIgnoreCase(extension)) {
				return true;
			}
		}
		return false;
	}

}
