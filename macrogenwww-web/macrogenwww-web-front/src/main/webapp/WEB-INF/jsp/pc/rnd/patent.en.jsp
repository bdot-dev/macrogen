<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

	<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />

    <div class="container">
        <!-- <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">MACROGEN</li>
		        <li class="breadcrumb-item">Resource</li>
		        <li class="breadcrumb-item active">Patents</li>
		    </ol>
		</nav> -->

        <div class="section_RD">
            <h2 class="font-h1 ir-diff">Patents</h2>
            <div class="search-wrap mb-5">
                <div class="input-search">
                    <form:input path="searchKeyword" maxlength="100"
                    	class="form-control" placeholder="Enter search term" aria-label="Enter a search term" aria-describedby="search2" />
                    <button class="btn-search" type="button" id="search2"><span class="sr-only">검색</span></button>
                </div>
            </div>
            <div class="board">
                <div class="list list-card">
                    <c:forEach var="result" items="${resultList }" varStatus="status">
	                    <div class="item">
	                        <span class="tit-sub">${result['nationCodeNm'.concat(lang)] }</span>
	                        <span class="tit">${result.patentCn }</span>
	                        <span class="cont">${result['ctgryCodeNm'.concat(lang)] }</span>
	                        <span class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy&#46;MM&#46;dd" /></span>
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
			$form.attr('action', '/${rc.locale.language}/rnd/patent');
			$form.submit();
	    }
	</script>

</body>
