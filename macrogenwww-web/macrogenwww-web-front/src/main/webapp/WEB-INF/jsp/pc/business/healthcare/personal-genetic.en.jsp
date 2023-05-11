<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">
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
	                    <li class="breadcrumb-item">Personal Healthcare</li>
	                    <li class="breadcrumb-item">Disease Prediction & Wellness Genetic Test</li>
	                </ol>
	            </nav>
	            <div class="hero-title">Disease Prediction <br>& Wellness Genetic Test</div>
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
	                <p class="font-h4 title">Disease Prediction & Wellness Genetic Test</p>
	                <p class="subject info">My Genomestory Blue (Disease Prediction), Green (Wellness), and Gold (Total Care), not only predict disease, but also provide a variety of test items required to maintain health and establish a balanced lifestyle based on nutrition and diet for various benefits, including improved skin and hair.</p>
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
	                            <p class="title font-h5">My Genomestory Blue (Disease Prediction)</p>
	                            <div class="content">
	                                <!--10.05 이미지 경로 변경-->
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_mygenomeblue.png" alt="마이지놈스토리블루">
	                                </div>
	                                <div class="cont">
	                                    <p class="desc">As a predictive genetic testing service for diseases including major cancers and common diseases, this provides advance knowledge on genetic risks of disease to help relieve the anxiety over any disease and maintain a healthy lifestyle.</p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>Cancers (13 major cancers including lung cancer, stomach cancer, and colorectal cancer)</li>
	                                            <li>Common diseases (23 major common diseases including hypertension, stroke, and type 2 diabetes)</li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                        <a href="https://www.my-genomestory.com/service_detail?service_code=blue&selectLang=ko" target="_blank" class="btn btn-sm btn-white"><span>View Detail</span></a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="list">
	                            <p class="title font-h5">My Genomestory Green (Wellness)</p>
	                            <div class="content">
	                                <!--10.05 이미지 경로 변경-->
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_mygenomegreen.png" alt="마이지놈스토리그린">
	                                </div>
	                                <div class="cont">
	                                    <p class="desc">My Genomestory Green provides genetic information for diet and nutrition in order for healthy diet and effective weight management based on the individual’s genetic information. The most effective way to prevent disease is a healthy lifestyle.</p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>Diet (17 items including obesity potential, appetite, and weight loss response  to exercise)</li>
	                                            <li>Nutrition (16 items including vitamins, calcium, and omega-3)</li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                        <a href="https://www.my-genomestory.com/service_detail?service_code=green&selectLang=ko" target="_blank" class="btn btn-sm btn-white"><span>View Detail</span></a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="list">
	                            <p class="title font-h5">My Genomestory Gold (Total Care)</p>
	                            <div class="content">
	                                <!--10.05 이미지 경로 변경-->
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_mygenomegold.png" alt="마이지놈스토리골드">
	                                </div>
	                                <div class="cont">
	                                    <p class="desc">This is our comprehensive genetic testing service that enables inclusion of major optional items required to build a healthy life including diseases (Blue) and wellness (Green).</p>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="list">
	                            <p class="title font-h5">GenTok (Disease Prediction)</p>
	                            <div class="content">
	                                <!--10.05 이미지 경로 변경-->
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_mygenomegentok.png" alt="젠톡">
	                                </div>
	                                <div class="cont">
	                                    <p class="desc">As the first genetic test service that combines a health survey and EMR data, the “GenTok” mobile app allows clients to check their test results and receive health information on a regular basis. It provides superior predictive test results by analyzing pathogenic mutations, which are strong genetic mutations related to diseases.</p>
	                                    <div class="list-area">
	                                        <p class="desc" style="margin-bottom:6px !important">Master  (Men 23 / Women 25)</p>
	                                        <ul class="list-circle-dot">
	                                            <li>Men: 12 types of cancers, 5 types of  disease, 6 types of cardiovascular disease </li>
	                                            <li>Women: 14 types of cancers, 5 types of  disease, 6 types of cardiovascular disease </li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                        <a href="mailto:gentok@macrogen.com"  class="btn btn-sm btn-white"><span>Service Inquiry</span></a>
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
