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
            <div class="font-h1">더바이옴연구소</div>
            <div class="font-body-h">The Biome Institute</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="title">마이크로바이옴 연구를 통해 인류의 건강과 삶의 질을 개선합니다</div>
                <div class="desc">마이크로바이옴의 원리를 이해하고 궁극적으로 인간의 건강을 개선합니다&#46;</div>
            </div>
            <div class="img img-pincette"></div>
        </div>
        <div class="section_info_list">
            <div class="box">
                <div class="sub_title">마이크로바이옴 연구의 선도적인 역할을 수행할 것 입니다&#46;</div>
                <div class="sub_desc">
                    <p>인체 마이크로바이옴 &#40;Human microbiome&#41;은 인체에 서식하는 박테리아&#44; 곰팡이&#44; 바이러스 등 모든 미생물의 유전체를 통칭합니다&#46;<br>
                        인체 마이크로바이옴은 음식&#44; 나이&#44; 유전적 요소&#44; 복용하는 약&#44; 그 외 다양한 환경적인 요소에 의해 영향을 받고&#44; 건강을 유지하는데 중요한 역할을 합니다&#46; 마이크로바이옴의 균형이 깨지면&#44; 비만&#44; 당뇨&#44; 천식&#44; 아토피&#44; 심장병&#44; 고혈압&#44; 자폐&#44; 암 발생에 영향을 미칩니다&#46; 따라서 마이크로바이옴의 구성을 조정하는 것은 질병의 발생을 억제 할 수 있는 잠재적인 전략이라고 할 수 있습니다&#46;<br><br>
                        더바이옴연구소는 마이크로바이옴의 원리를 이해하고 궁극적으로 인간의 건강을 개선하기 위하여 설립되었습니다&#46;<br>
                        마크로젠에서  마이크로바이옴 연구의 핵심적인 역할을 수행하면서 마이크로바이옴을 타켓으로 하는 치료제 개발의 세계적인 리더가 될 것입니다&#46;</p>
                </div>
            </div>

            <hr class="M-divider">

            <div class="box mb-0">
                <div class="sub_title">연구영역</div>
                <img src="/publishing/mobile-ko/dist/img/RD/img-biome-area.png" alt="연구 영역">
            </div>
        </div>
    </div>


</body>