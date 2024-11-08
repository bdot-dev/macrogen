<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="modal-header">
    <div class="heading">
		<%-- 이미지 목록이 1개 이상 등록된 경우에만, 스와이퍼 생성 및페이징 처리 --%>
        <c:if test="${fn:length(resultVo.imageList) gt 1 }">
	        <!-- <span class="paging"><i class="icon ico-imgCount-white"></i><em>1 / 7</em></span> -->
 		        <div class="paging"></div>
	    </c:if>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
	<%-- 이미지 목록이 등록된 경우 --%>
	<c:if test="${fn:length(resultVo.imageList) gt 0 }">
	    <div class="swiper-container _slider">
	        <div class="swiper-wrapper">
	        	<c:forEach var="result" items="${resultVo.imageList }" varStatus="status">
	            	<div class="swiper-slide"><div class="img"><img src="${publicUrl }${result.physiclFlpth }" alt=""></div></div>
	        	</c:forEach>
	        </div>
	    </div>
		<%-- 이미지 목록이 1개 이상 등록된 경우에만, 스와이퍼 생성 및페이징 처리 --%>
        <c:if test="${fn:length(resultVo.imageList) gt 1 }">
		    <div class="pagination-wrap">
		        <ul class="navigation">
		            <li class="page-item prev _slidePrev">
		                <a class="page-link" href="#">
		                    <span class="sr-only">이전</span>
		                </a>
		            </li>
		            <li class="page-item next _slideNext">
		                <a class="page-link" href="#">
		                    <span class="sr-only">다음</span>
		                </a>
		            </li>
		        </ul>
		    </div>
		</c:if>
	</c:if>

	<%-- 이미지 목록이 등록되지 않은 경우, 대표이미지 노출 --%>
	<c:if test="${fn:length(resultVo.imageList) le 0 }">
	    <div class="swiper-container _slider">
	        <div class="swiper-wrapper">
            	<div class="swiper-slide"><div class="img"><img src="${publicUrl }${resultVo.thumbFlpth }" alt=""></div></div>
	        </div>
	    </div>
	</c:if>

    <div class="btn-wrapper">
        <a href="#" class="btn-view-zoom _openImageViewer" onclick="getActiveImage()" data-bs-toggle="modal" data-bs-target="#modalImageViewer"
        	data-image-src=""><span class="sr-only">확대보기</span></a>
        <c:if test="${fn:length(resultVo.atchList) gt 0 }">
	        <a href="/download/file/${resultVo.atchList[0].atchId }" class="btn-download"><span class="sr-only">다운로드</span></a>
        </c:if>
    </div>
    <script>
	    function getActiveImage() {
	        let activeImage = $('.swiper-slide-active').children().children('img').attr('src')
	        if (!activeImage) {
	        	activeImage = $('.swiper-slide').children().children('img').attr('src')
	        }
	        console.log('activeImage:', activeImage);
	        $('.modal-image-viewer .panzoom').children('img').attr('src',activeImage)
	    }
    </script>
</div>
<div class="modal-body">
    <div class="font-body-h-b">
        ${resultVo.nttSumry }
    </div>
    <div class="font-date"><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy.MM.dd" /></div>
    <div class="btn-wrapper">
	    <c:if test="${not empty resultVo.linkUrl and not empty resultVo.linkSj }">
        	<a href="${resultVo.linkUrl }" target="_blank"><i class="icon ico-launch-black"></i><span class="font-body">${resultVo.linkSj }</span></a>
        </c:if>
    </div>
    <div class="board">
        <div class="navigation">
            <div class="row g-0">
                <div class="col ${ empty prevVo ? 'disabled' : '' }">
               		<i class="icon ico-left-black btn-prev"></i><span class="font-body-h-b btn-prev">Previous</span>
                </div>
                <div class="col ${ empty nextVo ? 'disabled' : '' }">
               		<span class="font-body-h-b btn-next">Next</span><i class="icon ico-left-black btn-next"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<%-- 이미지 목록이 1개 이상 등록된 경우에만, 스와이퍼 생성 및페이징 처리 --%>
<c:if test="${fn:length(resultVo.imageList) gt 1 }">
<script>
    $(document).ready(function(){
        var swiper = new Swiper("._slider", {
            spaceBetween: 0,
            centeredSlides: true,
            slideToClickedSlide: true,
            navigation: {
                nextEl: "._slideNext",
                prevEl: "._slidePrev",
            },
            pagination: {
                el: '.paging',
                clickable: true,
                type : 'fraction', // 버튼 모양 결정 "bullets", "fraction"
                renderFraction: function (currentClass, totalClass) { // type이 fraction일 때 사용
                	console.log('renderFraction() started.')
                    return '<span class="' + currentClass + '"></span>' + '<span> / </span>' +
                        '<span class="' + totalClass + '"></span>';
                }
            },
        });
        swiper.update();
    });
</script>
</c:if>

<script>

	var $modalContent = $('#modal .modal-content');

	$(function() {
		$('.btn-prev').on('click', function(e) {
			<c:if test="${ empty prevVo }">
				alert('첫글입니다.');
			</c:if>
			<c:if test="${ not empty prevVo }">
				$.ajax({
					dataType: 'html', type : 'post',
					url: '/${rc.locale.language }/newsroom/media-library/viewAjaxHtml/${prevVo.nttSn}',
					data: { },
				}).done(function(html) {
					modal.show();
					$modalContent.empty().html(html);
				});
			</c:if>

		});

		$('.btn-next').on('click', function(e) {
			<c:if test="${ empty nextVo }">
				alert('마지막 글입니다.');
			</c:if>
			<c:if test="${ not empty nextVo }">
				$.ajax({
					dataType: 'html', type : 'post',
					url: '/${rc.locale.language }/newsroom/media-library/viewAjaxHtml/${nextVo.nttSn}',
					data: { },
				}).done(function(html) {
					modal.show();
					$modalContent.empty().html(html);
				});
			</c:if>

	    });

	});

</script>

