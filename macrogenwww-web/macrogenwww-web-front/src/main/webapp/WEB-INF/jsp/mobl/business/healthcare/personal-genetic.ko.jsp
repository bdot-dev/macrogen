<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg personal01">
			<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <div class="font-h1">질병예측 유전자검사</div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
	        <div class="section_business">
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--컨텐츠탭01-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">질병예측 유전자검사</p>
	                    <p class="subject font-body-h">마이지놈스토리 블루와 그린, 그리고 이들을 모두 아우르는 골드는 질병예측뿐만 아니라 영양, 다이어트에 이르기까지 건강을 유지하고 균형 잡힌 생활습관을 만들어가는데 필요한 다양한 검사 항목을 제공합니다.</p>
	                    <!--10.05 이미지 경로 변경-->
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_disease.png" alt="질병예측 유전자검사">
	                    </div>
	                    <!--content-anchor s-->
	                    <div class="content-anchor">
	                        <div class="selected-value _anchor-value">
	                            <span class="text">마이지놈스토리 블루</span>
	                        </div>
	                        <ul class="anchor-option">
	                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">마이지놈스토리 블루</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">마이지놈스토리 그린</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">마이지놈스토리 골드</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">젠톡</a></li>
	                        </ul>
	                    </div>
	                    <!--content-anchor e-->
	                    <hr class="divider">
	                    <div class="list-gallery">
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target1">마이지놈스토리 블루</p>
	                                <div class="content">
	                                    <!--10.05 이미지 경로 변경-->
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_mygenomeblue.png" alt="마이지놈스토리블루">
	                                    </div>
	                                    <div class="cont">
	                                        <p class="desc font-body">한국인이 걱정하는 주요 암 및 일반 질환을 포함한 질병 예측 유전자 검사 서비스로 암 및 일반 질환에 대한 유전적 위험을 미리 알고 대비함으로써 막연한 불안감을 해소하고 건강한 생활습관을 가질 수 있도록 돕습니다.</p>
	                                        <div class="list-area">
	                                            <ul class="list-circle-dot">
	                                                <li><p>암(폐암, 위암, 대장암 등 주요 암 13종)</p></li>
	                                                <li><p>일반질환(고혈압, 뇌졸중, 제2형 당뇨병 등 주요 일반질환 23종)</p></li>
	                                            </ul>
	                                        </div>
	                                        <p class="caption txt black">※ 본 검사는 의료기관을 통해서만 받으실 수 있습니다.</p>
	                                        <div class="btn-wrap">
	                                            <a href="https://www.my-genomestory.com/service_detail?service_code=blue&selectLang=ko" target="_blank" class="btn btn-sm btn-light"><span>자세히 보기</span></a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target2">마이지놈스토리 그린</p>
	                                <div class="content">
	                                    <!--10.05 이미지 경로 변경-->
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_mygenomegreen.png" alt="마이지놈스토리그린">
	                                    </div>
	                                    <div class="cont">
	                                        <p class="desc font-body">개인의 유전자 정보에 기반하여 건강한 식생활 관리와 효과적인 체중 조절이 이루어질 수 있도록 정보를 제공하는 서비스입니다. 질병을 예방하는 가장 효과적인 방법은 건강한 생활습관입니다.</p>
	                                        <div class="list-area">
	                                            <ul class="list-circle-dot">
	                                                <li><p>다이어트(비만 위험도, 식탐, 운동에 의한 체중 감량 효과 등 17개 항목)</p></li>
	                                                <li><p>영양(비타민, 칼슘, 오메가3 등 16개 항목)</p></li>
	                                            </ul>
	                                        </div>
	                                        <p class="caption txt black">※ 본 검사는 의료기관을 통해서만 받으실 수 있습니다.</p>
	                                        <div class="btn-wrap">
	                                            <a href="https://www.my-genomestory.com/service_detail?service_code=green&selectLang=ko" target="_blank" class="btn btn-sm btn-light"><span>자세히 보기</span></a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target3">마이지놈스토리 골드</p>
	                                <div class="content">
	                                    <!--10.05 이미지 경로 변경-->
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_mygenomegold.png" alt="마이지놈스토리골드">
	                                    </div>
	                                    <div class="cont">
	                                        <p class="desc font-body">질병(블루)에서부터 영양/비만관리(그린)까지 건강한 삶을 만들기 위해 필요한 검사 항목을 포괄적으로 선택할 수 있는 종합형 유전자 검사 서비스입니다.</p>
	                                        <p class="caption black">※ 본 검사는 의료기관을 통해서만 받으실 수 있습니다.</p>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target4">젠톡</p>
	                                <div class="content">
	                                    <!--10.05 이미지 경로 변경-->
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_mygenomegentok.png" alt="젠톡">
	                                    </div>
	                                    <div class="cont">
	                                        <p class="desc font-body">건강설문과 병원 EMR 데이터를 결합한 최초의 유전자 검사 서비스로 ‘젠톡’ 모바일 앱을 통해  검사 결과를 확인하고 주기적으로 건강 정보를 받아볼 수 있습니다.  질병 발생 가능성과 관련 있는 강력한 유전변이인 병원성 변이를 함께 분석하여, 높은 예측도의 검사 결과를 제공합니다.</p>
	                                        <div class="list-area">
	                                            <p class="font-body">Master  (남성 23 / 여성 25)</p>
	                                            <ul class="list-circle-dot" style="color:#707070;">
	                                                <li><p>남성: 주요 암 12종, 주요 질환 5종, 심뇌혈관질환 6종</p></li>
	                                                <li><p>여성: 주요 암 14종, 주요 질환 5종, 심뇌혈관질환 6종</p></li>
	                                            </ul>
	                                        </div>
	                                        <p class="caption txt black">※ 본 검사는 의료기관을 통해서만 받으실 수 있습니다.</p>
	                                        <div class="btn-wrap">
	                                            <a href="mailto:gentok@macrogen.com" class="btn btn-sm btn-light"><span>서비스 문의</span></a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //컨텐츠탭01 -->
	            </div>
	            <!--// 탭 컨텐츠 e-->
	        </div>
	        <script src="/publishing/mobile-ko/dist/js/business.js"></script>
	        
	    </div>
	</div>
	

</body>
