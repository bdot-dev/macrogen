package macrogen.www.common;

/*
 * Copyright 2001-2006 The Apache Software Foundation.
 *
 * Licensed under the Apache License, Version 2.0 (the ";License&quot;);
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS"; BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import egovframework.rte.fdl.cmmn.exception.BaseException;
import net.sf.jxls.transformer.XLSTransformer;

/**
 * <pre>
 * macrogen.www.common
 *    |_ EgovExcelView.java
 * 개요 : 엑셀 파일 생성 다운로드
 * </pre>
 * 1.작성일 : 2019. 2. 28. 오후 2:19:08
 * 2.작성자 : eluocnc
 * @version :
 */
@SuppressWarnings("deprecation")
public class EgovExcelView extends AbstractExcelView {
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovExcelView.class);

//	private static final SimpleDateFormat YYYYMMDDHHMMSS = new SimpleDateFormat("yyyyMMddHHmmss", LocaleContextHolder.getLocale());

    @Override
    protected void buildExcelDocument(Map<String, Object> modal, HSSFWorkbook workbook, HttpServletRequest request, HttpServletResponse response) throws Exception {

    	String templateXlsId = toNvl(modal.get("XLS_ID"));
    	String downFileName = null;
    	if (StringUtils.isEmpty(modal.get("XLS_SAVEAS_NM"))) {
    		downFileName = getDownFileName(request, templateXlsId);
    	} else {
    		downFileName = getDownFileName(request,
    				String.valueOf(modal.get("XLS_SAVEAS_NM")));
    	}

        response.setHeader("Content-Type", "application/octet-stream");
        response.setHeader("Content-Disposition", "attachment; filename=" +downFileName+ "");

        OutputStream os = null;
        InputStream is = null;

        try {
            // 엑셀 템플릿 파일이 존재하는 위치 (classpath 하위)
            is = new FileInputStream(getAbPath(request,templateXlsId));
            os = response.getOutputStream();

            XLSTransformer transformer = new XLSTransformer();

            Workbook excel = transformer.transformXLS(is, modal);
            excel.write(os);
            os.flush();

        } catch (IOException e) {
            e.printStackTrace();
            throw new BaseException(e.getMessage());
        } finally {
            if(os != null) try { os.close(); } catch (IOException e) { LOGGER.debug(e.getMessage()); }
            if(is != null) try { is.close(); } catch (IOException e) { LOGGER.debug(e.getMessage()); }
        }
    }

	private String getAbPath(HttpServletRequest request, String xlsId) {
		String abPath = request.getSession().getServletContext().getRealPath("/");
		return abPath + "/WEB-INF/excel/"+ xlsId + ".xlsx";
	}

	private String toNvl(Object obj) {
		if (obj != null) {
			return obj.toString();
		}
		return "";
	}

	private String getDownFileName(HttpServletRequest request, String templateXlsId) {
		// String fileName = EgovProperties.getDownFileNameProperty(templateXlsId);;
		String fileName = templateXlsId;
        String userAgent =request.getHeader("User-Agent");
        String header = "Firefox";
        String docName = "filename";

        if(userAgent.contains("Chrome")) {
        	header = "Chrome";
        } else if(userAgent.contains("Opera")) {
        	header = "Opera";
        } else if (userAgent.contains("MSIE") || userAgent.contains("Windows NT")) {
        	header = "MSIE";
        }

        try {
	        if (header.contains("MSIE")) {
				docName = URLEncoder.encode(fileName,"UTF-8").replaceAll("\\+", "%20");
	        } else if (header.contains("Firefox")) {
	            docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
	        } else if (header.contains("Opera")) {
	            docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
	        } else if (header.contains("Chrome")) {
	            docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
	        }
		} catch (UnsupportedEncodingException e) {
			LOGGER.debug(e.getMessage());
		}

        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss", LocaleContextHolder.getLocale());
        docName = docName +"_" + format.format(new Date()) + ".xlsx";
        return docName;
	}
}