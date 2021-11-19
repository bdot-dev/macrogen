<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<c:choose>
	<c:when test="${resultVo.thumbBassImageUseYn eq 'Y' }">
		<c:set var="imgUrl" value="${resultVo.thumbBassImageCodeNm }" />
	</c:when>
	<c:otherwise>
		<c:set var="imgUrl" value="${publicUrl }${resultVo.thumbFlpth }" />
	</c:otherwise>
</c:choose>
<head>
	<title><c:out value="${resultVo.nttSj }" /> - </title>
	<meta name="description" content="MACROGEN, <c:out value="${resultVo.nttSj }" />" />
	<meta property="og:title" content="<c:out value="${resultVo.nttSj }" /> - MACROGEN" />
	<meta property="og:description" content="MACROGEN, <c:out value="${resultVo.nttSj }" />" />
	<meta property="og:image" content="${frontDomain }${imgUrl }" />
</head>
<body>

	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchKeyword"/>
	</form:form>

    <div class="non-bg">
        <header class="header">
		    <div class="inner">
		        <a href="javascript:history.back()" class="btn-back"><span class="sr-only">뒤로가기</span></a>
		        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
		    </div>
		</header>

        <div class="frame non-title"></div>
    </div>
    <div class="container pt-0">
        <div class="newsroom">
            <div class="thumbnail-list">
                <div class="board">
                    <div class="view">
                        <div class="view-header">
                            <div class="font-h4">${resultVo.nttSj }</div>
                            <div class="font-date"><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy.MM.dd" /></div>
                        </div>
                        <div class="view-body">
                            <%-- <div class="img"><img src="/publishing/mobile-ko/dist/img/@temp/newsroom/sample-1.png" alt="제목 텍스트 제목 텍스트 제목 텍스트 제목 텍스트"></div> --%>
                            <div class="font-body">
                                ${resultVo.nttCn }
                            </div>
                            <div class="btn-wrapper justify-content-end"><a href="javascript:;" class="btn-share"><span class="sr-only">공유하기</span></a></div>
                        </div>
                        <div class="view-footer">
                            <div class="navigation">
                                <div class="row g-0">
                                    <div class="col">
                                    	<c:if test="${ not empty prevVo }">
                                    	<i class="icon ico-left-black btn-prev"></i><span class="font-body-h-b btn-prev">이전글</span>
                                    	</c:if>
                                    </div>
                                    <div class="col">
                                    	<c:if test="${ not empty nextVo }">
                                    	<span class="font-body-h-b btn-next">다음글</span><i class="icon ico-left-black btn-next"></i>
                                    	</c:if>
                                    </div>
                                </div>
                            </div>
                            <a href="javascript:;" class="btn btn-black btn-list">목록</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<script>
	$(function() {
		$(".btn-list").on('click', function(e) {
			var $listForm = $('#listForm');
			$listForm.attr('action', '/${rc.locale.language }/newsroom/news');
			$listForm.attr('method', 'get');
			$listForm.submit();
	    });

		$(".btn-prev").on('click', function(e) {
			<c:if test="${ empty prevVo }">
				alert('첫글입니다.');
			</c:if>
			<c:if test="${ not empty prevVo }">
				var $listForm = $('#listForm');
				$listForm.attr('action', '/${rc.locale.language }/newsroom/news/${prevVo.nttSn}');
				$listForm.attr('method', 'get');
				$listForm.submit();
			</c:if>
	    });

		$(".btn-next").on('click', function(e) {
			<c:if test="${ empty nextVo }">
				alert('마지막 글입니다.');
			</c:if>
			<c:if test="${ not empty nextVo }">
				var $listForm = $('#listForm');
				$listForm.attr('action', '/${rc.locale.language }/newsroom/news/${nextVo.nttSn}');
				$listForm.attr('method', 'get');
				$listForm.submit();
			</c:if>
	    });

	});
	</script>

</body>
