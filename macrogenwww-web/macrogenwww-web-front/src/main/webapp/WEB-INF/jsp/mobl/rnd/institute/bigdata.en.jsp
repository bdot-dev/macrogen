<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/RD/bg-visual.png);">
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
            <div class="font-h1">Big Data Institute for Health</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="font-h3">Improving the quality of life
                    through analysis of health information</div>
                <div class="desc">Providing personalized health care services</div>
            </div>
            <div class="img img-bigData"></div>
        </div>
        <div class="section_info_list">
            <div class="box box-type2">
                <div class="font-h7">The Big Data Institute for Health was established to enhance quality of life by creating value based on extensive amounts of data.</div>
                <div class="font-body">
                    <p>The purpose of the institute is to prevent or reduce the risk of developing diseases that are likely to occur through analysis and prediction of the genome, which contains information about our bodies, using personalized health care services.</p>
                </div>
            </div>

            <hr class="M-divider">

            <div class="box mb-0">
                <div class="font-h7">Areas of Research</div>
                <ul class="list clearfix">
                    <li>
                        <img src="/publishing/mobile-en/dist/img/RD/img-research_01.png" alt="방대한 데이터 활용을 위한 시스템 연구">
                        <p>System research based on
                            extensive amounts of data</p>
                    </li>
                    <li>
                        <img src="/publishing/mobile-en/dist/img/RD/img-research_02.png" alt="유전체 데이터와 진료기록에 더하여 생활습관과 환경 데이터까지 통합한 질병 예측 인공지능모델 연구">
                        <p>Research on disease prediction
                            AI model that integrates lifestyle
                            and environmental data, as well as
                            genome data and medical records</p>
                    </li>
                    <li>
                        <img src="/publishing/mobile-en/dist/img/RD/img-research_03.png" alt="인공지능 기반의 맞춤형 건강 관리 모델에 관한 연구">
                        <p>Research on personalized
                            health care models based on
                            artificial intelligence</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>


</body>