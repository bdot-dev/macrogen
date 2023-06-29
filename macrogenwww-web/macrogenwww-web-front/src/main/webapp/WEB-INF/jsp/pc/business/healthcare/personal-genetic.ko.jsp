<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

<div class="wrap">
    <div class="full-bg business_bg bg-personal01">
        <!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>
		<div class="frame frameB">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-white">
                    <li class="breadcrumb-item">Home</li>
                    <li class="breadcrumb-item">SERVICE</li>
                    <li class="breadcrumb-item">퍼스널 헬스케어</li>
                    <li class="breadcrumb-item">질병예측 유전자검사</li>
                </ol>
            </nav>
            <div class="hero-title">질병예측 유전자검사</div>
            <a href="#_tab-box" class="btn btn-round btn-service">
                <span>SERVICE</span>
                <i class="icon icon-arrow-bottom-short-white"></i>
            </a>
        </div>
    </div>
    
    <div class="container">
        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
        <div class="section_business">
            <div class="subject-box type02">
                <p class="font-h4 title">질병예측 유전자검사</p>
                <p class="subject info">질병예측뿐만 아니라 영양, 다이어트에 이르기까지 건강을 유지하고 균형 잡힌 생활습관을 만들어가는데 필요한 다양한 유전자 검사를 제공합니다.</p>
            </div>
            
            <!-- 탭 컨텐츠 -->
            <div class="info-box-wrap tab-content">
                <div class="info-box show">
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img_disease.png" alt="질병예측 유전자검사">
                    </div>
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="list">
                            <p class="title font-h5">젠톡 블루</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/business/gentok_blue.png" alt="마이지놈스토리블루">
                                </div>
                                <div class="cont">
                                    <p class="desc">한국인이 걱정하는 주요 암 및 일반 질환을 포함한 질병 예측 유전자 검사 서비스로 암 및 일반 질환에 대한 유전적 위험을 미리 알고 대비함으로써 막연한 불안감을 해소하고 건강한 생활습관을 가질 수 있도록 돕습니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>암(폐암, 위암, 대장암 등 주요 암 13종)</li>
                                            <li>일반질환(고혈압, 뇌졸중, 제2형 당뇨병 등 주요 일반질환 23종)</li>
                                        </ul>
                                    </div>
                                    <p class="caption txt black">※ 본 검사는 의료기관을 통해서만 받으실 수 있습니다.</p>
                                    <div class="btn-wrap">
                                        <a href="https://www.my-genomestory.com/service_detail?service_code=blue&selectLang=ko" target="_blank" class="btn btn-sm btn-white"><span>자세히 보기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">젠톡 그린</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/business/gentok_green.png" alt="마이지놈스토리그린">
                                </div>
                                <div class="cont">
                                    <p class="desc">개인의 유전자 정보에 기반하여 건강한 식생활 관리와 효과적인 체중 조절이 이루어질 수 있도록 정보를 제공하는 서비스입니다. 질병을 예방하는 가장 효과적인 방법은 건강한 생활습관입니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>다이어트(비만 위험도, 식탐, 운동에 의한 체중 감량 효과 등 17개 항목)</li>
                                            <li>영양(비타민, 칼슘, 오메가3 등 16개 항목)</li>
                                        </ul>
                                    </div>
                                    <p class="caption txt black">※ 본 검사는 의료기관을 통해서만 받으실 수 있습니다.</p>
                                    <div class="btn-wrap">
                                        <a href="https://www.my-genomestory.com/service_detail?service_code=green&selectLang=ko" target="_blank" class="btn btn-sm btn-white"><span>자세히 보기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">젠톡 마스터</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/business/gentok_master.png" alt="젠톡">
                                </div>
                                <div class="cont">
                                    <p class="desc">건강설문과 병원 EMR 데이터를 결합한 최초의 유전자 검사 서비스로 ‘젠톡 마스터’ 모바일 앱을 통해  검사 결과를 확인하고 주기적으로 건강 정보를 받아볼 수 있습니다.  질병 발생 가능성과 관련 있는 강력한 유전변이인 병원성 변이를 함께 분석하여, 높은 예측도의 검사 결과를 제공합니다.</p>
                                    <div class="list-area">
                                        <p class="desc" style="margin-bottom:6px !important">Master (남성 23 / 여성 25)</p>
                                        <ul class="list-circle-dot">
                                            <li>남성 : 주요 암 12종, 주요 질환 5종, 심뇌혈관질환 6종</li>
                                            <li>여성 : 주요 암 14종, 주요 질환 5종, 심뇌혈관질환 6종</li>
                                        </ul>
                                    </div>
                                    <p class="caption txt black">※ 본 검사는 의료기관을 통해서만 받으실 수 있습니다.</p>
                                    <div class="btn-wrap">
                                        <a href="mailto:gentok@macrogen.com"  class="btn btn-sm btn-white"><span>서비스 문의</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- //탭 컨텐츠 -->

        </div>
    </div>
    
</div>

</body>
