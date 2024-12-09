<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
    <div class="non-bg">
        <header class="header">
		    <div class="inner">
		        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
		        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
		    </div>
		</header>

        <div class="frame">
            <h2 class="font-h1">공시정보</h2>
        </div>
    </div>
	<script>
		$(function(){
			var lastScroll = 0;
			$(window).scroll(function(){
				var st = $(this).scrollTop();
				if (st > lastScroll){
					// console.log('Down');
					$('.header').show().css({'position': 'absolute','top':'0'});
				}
				else if (st === 0) {
					// console.log('Top');
					// $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
				}
				else {
					// console.log('Up');
					$('.header').show().css({'position': 'fixed','top':'0'}).removeClass('header-white');
				}
				lastScroll = st;
			});
		});
	</script>

        <div class="section_IR">
            <!-- <h2 class="font-h1">공시정보</h2> -->
            <div class="iframe-box" style="padding-bottom: 80px;">
                <iframe
                        src="https://dart.fss.or.kr/html/search/SearchCompanyIR3_M.html?textCrpNM=038290"
                        name="공시자료"
                        scrolling="no">

                    iframe를 지원하지 않는 브라우저인 경우 대체정보를 제공
                </iframe>
            </div>
            <!-- <div class="iframe_box">
                <iframe src="https://dart.fss.or.kr/html/search/SearchCompanyIR3_M.html?textCrpNM=038290" width="100%" height="100%"></iframe>
            </div>-->
       </div>
    </div>

</body>
