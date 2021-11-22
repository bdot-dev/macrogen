<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="modal-body">
	<%-- 이미지 목록이 등록된 경우 --%>
	<c:if test="${fn:length(resultVo.imageList) gt 0 }">
	    <div class="swiper mySwiper">
	        <div class="swiper-wrapper">
	        	<c:forEach var="result" items="${resultVo.imageList }" varStatus="status">
		            <div class="swiper-slide">
		                <div class="img"><img src="${publicUrl }${result.physiclFlpth }" alt=""></div>
		                <div class="btn-box clearfix">
		                	<c:if test="${not empty resultVo.linkUrl and not empty resultVo.linkSj }">
		                    	<a href="${resultVo.linkUrl }" target="_blank" class="link"><i class="icon icon-link-white"></i><span>${resultVo.linkSj }</span></a>
		                	</c:if>
		                    <c:if test="${fn:length(resultVo.atchList) gt 0 }">
		                    	<a href="/download/file/${resultVo.atchList[0].atchId }" class="download"><span>Download</span><i class="icon icon-download-white"></i></a>
		                    </c:if>
		                </div>
		            </div>
	        	</c:forEach>
	        </div>
			<%-- 이미지 목록이 1개 이상 등록된 경우에만, 스와이퍼 생성 및페이징 처리 --%>
	        <c:if test="${fn:length(resultVo.imageList) gt 1 }">
		        <div class="swiper-button-next swiper_btn"></div>
		        <div class="swiper-button-prev swiper_btn"></div>
		        <div class="swiper-pagination"></div>
	        </c:if>
	    </div>
	</c:if>
	<%-- 이미지 목록이 등록되지 않은 경우, 대표이미지 노출 --%>
	<c:if test="${fn:length(resultVo.imageList) le 0 }">
	    <div class="swiper mySwiper">
	        <div class="swiper-wrapper">
	            <div class="swiper-slide">
	                <div class="img"><img src="${publicUrl }${resultVo.thumbFlpth }" alt=""></div>
	                <div class="btn-box clearfix">
	                	<c:if test="${not empty resultVo.linkUrl and not empty resultVo.linkSj }">
	                    	<a href="${resultVo.linkUrl }" target="_blank" class="link"><i class="icon icon-link-white"></i><span>${resultVo.linkSj }</span></a>
	                	</c:if>
	                    <c:if test="${fn:length(resultVo.atchList) gt 0 }">
	                    	<a href="/download/file/${resultVo.atchList[0].atchId }" class="download"><span>Download</span><i class="icon icon-download-white"></i></a>
	                    </c:if>
	                </div>
	            </div>
	        </div>
	    </div>
	</c:if>

    <div class="text-box">
        <div class="text">
            ${resultVo.nttSumry }
            <span class="date"><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy.MM.dd" /></span>
        </div>
    </div>

    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-footer">
    <div class="board">
        <div class="navigation">
            <div class="content clearfix">
            	<c:if test="${not empty prevVo }">
	                <a href="javascript:;" class="item prev btn-prev">
	                    <div class="title">Previous</div>
	                </a>
                </c:if>
            	<c:if test="${not empty nextVo }">
	                <a href="javascript:;" class="item next btn-next">
	                    <div class="title">Next</div>
	                </a>
                </c:if>
            </div>
        </div>
    </div>
</div>

<%-- 이미지 목록이 1개 이상 등록된 경우에만, 스와이퍼 생성 및페이징 처리 --%>
<c:if test="${fn:length(resultVo.imageList) gt 1 }">
<script>
	console.log($('.swiper').html());
    var swiper = new Swiper(".mySwiper", {
        speed: 600,
        loop: true,
        parallax: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
            type : 'fraction', // 버튼 모양 결정 "bullets", "fraction"
            renderFraction: function (currentClass, totalClass) { // type이 fraction일 때 사용
            	console.log('renderFraction() started.')
                return '<span class="' + currentClass + '"></span>' + '<span> / </span>' +
                    '<span class="' + totalClass + '"></span>';
            }
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
</script>
</c:if>

<style>
    .swiper-slide {
        font-size: 18px;
        color: #fff;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }

    .swiper-slide .title {
        font-size: 41px;
        font-weight: 300;
    }

    .swiper-slide .subtitle {
        font-size: 21px;
    }

    .swiper-slide .text {
        font-size: 14px;
        max-width: 400px;
        line-height: 1.3;
    }
</style>

<script>
	$(function() {
		$('#modalMediaLibrary .btn-close').on('click', function() {
			window.history.replaceState({}, document.title, ' ');
		});

	    $('.btn-close').on('click',function (){
	    	modalMediaLibrary.hide();
	    })

	});
</script>

<script>
    var $modalContent = $('#modalMediaLibrary .modal-content');

	$(function() {
    	<c:if test="${not empty prevVo }">
		$('.btn-prev').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language }/newsroom/media-library/viewAjaxHtml/${prevVo.nttSn}',
				data: { },
			}).done(function(html) {
				modalMediaLibrary.show();
				$modalContent.empty().html(html);
			});

		});
		</c:if>

    	<c:if test="${not empty nextVo }">
		$('.btn-next').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language }/newsroom/media-library/viewAjaxHtml/${nextVo.nttSn}',
				data: { },
			}).done(function(html) {
				modalMediaLibrary.show();
				$modalContent.empty().html(html);
			});

	    });
		</c:if>

	});

</script>
