<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/RD/bg-visual.png);">
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
            <div class="font-h1">빅데이터연구소</div>
            <div class="font-body-h">Big Data Institute for Health</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="font-h3">다양한 헬스 정보를 분석해 삶의 질을 높입니다</div>
                <div class="desc">개인별 맞춤형 건강관리 서비스를 제공합니다</div>
            </div>
            <div class="img img-bigData"></div>
        </div>
        <div class="section_info_list">
            <div class="box box-type2">
                <div class="font-h7">빅데이터연구소는 방대한 양의 데이터로부터 가치를 창출하여 삶의 질을 높이기 위해 설립되었습니다&#46;</div>
                <div class="font-body">
                    <p> 우리 몸의 모든 정보를 담고 있는 유전체 분석 및 예측을 통해 발생 가능성이 높은 질병들에 대해 개인별 맞춤형 건강 관리 서비스를 제공해 선제적으로 질병을 예방하거나 발병 위험을 낮추는 것이 마크로젠 빅데이터연구소의 목적입니다&#46;</p>
                </div>
            </div>

            <hr class="M-divider">

            <div class="box mb-0">
                <div class="font-h7">연구영역</div>
                <ul class="list clearfix">
                    <li>
                        <img src="/publishing/mobile-ko/dist/img/RD/img-research_01.png" alt="방대한 데이터 활용을 위한 시스템 연구">
                        <p>방대한 데이터 활용을 위한 시스템 연구</p>
                    </li>
                    <li>
                        <img src="/publishing/mobile-ko/dist/img/RD/img-research_02.png" alt="유전체 데이터와 진료기록에 더하여 생활습관과 환경 데이터까지 통합한 질병 예측 인공지능모델 연구">
                        <p>유전체 데이터와 진료기록에 더하여 생활습관과 환경 데이터까지 통합한 질병 예측 인공지능모델 연구</p>
                    </li>
                    <li>
                        <img src="/publishing/mobile-ko/dist/img/RD/img-research_03.png" alt="인공지능 기반의 맞춤형 건강 관리 모델에 관한 연구">
                        <p>인공지능 기반의 맞춤형 건강 관리 모델에 관한 연구</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>


</body>