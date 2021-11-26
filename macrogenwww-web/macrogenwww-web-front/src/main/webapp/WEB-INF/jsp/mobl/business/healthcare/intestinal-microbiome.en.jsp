<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/bg_banner_pet.png);">
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
            <div class="font-h1">Microbiome Analysis</div>
            <div class="font-body-h">The Biome / MICROBE & ME</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4">Present personalized solutions based on microbiome analysis.
                </p>
                <p class="subject font-body-h img_bottom">Our new gut microbiome analysis service, MICROBE & ME, enables the management of your gut health, one of the major factors in disease, providing a wide range of personalized genome services from disease to wellness. The Personal Genome Division of Macrogen will continue to advance and develop the role of MyGenome Story into a health care mentor and companion so we can help our clients lead healthier lives by offering new and innovative services.</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-en/dist/img/business/img_microbiome_intro.png" alt="마이지놈스토리인트로">
                </div>
            </div>
            <div class="info-box-wrap">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box show">
                    <p class="font-h4 main-title" id="disease_title">Microbiome Test</p>
                    <p class="subject font-body-h img_bottom">Microorganisms in our gut are known as a genomic blueprint for their influence on various diseases such as immunity, obesity, and cancer as well as quantity. MICROBE & ME is our exclusive gut microbiome analysis solution that analyzes beneficial and harmful bacteria, gives us insights into our intestinal environment and helps keep our guts healthy.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_microbiome_test.png" alt="마이크로바이옴 검사">
                    </div>
                    <div class="btn-area">
                        <a href="https://www.my-genomestory.com/service_detail?service_code=mbs&selectLang=ko" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                        <a href="https://smartstore.naver.com/thebiome/products/5557972286" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>Order</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
