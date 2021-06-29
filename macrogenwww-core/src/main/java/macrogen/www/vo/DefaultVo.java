package macrogen.www.vo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@SuppressWarnings("serial")
public class DefaultVo implements Serializable {

	/** 검색조건 */
    private String searchCondition = "";

    /** 검색Keyword */
    private String searchKeyword = "";

    /** 검색사용여부 */
    private String searchUseYn = "";

    /** 현재페이지 */
    private int pageIndex = 1;

    /** 페이지갯수 */
    private int pageUnit = 10;

    /** 페이지사이즈 */
    private int pageSize = 10;

    /** firstIndex */
    private int firstIndex = 1;

    /** lastIndex */
    private int lastIndex = 1;

    /** recordCountPerPage */
	//@JsonIgnore
    private int recordCountPerPage = 20;

    /** 검색KeywordFrom */
    private String searchKeywordFrom = "";

	/** 검색KeywordTo */
    private String searchKeywordTo = "";

    private Date registDt;
    private Long registerSn;
    private String registerId;
    private String registerNm;
    private Date updtDt;
    private Long updusrSn;
    private String updusrId;
    private String updusrNm;

    /** 검색사용 시작일 - 추가 171122*/
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date searchBeginDt;

    /** 검색사용 종료일 - 추가 171122*/
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date searchEndDt;

	/** 모드 **/
    private String mode;

	/** 정렬방법 */
	private String orderBy;

	/** number of data list */
	private int pageListNo;

	/** totabl count of data list */
	private int totalRecordCount;

	/** checkbox */
	private List<?> pkList;

	@JsonIgnore
	public Locale getLocale() {
		return LocaleContextHolder.getLocale();
	}

	public int getFirstIndex() {
		return firstIndex;
	}
	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}
	public int getLastIndex() {
		return lastIndex;
	}
	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}
	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}
	public String getSearchCondition() {
        return searchCondition;
    }
    public void setSearchCondition(String searchCondition) {
        this.searchCondition = searchCondition;
    }
    public String getSearchKeyword() {
        return searchKeyword;
    }
    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }
    public String getSearchUseYn() {
        return searchUseYn;
    }
    public void setSearchUseYn(String searchUseYn) {
        this.searchUseYn = searchUseYn;
    }
    public int getPageIndex() {
        return pageIndex;
    }
    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }
    public int getPageUnit() {
        return pageUnit;
    }
    public void setPageUnit(int pageUnit) {
        this.pageUnit = pageUnit;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
	public String getSearchKeywordFrom() {
		return searchKeywordFrom;
	}
	public void setSearchKeywordFrom(String searchKeywordFrom) {
		this.searchKeywordFrom = searchKeywordFrom;
	}
	public String getSearchKeywordTo() {
		return searchKeywordTo;
	}
	public void setSearchKeywordTo(String searchKeywordTo) {
		this.searchKeywordTo = searchKeywordTo;
	}
	public Date getRegistDt() {
		return registDt;
	}
	public void setRegistDt(Date registDt) {
		this.registDt = registDt;
	}
	public Date getUpdtDt() {
		return updtDt;
	}
	public void setUpdtDt(Date updtDt) {
		this.updtDt = updtDt;
	}
	public Date getSearchBeginDt() {
		return searchBeginDt;
	}
	public void setSearchBeginDt(Date searchBeginDt) {
		this.searchBeginDt = searchBeginDt;
	}
	public Date getSearchEndDt() {
		return searchEndDt;
	}
	public void setSearchEndDt(Date searchEndDt) {
		this.searchEndDt = searchEndDt;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getOrderBy() {
		return orderBy;
	}
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	public Long getRegisterSn() {
		return registerSn;
	}
	public void setRegisterSn(Long registerSn) {
		this.registerSn = registerSn;
	}
	public Long getUpdusrSn() {
		return updusrSn;
	}
	public void setUpdusrSn(Long updusrSn) {
		this.updusrSn = updusrSn;
	}
	public int getPageListNo() {
		return pageListNo;
	}
	public void setPageListNo(int pageListNo) {
		this.pageListNo = pageListNo;
	}
	public int getTotalRecordCount() {
		return totalRecordCount;
	}
	public void setTotalRecordCount(int totalRecordCount) {
		this.totalRecordCount = totalRecordCount;
	}

	public String getRegisterId() {
		return registerId;
	}

	public void setRegisterId(String registerId) {
		this.registerId = registerId;
	}

	public String getRegisterNm() {
		return registerNm;
	}

	public void setRegisterNm(String registerNm) {
		this.registerNm = registerNm;
	}

	public String getUpdusrId() {
		return updusrId;
	}

	public void setUpdusrId(String updusrId) {
		this.updusrId = updusrId;
	}

	public String getUpdusrNm() {
		return updusrNm;
	}

	public void setUpdusrNm(String updusrNm) {
		this.updusrNm = updusrNm;
	}

	public List<?> getPkList() {
		return pkList;
	}

	public void setPkList(List<?> pkList) {
		this.pkList = pkList;
	}

}
