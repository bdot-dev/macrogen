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

    <div class="container">
        <!-- <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">Newsroom</li>
		        <li class="breadcrumb-item active">NEWS</li>
		    </ol>
		</nav> -->

        <div class="section_newsroom">
            <h2 class="font-h1 ir-diff">News</h2>
            <div class="btn-indicator-box">
                <a href="javascript:history.back()" class="btn btn-text"><i class="icon icon-arrow-left-long"></i><span>BACK</span></a>
            </div>
            <div class="board">
                <div class="detail">
                    <div class="heading">
                        <div class="title">${resultVo.nttSj }</div>
                        <div class="date"><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy&#46;MM&#46;dd" /></div>
                    </div>
                    <hr class="divider"/>
                    <div class="content">
                        <%-- <div class="img"><img src="${imgUrl }" alt=""></div> --%>
                        <div class="text">
                        	${resultVo.nttCn }
                        </div>
                        <div class="btn-share-box"><a href="#" class="btn btn-circle btn-white btn-lg"><i class="icon icon-share"></i></a></div>
                    </div>
                    <hr class="divider"/>
                </div>
                <div class="indicator">
                    <div class="content">
                        <a href="javascript:;" class="item prev btn-prev ${ empty prevVo ? 'disabled' : '' }">
                            <div class="sub">Previous</div>
                            <div class="title">${ empty prevVo ? 'No more' : prevVo.nttSj }</div>
                        </a>
                        <a href="javascript:;" class="item next btn-next ${ empty nextVo ? 'disabled' : '' }">
                            <div class="sub">Next</div>
                            <div class="title">${ empty nextVo ? 'No more' : nextVo.nttSj }</div>
                        </a>
                    </div>
                    <div class="btn-box">
                        <a href="javascript:;" class="btn btn-black btn-list"><span>Go list</span></a>
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
				alert('No more article');
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
				alert('No more article');
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
