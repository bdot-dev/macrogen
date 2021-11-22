<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchSportSeCode"/>
	</form:form>

    <div class="full-bg macrogen no-bg">
        <header class="header header-bg-white" id="header">
	    	<c:import url="/inc/header-inner-gnb" />
		</header>
        <div class="frame frameC">
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">MACROGEN</li>
			        <li class="breadcrumb-item">채용</li>
			        <li class="breadcrumb-item active">채용안내</li>
			    </ol>
			</nav>

            <div class="hero-title">채용안내</div>
        </div>
    </div>

    <div class="container">
        <div class="macrogen recruitment-info">
            <!-- s 채용안내 -->
            <div class="section">
                <div class="btn-indicator-box">
                    <a href="javascript:history.back()" class="btn btn-text"><i class="icon icon-arrow-left-long"></i><span>BACK</span></a>
                </div>
                <div class="board">
                    <div class="detail">
                        <div class="heading with-badge">
                            <div class="department">${ resultVo.sportSeCodeNm }</div>
                            <div class="title">${ resultVo.empaSj }</div>
                            <div class="date"><fmt:formatDate value="${resultVo.rceptBeginDe }" pattern="yyyy&#46;MM&#46;dd" /> &#45; <fmt:formatDate value="${resultVo.rceptEndDe }" pattern="yyyy&#46;MM&#46;dd" /></div>
                            <div class="badge-recruit ${ resultVo.rceptSttusCode eq 'P' ? 'ongoing' : '' }"><span class="sr-only">${ resultVo.rceptSttusCodeNm }</span></div>
                        </div>
                        <hr class="divider">
                        <div class="content">
                            <div class="text">
                            	${ resultVo.empaCn }
                            </div>
                            <c:if test="${ not empty resultVo.atchId }">
	                            <div class="attachment-box">
	                                <a class="file btn-download-atch" href="javascript:;">${ resultVo.logicNm }</a>
	                                <%--
	                                <a class="file" href="javascript:;">[자사양식]입사지원서_마크로젠.zip</a>
	                                <a class="file" href="javascript:;">[자사양식]입사지원서_마크로젠2.zip</a>
	                                --%>
	                            </div>
                            </c:if>
                        </div>
                        <hr class="divider">
                    </div>
                    <div class="indicator">
                        <div class="content">
                            <a href="javascript:;" class="item prev btn-prev ${ empty prevVo ? 'disabled' : '' }">
                                <div class="sub">이전글</div>
                                <div class="title">${ empty prevVo ? '첫글입니다' : prevVo.empaSj }</div>
                            </a>
                            <a href="javascript:;" class="item next btn-next ${ empty nextVo ? 'disabled' : '' }">
                                <div class="sub">다음글</div>
                                <div class="title">${ empty nextVo ? '마지막 글입니다' : nextVo.empaSj }</div>
                            </a>
                        </div>
                        <div class="btn-box">
                            <a href="javascript:;" class="btn btn-black btn-list"><span>목록</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 채용안내 -->
        </div>
    </div>

	<script>
	$(function() {
		$(".btn-list").on('click', function(e) {
			var $listForm = $('#listForm');
			$listForm.attr('action', '/${rc.locale.language }/company/recruit');
			$listForm.attr('method', 'get');
			$listForm.submit();
	    });

		$(".btn-prev").on('click', function(e) {
			<c:if test="${ empty prevVo }">
				alert('첫글입니다.');
			</c:if>
			<c:if test="${ not empty prevVo }">
				var $listForm = $('#listForm');
				$listForm.attr('action', '/${rc.locale.language }/company/recruit/${ prevVo.empaSn }');
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
				$listForm.attr('action', '/${rc.locale.language }/company/recruit/${ nextVo.empaSn }');
				$listForm.attr('method', 'get');
				$listForm.submit();
			</c:if>
	    });

		$('.btn-download-atch').on('click', function(e) {
			location.href = '/${rc.locale.language}/company/recruit/download/file/${ resultVo.atchId }';
		});

		$('.btn-download-word').on('click', function(e) {
			location.href = '/${rc.locale.language}/company/recruit/download/file/${ applFormVo.applFormWordAtchId }';
		});

		$('.btn-download-hwp').on('click', function(e) {
			location.href = '/${rc.locale.language}/company/recruit/download/file/${ applFormVo.applFormHwpAtchId }';
		});

	});
	</script>

</body>