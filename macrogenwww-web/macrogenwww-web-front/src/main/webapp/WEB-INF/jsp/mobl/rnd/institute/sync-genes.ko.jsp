<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/RD/bg-visual.png);">
        <header class="header header-white">
    <div class="inner">
        <h1 class="logo"><a href="#">마크로젠 로고</a></h1>
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
            <div class="font-h1">싱크진연구소</div>
            <div class="font-body-h">Syncgenes Institute</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="title">데이터 통합 &#183; 분석을 통해 정밀의료를 완성합니다 </div>
                <div class="desc">유전체 정보를 이용한 무병장수의 꿈을 실현을 위한 연구를 수행합니다&#46;</div>
            </div>
            <div class="img img-analysis"></div>
        </div>
        <div class="section_info_list">
            <div class="box box-type2">
                <div class="sub_title">마크로젠싱크진 연구소는</div>
                <div class="sub_desc">
                    <p> 마크로젠 싱크진연구소는 데이터 통합&#40;integration&#41;&#44; 분석&#40;analysis&#41;&#44; 결과적용&#40;synchronization&#41; 을 위한 연구를 통해 누구나
                        자신의 유전체 정보를 이용한 무병장수의 꿈이 실현되는 세상에 기여하기 위하여 설립되었습니다&#46;
                        이 같은 설립 목적을 달성하기 위해 다양한 연구를 수행하고 있습니다&#46;
                    </p>
                </div>
            </div>

            <hr class="M-divider">

            <div class="box">
                <div class="sub_title">연구</div>
                <div class="sub_desc">
                    <P>유전체&#40;genetic&#41; 데이터&#44; 임상&#40;clinical&#41; 데이터&#44; 건강관련 생활 &#40;health-related lifestyle&#41; 데이터의 통합&#40;문제를 해결하기&#41;을 위한 연구</P>
                    <div class="img img-syncgenes_research"></div>
                </div>
            </div>

            <div class="box">
                <div class="sub_title">분석</div>
                <div class="sub_desc">
                    <P>통합된 데이터를 이용한 다양한 예측 및 인공지능 분석 연구</P>
                    <div class="img img-syncgenes_analysis"></div>
                </div>
            </div>

            <div class="box mb-0">
                <div class="sub_title">정밀의료</div>
                <div class="sub_desc">
                    <P>분석 연구결과를 임상 및 건강관리와 정밀의료 신기술 개발에 적용하기 위한 연구</P>
                    <div class="img img-syncgenes_detailed"></div>
                </div>
            </div>
        </div>
    </div>


</body>