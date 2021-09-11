<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />

    <div class="container">
        <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">R&F</li>
		        <li class="breadcrumb-item active">논문</li>
		    </ol>
		</nav>

        <div class="section_RD">
            <div class="font-h1">논문</div>
            <div class="search-wrap mb-5">
                <div class="input-search">
                    <form:input path="searchKeyword" maxlength="100"
                    	class="form-control" placeholder="검색어를 입력해주세요" aria-label="검색어를 입력해주세요" aria-describedby="search2" />
                    <button class="btn-search" type="button" id="search2"><span class="sr-only">검색</span></button>
                </div>
            </div>

            <div class="board">
                <div class="list list-card hover">
                    <c:forEach var="result" items="${resultList }" varStatus="status">
	                    <div class="item">
	                        <span class="tit-sub">${result.jrnl }</span>
	                        <a href="${result.linkUrl }" target="blank" class="tit">${result.thesisSj }</a>
	                        <span class="date">${result.registYear }.${result.registMt }</span>
	                        <a href="${result.linkUrl }" target="blank" class="arrow"><i class="icon icon-arrow-right-short"></i></a>
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
			$form.attr('action', '/${rc.locale.language}/rnd/thesis');
			$form.submit();
	    }
	</script>

</body>
