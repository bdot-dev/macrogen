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
		        <li class="breadcrumb-item active">미디어라이브러리</li>
		    </ol>
		</nav>

        <div class="section_newsroom">
            <div class="font-h1">미디어라이브러리</div>
            <div class="board">
                <div class="search-wrap">
                    <div class="input-search">
	                    <form:input path="searchKeyword" maxlength="100"
	                    	class="form-control" placeholder="검색어를 입력해주세요" aria-label="검색어를 입력해주세요" aria-describedby="search2" />
	                    <input type="text" style="display: none;">
                        <button class="btn-search" type="button" id="search2"><span class="sr-only">검색</span></button>
                    </div>
                </div>
                <div class="tab-content">
					<c:if test="${fn:length(resultList) > 0}">
	                    <div class="thumbnail thumbnail-only-title">
	                        <ul class="clearfix">
			                    <c:forEach var="result" items="${resultList }" varStatus="status">
	                        		<c:choose>
	                        			<c:when test="${result.thumbBassImageUseYn eq 'Y' }">
	                        				<c:set var="imgUrl" value="${result.thumbBassImageCodeNm }" />
	                        			</c:when>
	                        			<c:otherwise>
	                        				<c:set var="imgUrl" value="${publicUrl }${result.thumbFlpth }" />
	                        			</c:otherwise>
	                        		</c:choose>
		                            <li class="item">
		                                <a href="javascript:linkView(${result.nttSn })">
		                                    <span class="img"><img src="${imgUrl }" alt="${result.nttSj }"></span>
		                                    <span class="tit">${result.nttSj }</span>
		                                    <span class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy.MM.dd" /></span>
		                                </a>
		                            </li>
				                </c:forEach>
	                        </ul>
	                    </div>
					</c:if>

					<c:if test="${fn:length(resultList) <= 0}">
		                <div class="no-data">
		                    <p>등록된 게시물이 없습니다.</p>
		                </div>
		            </c:if>

	                <hr class="divider"/>

					<c:if test="${fn:length(resultList) > 0}">
				        <div class="pagination-wrap">
							<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage" />
						</div>
					</c:if>

                </div>
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
			$form.attr('action', '/${rc.locale.language}/newsroom/media-library');
			$form.attr('method', 'get');
			$form.submit();
	    }

		function linkView(nttSn) {
			$form.attr('action', '/${rc.locale.language }/newsroom/media-library/' + nttSn);
			$form.attr('method', 'get');
			$form.submit();
		}

</script>

</body>
