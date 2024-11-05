<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchSportSeCode"/>
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
        <div class="macrogen recruitment-info-list">
            <!-- s 채용안내 -->
            <div class="section">
                <div class="board">
                    <div class="view">
                        <div class="view-header">
                            <div class="category">
                                <span class="font-body-h-b">${ resultVo.sportSeCodeNm }</span>
                                <div class="badge-recruit ${ resultVo.rceptSttusCode eq 'P' ? 'ongoing' : '' }"><span class="sr-only">${ resultVo.rceptSttusCodeNm }</span></div>
                            </div>
                            <h2 class="font-h4">${ resultVo.empaSj }</h2>
                            <div class="font-date"><fmt:formatDate value="${resultVo.rceptBeginDe }" pattern="yyyy.MM.dd" /> - <fmt:formatDate value="${resultVo.rceptEndDe }" pattern="yyyy.MM.dd" /></div>
                        </div>
                        <div class="view-body">
                            <!-- <div class="img"><img src="/publishing/mobile-ko/dist/img/@temp/newsroom/sample-1.png" alt="제목 텍스트 제목 텍스트 제목 텍스트 제목 텍스트"></div> -->
                            <div class="font-body">
                            	${ resultVo.empaCn }
                            </div>
                            <c:if test="${ not empty resultVo.atchId }">
	                            <div class="attach-file">
	                                <a href="javascript:;" class="file btn-download-atch">
	                                    <i class="icon ico-attach"></i>
	                                    <span>${ resultVo.logicNm }</span>
	                                </a>
	                            </div>
	                        </c:if>
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