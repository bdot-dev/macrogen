<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

	<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />

    <div class="container">
        <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">MACROGEN</li>
		        <li class="breadcrumb-item">Resoure</li>
		        <li class="breadcrumb-item active">Papers</li>
		    </ol>
		</nav>

        <div class="section_RD">
            <div class="font-h1">Papers</div>
            <div class="search-wrap mb-5">
                <div class="input-search">
                    <form:input path="searchKeyword" maxlength="100"
                    	class="form-control" placeholder="Enter search term" aria-label="Enter search term" aria-describedby="search2" />
                    <button class="btn-search" type="button" id="search2"><span class="sr-only">검색</span></button>
                </div>
            </div>

            <div class="board">
                <div class="list list-card hover">
                    <c:forEach var="result" items="${resultList }" varStatus="status">
	                    <div class="item">
	                        <span class="tit-sub">${result.jrnl }</span>
	                        <a href="${result.linkUrl }" target="blank" class="tit">${result.thesisSj }</a>
	                        <span class="date">${result.registYear }&#46;${result.registMt }</span>
	                        <a href="${result.linkUrl }" target="blank" class="arrow"><i class="icon icon-arrow-right-short"></i></a>
	                    </div>
                    </c:forEach>

					<c:if test="${fn:length(resultList) == 0}">
	                    <div class="item no-data">
	                        <p>No article</p>
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
