<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap en">

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
        <li class="breadcrumb-item">Big Data Institute for Health</li>
    </ol>
</nav>

            <div class="hero-title">Big Data Institute for Health</div>
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_bigData">
            <div class="info-box">
                <div class="font-h3">Improving the quality of life<br/>through analysis of health information</div>
                <div class="desc">Providing personalized health care services</div>
            </div>
            <div class="img">
            	<!-- <img src="/publishing/pc-en/dist/img/RD/img-bigData.png" alt="방대한 양의 데이터"> -->
            </div>
            <div class="desc-box">
                <p class="sub-title">The Big Data Institute for Health was established to enhance quality of life by creating value based on extensive amounts of data.</p>
                <p>The purpose of the institute is to prevent or reduce the risk of developing diseases that are likely to occur through analysis and prediction of the genome, which contains information about our bodies, using personalized health care services.</p>
                <hr class="divider">
            </div>
        </div>


        <div class="section_research_area clearfix">
            <div class="font-h7">Areas of Research</div>
            <ul class="list clearfix">
                   <li>
                       <img src="/publishing/pc-en/dist/img/RD/img-research_01.png" alt="방대한 데이터 활용을 위한 시스템 연구">
                       <p>System research based on<br/>extensive amounts of data</p>
                   </li>
                   <li>
                       <img src="/publishing/pc-en/dist/img/RD/img-research_02.png" alt="유전체 데이터와 진료기록에 더하여 생활습관과 환경 데이터까지 통합한 질병 예측 인공지능모델 연구">
                       <p>Research on disease prediction<br/>AI model that integrates lifestyle<br/>and environmental data, as well as<br/>genome data and medical records</p>
                   </li>
                   <li>
                       <img src="/publishing/pc-en/dist/img/RD/img-research_03.png" alt="인공지능 기반의 맞춤형 건강 관리 모델에 관한 연구">
                       <p>Research on personalized<br/>health care models based on<br/>artificial intelligence</p>
                   </li>
            </ul>
        </div>

    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>