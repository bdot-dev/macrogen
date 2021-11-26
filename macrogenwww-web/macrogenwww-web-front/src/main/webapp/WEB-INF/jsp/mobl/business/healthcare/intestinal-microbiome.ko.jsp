<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/bg_banner_pet.png);">
        <header class="header header-white">
    <div class="inner">
        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
    </div>
</header>
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
                $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
            }
            else {
                // console.log('Up');
                $('.header').show().css({'position': 'fixed','top':'0'}).removeClass('header-white');
            }
            lastScroll = st;
        });
    });
</script>

        <div class="frame">
            <div class="font-h1">마이크로바이옴 분석</div>
            <div class="font-body-h">더바이옴/마이크로브앤미</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4">사람마다 다른 마이크로바이옴을 분석하여 나를 위한 맞춤 솔루션을 제안합니다
                </p>
                <p class="subject font-body-h img_bottom">장내미생물 분석 서비스인 ‘마이크로브앤미(MICROBE &#38; ME)’를 론칭하여 질병 발생에 주요하게 작용하는 요소 중 하나인 ‘장 건강’까지도 관리할 수 있게 되면서 질병에서부터
                    웰니스까지 포괄적인 범위의 개인유전체 서비스라인을 갖추게 되었습니다. 마크로젠 개인유전체 사업부는 고객의 인생 여정에 언제나 함께할 수 있는 건강 관리 멘토이자 동반자가
                    되는 것을 목표로 계속해서 마이지놈스토리를 연구하고 발전시켜 나갈 것이며, 이를 통해 고객들에게 끊임없이 새로운 서비스를 제시할 것입니다.</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img_microbiome_intro.png" alt="마이지놈스토리인트로">
                </div>
            </div>
            <div class="info-box-wrap">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box show">
                    <p class="font-h4 main-title" id="disease_title">마이크로바이옴 검사</p>
                    <p class="subject font-body-h img_bottom">우리의 장 속에 존재하는 ‘미생물’은 제2의 유전체라고 불릴 만큼 많은 양일뿐만 아니라 면역, 비만, 암 등 다양한 질병에 관여하는 중요한 존재입니다.  마크로젠이 자체 개발한 장내 미생물 분석 서비스 ‘마이크로브앤미’는 장 속 유익균과 유해균을 분석하여 장내 환경을 파악하고 건강한 장을 만들 수 있도록 돕습니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_microbiome_test.png" alt="마이크로바이옴 검사">
                    </div>
                    <div class="btn-area">
                        <a href="https://www.my-genomestory.com/service_detail?service_code=mbs&selectLang=ko" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                        <a href="https://smartstore.naver.com/thebiome/products/5557972286" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
