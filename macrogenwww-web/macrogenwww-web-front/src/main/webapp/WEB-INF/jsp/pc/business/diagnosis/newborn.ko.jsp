<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg business_bg bg-type2">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">임상진단서비스</li>
        <li class="breadcrumb-item">태아 및 희귀질환 검사</li>
    </ol>
</nav>

            <div class="hero-title">태아 및 희귀질환 검사</div>
            <div class="slogan-sub">태아를 위한 산전 검사 및 유전성 희귀질환 조기 검사</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <div class="info-box-wrap">
                <!--산전 염색체 이수성 검사-->
                <div class="info-box">
                    <p class="font-h4 main-title">산전 염색체 이수성 검사(NIPS: Non-Invasive Prenatal Screening)</p>
                    <p class="subject border-gray_bottom"> NIPS는 임신 초기 산모의 혈액에 존재하는 태아의 DNA(cffDNA, cell-free fetal DNA)를 이용해 염색체 수 이상 여부를 스크리닝<br>
                        하는 검사입니다. 대표적 관련 염색체 질환으로는 다운증후군, 에드워드증후군, 파타우증후군 등이 있습니다</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/@temp/business/img-npis.png" alt="NIPS">
                    </div>
                    <div class="caption">※ 본 검사는 검사 결과가 갖는 임상적 의미가 확립되지 않았으며,  이에 따르는 건강에 관련한 행위가 유용하다는 객관적 타당성이 아직 부족합니다.</div>
                    <p class="notice-text"><i class="icon icon-attention"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
