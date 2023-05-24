<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/test-bg.png);">
			<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <div class="font-h1">Precision <br>Medicine</div>
	            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">As a global leader in precision medicine, Macrogen has established Big Data on genomes, medicine and lifestyle to better forecast disease risks, thereby contributing to future innovation in the field of healthcare.</p>
	                <p class="subject font-body-h img_bottom">In order to offer services related to the forecasting of disease risks, and the prevention, diagnosis and treatment of diseases, Macrogen carries out analyses based on proteomics, transcriptomics and multi-omics.</p>
	                <div class="border-gray-box">
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img_precision01.png" alt="">
	                        <span class="btnZoom" data-img="img_precision01"><i class="icon ico-zoom-white"></i></span>
	                    </div>
	                </div>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">SERVICE</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">Cancer risk prediction</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" onclick="setTabContent(0)" id="prediction"><a href="#">Cancer risk prediction</a></li>
	                        <li class="option-value" onclick="setTabContent(1)" id="analyze"><a href="#">Analysis of causes of cancer</a></li>
	                        <li class="option-value" onclick="setTabContent(2)" id="monitoring"><a href="#">Cancer Occurrence Monitoring</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--암 발생 위험 예측-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Cancer risk prediction</p>
	                    <p class="subject font-body-h-b">Cancers occur due to various causes, <br>but some cancers are caused by genetic mutations of specific inherited genes.</p>
	                    <p class="desc font-body img_bottom">People who have such cancer-related mutations are exposed to far more risk of cancer than others. Hereditary cancers are caused by gene abnormalities inherited from parents, and the incidence of cancer in the same family is high. Thus, early detection and identification of the exact cause through gene diagnosis is required. The most commonly known hereditary cancers are breast cancer, ovarian cancer, and colon cancer. In regard to incidence of breast cancer, 5% - 10% is known to be genetically caused, and about more than half are caused by abnormalities in genes called BRCA1 and BRCA2. In addition, having genes that cause various cancers will dramatically increase the incidence of cancer.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_precision02.png" alt="">
	                            <span class="btnZoom" data-img="img_precision02"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //암 발생 위험 예측 -->
	                <!--암 발생 원인 분석-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Analysis of causes of cancer</p>
	                    <p class="subject font-body-h-b">This service tracks the cause of cancer and provides key information for personalized treatment by analyzing mutations in the genes involved in cancer development using DNA extracted from cancer patients' tumor samples.</p>
	                    <p class="desc font-body img_bottom">Until now, cancers were classified in a histopathological manner, but recently, gene analysis is performed on cancer tissue, and cancers are subdivided into groups. <br>This contributes to improved response (about 75% of patients exhibit different effects when the same anticancer drug is prescribed) and provides personalized treatment for cancer patients while minimizing adverse effects.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_precision03.png" alt="">
	                            <span class="btnZoom" data-img="img_precision03"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_precision04.png" alt="">
	                            <span class="btnZoom" data-img="img_precision04"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <p class="description">※ Source : Pao W et al. New driver mutations in non-small-cell lung cancer Lancet Oncol. 2011 Feb; 12(2): 175-80.</p>
	                    <hr class="divider">
	                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- 암 발생 원인 분석 -->
	                <!-- 암 발생 모니터링 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Cancer Occurrence <br>Monitoring</p>
	                    <p class="subject font-body-h-b">When cancer occurs in the body, there are NDA fragments detached from cancer cells in the blood.</p>
	                    <p class="desc font-body img_bottom">This is called ctDNA (circulating tumor DNA). When ctDNA is checked regularly, cancer cells can be detected early and prompt measures can be taken. <br>Unlike existing biopsies, this test can be performed by simply collecting blood, which makes regular checkups more efficient. However, theistest is not widely given because the levels of ctDNA are different by type of cancer and individual, making detection very difficult. Macrogen is expanding this service by continuously making technical improvements.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_monitoring3.png" alt="">
	                            <span class="btnZoom" data-img="img_monitoring3"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_precision06.png" alt="">
	                            <span class="btnZoom" data-img="img_precision06"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //암 발생 모니터링 -->
	            </div>
	            <!--// 탭 컨텐츠 e-->
	        </div>
	        <!-- 2023 추가 비지니스 확대이미지 -->
	        <div class="toast-popup">
	            <p>You can enlarge it by clicking on the image.</p>
	        </div>
	        <!--modalImageViewer-->
	        <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer" data-bs-backdrop="static">
	            <div class="modal-dialog">
	                <div class="modal-content">
	                    <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
	                    <div class="parent">
	                        <div class="zoom_img"><img src="" alt=""></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!--//modalImageViewer-->
	        <!-- //2023 추가 비지니스 확대이미지 -->
	        <script src="/publishing/mobile-en/dist/js/business.js"></script>
	        <script>

	     // location.hash // 20230502
	        if(location.hash != "#none") {    	
	       		//var loadtab = $('._select-option .option-value').filter(location.hash);
	       		//loadtab.click();	// tab content view
	       		//setTabContent(loadtab.index());	// scroll 이동
	       		
	       		var loadtab = $('._select-option .option-value').filter(location.hash);
	       		// option click, business.js line 22 function onClickSelectOption
	       		loadtab.addClass('active').siblings().removeClass('active')
	            var idx = loadtab.index();
	            var $info = $(".info-box-wrap > div");
	            $info.addClass('show').siblings().removeClass('show');
	            $info.eq(idx).addClass('show').siblings().removeClass('show');
	            textChange(loadtab);
	            setInfoSectionList(loadtab.text())
	            // scroll 이동
	            setTabContent(loadtab.index());    		
	        }
	    		
	        $(window).on("hashchange",function () { 
	        	 if(location.hash != "#none"){
	          	location.reload();
	        	 }

	        });
		        
	        </script>
	    </div>
		
	</div>

</body>
