<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />

    <div class="container">
        <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">Newsroom</li>
		        <li class="breadcrumb-item active">Notice</li>
		    </ol>
		</nav>

        <div class="section_newsroom">
            <h2 class="font-h1">Notice</h2>
            <div class="search-wrap">
                <div class="input-search">
                    <form:input path="searchKeyword" maxlength="100"
                    	class="form-control" placeholder="Enter a search term" aria-label="Enter a search term" aria-describedby="search2" />
                    <input type="text" style="display: none;">
                    <button class="btn-search" type="button" id="search2"><span class="sr-only">검색</span></button>
                </div>
            </div>
            <div class="board">
                <div class="list list-border hover">
                    <c:forEach var="result" items="${resultList }" varStatus="status">
	                    <div class="item">
	                        <div class="tit"><a href="javascript:linkView(${result.nttSn })">${result.nttSj }</a></div>
	                        <div class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy&#46;MM&#46;dd" /></div>
	                        <a href="javascript:linkView(${result.nttSn })" class="arrow"><i class="icon icon-arrow-right-short"></i></a>
	                    </div>
	                </c:forEach>

                </div>

				<c:if test="${fn:length(resultList) > 0}">
			        <div class="pagination-wrap">
						<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage" />
					</div>
				</c:if>

				<c:if test="${fn:length(resultList) == 0}">
                    <div class="item no-data">
                        <p>No article</p>
                    </div>
				</c:if>

            </div>
        </div>
    </div>

	</form:form>

	<script>
		var $form = $("#listForm");

		$(function() {
			$form.find(".btn-search").on('click', function(e){
				linkPage(1);
				return false;
		    });

			$('#searchKeyword').on('keyup', function(key) {
				if (key.keyCode == 13) {
					linkPage(1)
					return false;
				}
			});

		});

	    function linkPage(pageNo) {
			$form.find('#pageIndex').val(pageNo);
			$form.attr('action', '/${rc.locale.language}/newsroom/notice');
			$form.attr('method', 'get');
			$form.submit();
	    }

		function linkView(nttSn) {
			$form.attr('action', '/${rc.locale.language }/newsroom/notice/' + nttSn);
			$form.attr('method', 'get');
			$form.submit();
		}

	</script>

</body>
