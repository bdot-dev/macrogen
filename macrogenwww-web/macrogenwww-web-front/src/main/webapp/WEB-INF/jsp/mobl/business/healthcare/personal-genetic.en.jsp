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
	            <div class="font-h1">Disease Prediction & Wellness Genetic Test</div>
	        </div>
		</div>
		
		<div class="container">
        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
        <div class="section_business">

            <!-- 탭 컨텐츠 s-->
            <div class="info-box-wrap tab-content">
                <!--컨텐츠탭01-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Disease Prediction & Wellness Genetic Test</p>
                    <p class="subject font-body-h">GenTok Blue, Green and Master. not only predict disease, but also provide a variety of test items required to maintain health and establish a balanced lifestyle based on nutrition and diet for various benefits, including improved skin and hair.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_disease.png" alt="질병예측 유전자검사">
                    </div>
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">GenTok Blue</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">GenTok Blue</a></li>
                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">GenTok Green</a></li>
                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">GenTok Master</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target1">GenTok Blue</p>
                                <div class="content">
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/gentok_blue.png" alt="마이지놈스토리블루">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">As a predictive genetic testing service for diseases including major cancers and common diseases, this provides advance knowledge on genetic risks of disease to help relieve the anxiety over any disease and maintain a healthy lifestyle.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Cancers (13 major cancers including lung cancer, stomach cancer, and colorectal cancer)</p></li>
                                                <li><p>Common diseases (23 major common diseases including hypertension, stroke, and type 2 diabetes)</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="https://www.my-genomestory.com/service_detail?service_code=blue&selectLang=ko" target="_blank" class="btn btn-sm btn-light"><span>View Detail</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target2">GenTok Green</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/gentok_green.png" alt="마이지놈스토리그린">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">My Genomestory Green provides genetic information for diet and nutrition in order for healthy diet and effective weight management based on the individual’s genetic information. The most effective way to prevent disease is a healthy lifestyle.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Diet (17 items including obesity potential, appetite, and weight loss response to exercise)</p></li>
                                                <li><p>Nutrition (16 items including vitamins, calcium, and omega-3)</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="https://www.my-genomestory.com/service_detail?service_code=green&selectLang=ko" target="_blank" class="btn btn-sm btn-light"><span>View Detail</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target3">GenTok Master</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/gentok_master.png" alt="젠톡">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">As the first genetic test service that combines a health survey and EMR data, the “GenTok Master” mobile app allows clients to check their test results and receive health information on a regular basis. It provides superior predictive test results by analyzing pathogenic mutations, which are strong genetic mutations related to diseases.</p>
                                        <div class="list-area">
                                            <p class="font-body">Master  (Men 23 / Women 25)</p>
                                            <ul class="list-circle-dot">
                                                <li><p style="color:#707070 !important;">Men: 12 types of cancers, 5 types of  disease, 6 types of cardiovascular disease </p></li>
                                                <li><p style="color:#707070 !important;">Women: 14 types of cancers, 5 types of  disease, 6 types of cardiovascular disease </p></li>                                               
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="mailto:gentok@macrogen.com" class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
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
</body>
