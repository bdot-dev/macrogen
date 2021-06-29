package macrogen.www.common;

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import macrogen.www.exception.BaseException;

/**
 * <pre>
 * macrogen.www.common
 *    |_ ExcelReader.java
 * 개요 : 엑셀 파일 읽기
 * </pre>
 * 1.작성일 : 2018. 11. 17. 오후 1:07:37
 * 2.작성자 : eluocnc
 * @version :
 */
@Component
public class ExcelReader {
	private static final Logger LOGGER = LoggerFactory.getLogger(ExcelReader.class);

	public List<Map<String, String>> read(String path, int sheetIndex, boolean readFirstRow) throws Exception {
		List<Map<String, String>> list = new ArrayList<>();

		FileInputStream fis = null;
		Workbook workbook = null;
		try {
			fis = new FileInputStream(path);
			workbook = getWorkbook(path, fis);

			// 현재 Sheet 반환
			Sheet curSheet = workbook.getSheetAt(sheetIndex);
			list.addAll(readSheet(curSheet, readFirstRow));

		} catch (Exception e) {
			throw new BaseException(e.getMessage());
		} finally {
			try {
				if (workbook != null) workbook = null;
				if (fis != null) fis.close();
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
		}
		return list;
	}

	public List<Map<String, String>> read(String path, boolean readFirstRow) throws Exception {
		List<Map<String, String>> list = new ArrayList<>();

		FileInputStream fis = null;
		Workbook workbook = null;
		try {
			fis = new FileInputStream(path);
			workbook = getWorkbook(path, fis);

			// 현재 Sheet 반환
			for(int sheetIndex = 0 ; sheetIndex < workbook.getNumberOfSheets(); sheetIndex++) {
				Sheet curSheet = workbook.getSheetAt(sheetIndex);
				list.addAll(readSheet(curSheet, readFirstRow));
			}

		} catch (Exception e) {
			throw new BaseException(e.getMessage());
		} finally {
			try {
				if (workbook != null) workbook = null;
				if (fis != null) fis.close();
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
		}
		return list;
	}
	private Workbook getWorkbook(String path, FileInputStream fis) throws Exception {
		Workbook workbook = null;
		try {
			if (path.toLowerCase().endsWith(".xls")) {
				workbook = new HSSFWorkbook(fis);
			} else if (path.toLowerCase().endsWith(".xlsx")) {
				workbook = new XSSFWorkbook(fis);
			} else {
				throw new BaseException("invalid extension");
			}

		} catch (Exception e) {
			throw new BaseException(e.getMessage());
		}
		return workbook;
	}

	private List<Map<String, String>> readSheet(Sheet sheet, boolean readFirstRow) throws Exception {
		List<Map<String, String>> data = new ArrayList<Map<String, String>>();

		int beginIndex = 0;
		if (!readFirstRow) {
			beginIndex = 1;
		}
		LOGGER.debug("row count:{}", sheet.getPhysicalNumberOfRows());
		int cellCnt = sheet.getRow(0).getPhysicalNumberOfCells();
		for (int rowIndex = beginIndex; rowIndex < sheet.getPhysicalNumberOfRows(); rowIndex++) {
			// 현재 row 반환
			Row curRow = sheet.getRow(rowIndex);
			Map<String, String> map = readRow(curRow, cellCnt);
			data.add(map);
		}

		return data;
	}

	private Map<String, String> readRow(Row row, int cellCnt) throws Exception {
		Map<String, String> map = new HashMap<>();
		LOGGER.debug("cell count:{}", row.getPhysicalNumberOfCells());
		for (int cellIndex = 0; cellIndex < cellCnt; cellIndex++) {
			Cell cell = row.getCell(cellIndex);
			String value = "";

			// cell 스타일이 다르더라도 String으로 반환 받음
			if (null != cell) {
				switch (cell.getCellType()) {
				case Cell.CELL_TYPE_FORMULA:
					value = cell.getCellFormula();
					break;
				case Cell.CELL_TYPE_NUMERIC:
					/*DecimalFormat format = new DecimalFormat("#");
					value = format.format(cell.getNumericCellValue());*/
					DataFormatter df = new DataFormatter();
					value = df.formatCellValue(cell);
					break;
				case Cell.CELL_TYPE_STRING:
					value = cell.getRichStringCellValue() + "";
					break;
				case Cell.CELL_TYPE_BLANK:
					value = "";
					break;
				case Cell.CELL_TYPE_ERROR:
					value = cell.getErrorCellValue() + "";
					break;
				default:
					value = "";
					break;
				}
			}
			LOGGER.debug("cellIndex, value:{}, {}", cellIndex, value);
			map.put(cellIndex + "", value);
		}
		return map;
	}

}
