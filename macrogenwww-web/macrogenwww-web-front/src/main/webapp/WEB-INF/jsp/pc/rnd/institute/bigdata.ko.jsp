<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="full-bg research_bg">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
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
                <div class="font-h3">다양한 헬스 정보를 분석해<br>삶의 질을 높입니다</div>
                <div class="desc">개인별 맞춤형 건강관리 서비스를 제공합니다</div>
            </div>
            <div class="img"></div>
            <div class="desc-box">
                <p class="sub-title">빅데이터연구소는 방대한 양의 데이터로부터 가치를 창출하여 삶의 질을 높이기 위해 설립되었습니다&#46;</p>
                <p>우리 몸의 모든 정보를 담고 있는 유전체 분석 및 예측을 통해 발생 가능성이 높은 질병들에 대해 개인별 맞춤형 건강 관리 서비스를 제공해 선제적으로 질병을 예방하거나 발병 위험을 낮추는 것이 마크로젠 빅데이터연구소의 목적입니다&#46;</p>
                <hr class="divider">
            </div>
        </div>


        <div class="section_research_area clearfix">
            <div class="font-h7">연구영역</div>
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
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>