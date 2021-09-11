<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchKeyword"/>
	</form:form>

    <div class="container">
        <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">Newsroom</li>
		        <li class="breadcrumb-item active">공지사항</li>
		    </ol>
		</nav>

        <div class="section_newsroom">
            <div class="font-h1">공지사항</div>
            <div class="btn-indicator-box">
                <a href="javascript:history.back()" class="btn btn-text"><i class="icon icon-arrow-left-long"></i><span>BACK</span></a>
            </div>
            <div class="board">
                <div class="detail">
                    <div class="heading">
                        <div class="title">${resultVo.nttSj }</div>
                        <div class="date"><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy.MM.dd" /></div>
                    </div>
                    <hr class="divider"/>
                    <div class="content">
                  		<c:choose>
                  			<c:when test="${resultVo.thumbBassImageUseYn eq 'Y' }">
                  				<c:set var="imgUrl" value="${resultVo.thumbBassImageCodeNm }" />
                  			</c:when>
                  			<c:otherwise>
                  				<c:set var="imgUrl" value="${publicUrl }${resultVo.thumbFlpth }" />
                  			</c:otherwise>
                  		</c:choose>
                  		<c:if test="${ not empty resultVo.thumbBassImageCodeNm or not empty resultVo.thumbFlpth }">
	                        <div class="img"><img src="${imgUrl }" alt=""></div>
                  		</c:if>
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
                            <div class="sub">이전글</div>
                            <div class="title">${ empty prevVo ? '첫글입니다' : prevVo.nttSj }</div>
                        </a>
                        <a href="javascript:;" class="item next btn-next ${ empty nextVo ? 'disabled' : '' }">
                            <div class="sub">다음글</div>
                            <div class="title">${ empty nextVo ? '마지막 글입니다' : nextVo.nttSj }</div>
                        </a>
                    </div>
                    <div class="btn-box">
                        <a href="javascript:;" class="btn btn-black btn-list"><span>목록</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<script>
	$(function() {
		$(".btn-list").on('click', function(e) {
			var $listForm = $('#listForm');
			$listForm.attr('action', '/${rc.locale.language }/newsroom/notice');
			$listForm.attr('method', 'get');
			$listForm.submit();
	    });

		$(".btn-prev").on('click', function(e) {
			<c:if test="${ empty prevVo }">
				alert('첫글입니다.');
			</c:if>
			<c:if test="${ not empty prevVo }">
				var $listForm = $('#listForm');
				$listForm.attr('action', '/${rc.locale.language }/newsroom/notice/${prevVo.nttSn}');
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
				$listForm.attr('action', '/${rc.locale.language }/newsroom/notice/${nextVo.nttSn}');
				$listForm.attr('method', 'get');
				$listForm.submit();
			</c:if>
	    });

	});
	</script>

</body>
