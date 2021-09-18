<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="full-bg research_bg">
        <!--
<header class="header" id="header">
    <div class="inner">
        <div class="section_gnb">
            <h1 class="logo"><a href="#">마크로젠 로고</a></h1>
            <nav>
                <ul id="gnb">
                    <li><a href="#" class="font-bold">macrogen</a></li> &lt;!&ndash; active 시, 활성화 &ndash;&gt;
                    <li><a href="#" class="font-bold">business</a></li>
                    <li><a href="#" class="font-bold">r&d</a></li>
                    <li><a href="#" class="font-bold">newsroom</a></li>
                    <li><a href="#" class="font-bold">ir</a></li>
                    <li><a href="#" class="font-bold">esg</a></li>
                </ul>
            </nav>
        </div>
        <div class="section_btn">
            <ul class="sns">
                <li><a href="#"><i class="icon icon-facebook-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-youtube-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-blog-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-linkedin-circle-white"></i></a></li>
            </ul>
            <div class="btn_eng">
                <a href="#" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
            </div>
        </div>
    </div>
    <div class="gnb-2depth" id="gnb2Depth">
        <div class="box">
            <div class="item">
                <div class="title"><a href="#">회사소개</a></div>
                <ul>
                    <li><a href="#">기업개요</a></li>
                    <li><a href="#">경영진</a></li>
                    <li><a href="#">연혁</a></li>
                    <li><a href="#">비전</a></li>
                    <li><a href="#">마크로젠 CI</a></li>
                    <li><a href="#">인증</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="title"><a href="#">글로벌 네트워크</a></div>
            </div>
            <div class="item">
                <div class="title"><a href="#">지속가능경영</a></div>
                <ul>
                    <li><a href="#">ESG경영</a></li>
                    <li><a href="#">윤리경영</a></li>
                    <li><a href="#">사회공헌</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="title"><a href="#">채용</a></div>
                <ul>
                    <li><a href="#">인재상</a></li>
                    <li><a href="#">직무소개</a></li>
                    <li><a href="#">채용안내</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<script>
    $('#gnb2Depth').hide();
    $('#gnb li a').on({
        "mouseenter focusin" : function () {
            $('#header').addClass('active header-bg-white');
            $('#gnb2Depth').slideDown('500','linear');
            $('body, html').scroll(function(){
                $('#header').removeClass('active');
                $('#gnb2Depth').slideUp('500','linear');
            });
        },
    })
    $('#header').on({
        "mouseleave focusout" : function () {
            setTimeout(function() {
                $('#header').removeClass('active header-bg-white');
                }, 300);
            $('#gnb2Depth').slideUp('400','linear');
        }
    })
</script>
-->


<header class="header">
    <c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">R&D</li>
        <li class="breadcrumb-item">빅데이터연구소</li>
    </ol>
</nav>

            <div class="hero-title">빅데이터연구소</div>
            <div class="slogan-sub">Big Data Institute for Health</div>
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_bigData">
            <div class="info-box">
                <div class="title">다양한 헬스 정보를 분석해<br>삶의 질을 높입니다</div>
                <div class="desc">개인별 맞춤형 건강관리 서비스를 제공합니다</div>
            </div>
            <div class="img"><img src="/publishing/pc-ko/dist/img/RD/img-bigData.svg" alt="방대한 양의 데이터"></div>
            <div class="desc-box">
                <p class="sub-title">빅데이터연구소는 방대한 양의 데이터로부터 가치를 창출하여 삶의 질을 높이기 위해 설립되었습니다.</p>
                <p>우리 몸의 모든 정보를 담고 있는 유전체 분석 및 예측을 통해 발생 가능성이 높은 질병들에 대해 개인별 맞춤형 건강 관리 서비스를 제공해 선제적으로 질병을 예방하거나 발병 위험을 낮추는 것이 마크로젠 빅데이터연구소의 목적입니다.</p>
                <hr class="divider">
            </div>
        </div>


        <div class="section_research_area clearfix">
            <div class="title">연구영역</div>
            <ul class="list clearfix">
                   <li>
                       <img src="/publishing/pc-ko/dist/img/RD/img-research_01.png" alt="방대한 데이터 활용을 위한 시스템 연구">
                       <p>방대한 데이터 활용을 위한<br>시스템 연구</p>
                   </li>
                   <li>
                       <img src="/publishing/pc-ko/dist/img/RD/img-research_02.png" alt="유전체 데이터와 진료기록에 더하여 생활습관과 환경 데이터까지 통합한 질병 예측 인공지능모델 연구">
                       <p>유전체 데이터와 진료기록에 더하여<br>생활습관과 환경 데이터까지 통합한<br>질병 예측 인공지능모델 연구</p>
                   </li>
                   <li>
                       <img src="/publishing/pc-ko/dist/img/RD/img-research_03.png" alt="인공지능 기반의 맞춤형 건강 관리 모델에 관한 연구">
                       <p>인공지능 기반의 맞춤형<br>건강 관리 모델에 관한 연구</p>
                   </li>
            </ul>
        </div>

    </div>

</body>