<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<title><c:out value="${resultVo.nttSj }" /> - </title>
	<meta name="description" content="MACROGEN, <c:out value="${resultVo.nttSj }" />" />
	<meta property="og:title" content="<c:out value="${resultVo.nttSj }" /> - MACROGEN" />
	<meta property="og:description" content="MACROGEN, <c:out value="${resultVo.nttSj }" />" />
	<!-- <meta property="og:image" content="${frontDomain }${artfairImageUrl}" /> -->
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
        <div class="section_IR board">
            <div class="view">
                <div class="view-header">
                    <h2 class="font-h4">${resultVo.nttSj }</h2>
                    <div class="font-date"><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy.MM.dd" /></div>
                </div>
                <div class="view-body">
                    <div class="text">
                        ${resultVo.nttCn }
                    </div>
                    <div class="btn-wrapper justify-content-end"><a href="#" class="btn-share"><span class="sr-only">공유하기</span></a></div>
                </div>
                <div class="view-footer">
                    <div class="navigation">
                        <div class="row g-0">
                            <div class="col ${ empty prevVo ? 'disabled' : '' }">
                            	<i class="icon ico-left-black btn-prev"></i><span class="font-body-h-b btn-prev">이전글</span>
                            </div>
                            <div class="col ${ empty nextVo ? 'disabled' : '' }">
                            	<span class="font-body-h-b btn-next">다음글</span><i class="icon ico-left-black btn-next"></i>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:;" class="btn btn-black btn-list">목록</a>
                </div>
            </div>
        </div>
    </div>

	<script>
	$(function() {
		$(".btn-list").on('click', function(e) {
			var $listForm = $('#listForm');
			$listForm.attr('action', '/${rc.locale.language }/ir/news');
			$listForm.attr('method', 'get');
			$listForm.submit();
	    });

		$(".btn-prev").on('click', function(e) {
			<c:if test="${ empty prevVo }">
				alert('첫글입니다.');
			</c:if>
			<c:if test="${ not empty prevVo }">
				var $listForm = $('#listForm');
				$listForm.attr('action', '/${rc.locale.language }/ir/news/${prevVo.nttSn}');
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
				$listForm.attr('action', '/${rc.locale.language }/ir/news/${nextVo.nttSn}');
				$listForm.attr('method', 'get');
				$listForm.submit();
			</c:if>
	    });

	});
	</script>

</body>