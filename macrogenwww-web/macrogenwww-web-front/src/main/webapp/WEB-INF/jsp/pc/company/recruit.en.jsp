<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />

    <div class="full-bg macrogen no-bg">
        <header class="header header-bg-white" id="header">
	    	<c:import url="/inc/header-inner-gnb?removeHeaderBgWhite=Y" />
		</header>

        <div class="frame frameC">
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">MACROGEN</li>
			        <li class="breadcrumb-item">채용</li>
			        <li class="breadcrumb-item active">채용안내</li>
			    </ol>
			</nav>

            <h2 class="hero-title">채용안내</h2>
        </div>
    </div>

    <div class="container">
        <div class="macrogen recruitment-info">

            <!-- s 전형절차 -->
            <div class="section">
                <div class="title">전형절차</div>
                <div class="img-recruitment-info">
                    <img src="/publishing/pc-en/dist/img/macrogen/img-recruitment-info.png" alt="전형절차">
                </div>
            </div>
            <!-- e 전형절차 -->

            <!-- s 상시채용 -->
            <div class="section">
                <div class="title">상시채용</div>
                <div class="desc">지원양식을 다운로드하여 작성한 후 채용 담당자의 메일로 송부해주시기 바랍니다&#46;</div>
                <div class="file-download">
                    <div class="row">
                    	<c:if test="${not empty applFormVo.applFormWordAtchId }">
	                        <div class="col-6">
	                            <div class="item">
	                                <i class="icon icon-doc"></i>
	                                <span class="title">${ applFormVo.applFormWordLogicNm }</span>
	                                <a href="javascript:;" class="btn-download btn-download-word"><i class="icon icon-download"></i></a>
	                            </div>
	                        </div>
                    	</c:if>
                    	<c:if test="${not empty applFormVo.applFormHwpAtchId }">
	                        <div class="col-6">
	                            <div class="item">
	                                <i class="icon icon-hwp"></i>
	                                <span class="title">${ applFormVo.applFormHwpLogicNm }</span>
	                                <a href="javascript:;" class="btn-download btn-download-hwp"><i class="icon icon-download"></i></a>
	                            </div>
	                        </div>
	                    </c:if>
                    </div>
                </div>
                <div class="btn-wrap">
                    <a href="mailto:hire@macrogen.com" target="_blank" class="btn btn-sm btn-primary"><span>채용담당자 메일접수</span></a>
                </div>
            </div>
            <!-- e 상시채용 -->

            <!-- s 채용공고 -->
            <div class="section">
                <div class="title">채용공고</div>
                <div class="select-box">
                	<%--
					<form:select path="searchSportSeCode" cssClass="form-select">
						<form:option value="">지원구분</form:option>
						<form:options items="${sportSeCodeList }" itemValue="code" itemLabel="codeNm" />
					</form:select>
					 --%>
					<form:hidden path="searchSportSeCode" />
					<c:set var="selectedSportSeCodeNm" value="지원구분" />
					<c:forEach var="result" items="${sportSeCodeList }">
						<c:if test="${result.code eq  listVo.searchSportSeCode}">
							<c:set var="selectedSportSeCodeNm" value="${result['codeNm'.concat(lang)] }" />
						</c:if>
					</c:forEach>
                    <a href="javascript:;" class="select_default _select_default"><span class="text">${selectedSportSeCodeNm }</span></a>
                    <ul class="select_list _select_list">
                       	<li><span>지원구분</span></li>
                    	<c:forEach var="result" items="${sportSeCodeList }" varStatus="status">
                        	<li><span onclick="onclickSportSe('${result.code }')">${result['codeNm'.concat(lang)] }</span></li>
                    	</c:forEach>
                    </ul>
                </div>
                <div class="board">
                    <div class="list list-card">
	                    <c:forEach var="result" items="${resultList }" varStatus="status">
	                        <div class="item with-badge">
	                            <span class="tit-sub">${ result.sportSeCodeNm }</span>
	                            <a href="javascript:linkView(${result.empaSn })" class="tit">${result.empaSj }</a>
	                            <span class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy&#46;MM&#46;dd" /></span>
	                            <div class="badge-recruit ${ result.rceptSttusCode eq 'P' ? 'ongoing' : '' }"><span class="sr-only">${result.rceptSttusCodeNm }</span></div>
	                        </div>
	                    </c:forEach>
                    </div>

					<c:if test="${fn:length(resultList) > 0}">
				        <div class="pagination-wrap">
							<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage" />
						</div>
					</c:if>

                </div>
            </div>
            <!-- e 채용공고 -->
        </div>
    </div>

	</form:form>

	<script>
		var $form = $("#listForm");

		$(function() {
			$form.find("#searchSportSeCode").on('change', function(e) {
				linkPage(1);
				return false;
		    });

			$('.btn-download-word').on('click', function(e) {
				location.href = '/${rc.locale.language}/company/recruit/download/file/${ applFormVo.applFormWordAtchId }';
			});

			$('.btn-download-hwp').on('click', function(e) {
				location.href = '/${rc.locale.language}/company/recruit/download/file/${ applFormVo.applFormHwpAtchId }';
			});
		});

		function onclickSportSe(se) {
			$form.find('#searchSportSeCode').val(se);
			linkPage(1);
		}

	    function linkPage(pageNo) {
			$form.find('#pageIndex').val(pageNo);
			$form.attr('action', '/${rc.locale.language}/company/recruit');
			$form.attr('method', 'get');
			$form.submit();
	    }

		function linkView(empaSn) {
			$form.attr('action', '/${rc.locale.language }/company/recruit/' + empaSn);
			$form.attr('method', 'get');
			$form.submit();
		}

	</script>

</body>