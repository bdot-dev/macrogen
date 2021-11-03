<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />

    <div class="container">
        <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">R&D</li>
		        <li class="breadcrumb-item active">특허</li>
		    </ol>
		</nav>

        <div class="section_RD">
            <div class="font-h1">특허</div>
            <div class="search-wrap mb-5">
                <div class="input-search">
                    <form:input path="searchKeyword" maxlength="100"
                    	class="form-control" placeholder="검색어를 입력해주세요" aria-label="검색어를 입력해주세요" aria-describedby="search2" />
                    <button class="btn-search" type="button" id="search2"><span class="sr-only">검색</span></button>
                </div>
            </div>
            <div class="board">
                <div class="list list-card">
                    <c:forEach var="result" items="${resultList }" varStatus="status">
	                    <div class="item">
	                        <span class="tit-sub">${result.nationCodeNm }</span>
	                        <span class="tit">${result.patentCn }</span>
	                        <span class="cont">${result.ctgryCodeNmKo }</span>
	                        <span class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy&#46;MM&#46;dd" /></span>
	                    </div>
	                </c:forEach>

					<c:if test="${fn:length(resultList) == 0}">
	                    <div class="item no-data">
	                        <p>검색결과가 없습니다</p>
	                    </div>
					</c:if>

                </div>
            </div>
       	</div>
		<c:if test="${fn:length(resultList) > 0}">
	        <div class="pagination-wrap">
				<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage" />
			</div>
		</c:if>

    </div>

	</form:form>

	<script>
		var $form = $("#listForm");

		$(function() {
			$form.find(".btn-search").on('click', function(e){
				linkPage(1);
				return false;
		    });

		});

	    function linkPage(pageNo) {
			$form.find('#pageIndex').val(pageNo);
			$form.attr('action', '/${rc.locale.language}/rnd/patent');
			$form.submit();
	    }
	</script>

</body>
