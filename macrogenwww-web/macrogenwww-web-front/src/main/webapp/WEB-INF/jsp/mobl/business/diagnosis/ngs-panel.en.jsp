<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/test-bg.png;">
			<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <div class="font-h1">NGS-based <br>Genetic Panel <br>Lab</div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">Macrogen offers support during the early stages of setting up of labs for next-generation gene sequencing panels, including consulting on the panel itself, related equipment and personnel.</p>
	                <p class="subject font-body-h img_bottom">Setting up labs for Next-Generation Sequencing panels, or NGS, requires significant efforts. Have a look at the PMG Lab Business Model developed by Macrogen drawing on its years of knowhow. The Model offers a variety of services, including those for clinical NGS panels, sequencing platforms and manpower.</p>
	                <div class="border-gray-box">
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img_ngs_gene01.png" alt="">
	                        <span class="btnZoom" data-img="img_ngs_gene01"><i class="icon ico-zoom-white"></i></span>
	                    </div>
	                </div>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">SERVICE</p>
	                <p class="desc font-body">A number of healthcare institutions desire to set up their own lab for gene sequencing panels based on Next-Generation Sequencing techniques, to offer treatments tailored to each individual with the help of precision medicine. But in reality setting up a test lab for NGS panels requires clinical diagnostic test panels built on years of knowhow, highly skilled personnel and certified sequencing platform equipment, not to mention the time and costs associated with securing such resources. Inevitably, only a handful of organizations have succeeded in setting up labs that meet the approval criteria of regulatory authorities to perform NGS panel testing. With over 25 years of experience in gene sequencing, Macrogen can offer customized support in a wide range of areas on your journey to setting up your own lab for NGS panels and precision medicine, with services covering the panel itself to lab personnel, analyses of test results and equipment.</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">Certification acquired by Macrogen</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" onclick="setTabContent(0)" id="certification"><a href="#">Certification acquired by Macrogen</a></li>
	                        <li class="option-value" onclick="setTabContent(1)" id="features"><a href="#">Features and strengths of cancer panels</a></li>
	                        <li class="option-value" onclick="setTabContent(2)" id="scope"><a href="#">Scope of NGS-based PMG labs</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--임상진단사업 인증 현황-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Certification acquired by Macrogen in the clinical diagnosis business</p>
	                    <p class="desc font-body img_bottom">Macrogen offers clinical diagnosis services using certified and proven technology.</p>
	                    <div class="img_ngs_gene01">
	                        <ol>
	                            <li>
	                                <i></i>
	                                <strong>2013</strong>
	                                <ul>
	                                    <li>2008 Acquired initial certification <br>for ISO 9001 </li>
	                                    <li>2011 Broader certification of <br>all businesses</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <i></i>
	                                <strong>2017</strong>
	                                <ul>
	                                    <li>Acquired certification from <br>CAP(College of American Pathologists) <br>of U.S.A. and CLIA(Clinical Laboratory <br>Improvement Amendments)</li>
	                                    <li>Approved by the Korean Ministry <br>of Food and Drug Safety for the <br>NGS clinical test lab</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <i></i>
	                                <strong>2018</strong>
	                                <ul>
	                                    <li>Received Grade A in the assessment <br>for the accuracy of genetic tests</li>
	                                    <li>Acquired certification for PIMIS, <br>the first ever in the industry to receive <br>such certification in Korea</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <i></i>
	                                <strong>2019</strong>
	                                <ul>
	                                    <li>Acquired GMP certification for <br>NGS-based reagents for in vitro <br>diagnostics</li>
	                                    <li>Acquired certification as a GCLP, <br>the first ever among businesses <br>offering NGS</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <i></i>
	                                <strong>2020</strong>
	                                <ul>
	                                    <li>Acquired certification from CAP of <br>U.S.A. and CLIA (for the second <br>consecutive time)</li>
	                                    <li>Received Grade A in the assessment <br>for the accuracy of genetic tests</li>
	                                    <li>Acquired certification for ISO 13485</li>
	                                </ul>
	                            </li>
	                        </ol>
	                    </div>
	                    <div class="img_ngs_gene02">
	                        <a href="/downfile/1_FM89418_macrogen(2022).pdf" class="btn_down">ISO 9001.pdf</a>
							<a href="/downfile/2_Certificate_of_Accreditation_MacrogenHQ_2023.pdf" class="btn_down">CLIA Certification</a>
							<a href="/downfile/3_Macrogen_HQ-CAP_Certificate_of_Accreditation_2022-2024.pdf" class="btn_down">CAP Accreditation</a>
							<a href="/downfile/4_Macrogen_2022-20_Institute_of_Genetic_testing_evaluation.pdf" class="btn_down">Genetic Testing Accuracy <br>Evaluation Certification</a>
							<a href="/downfile/9_Certificate_of_GMP_Macrogen_2025.08.23.pdf" class="btn_down">GMP Accreditation</a>
							<a href="/downfile/7_Genetic_Testing_Accuracy_Evaluation_Certification_5-2.PDF" class="btn_down">GCLP Accreditation</a>
							<a href="/downfile/6_ISO13485.pdf" class="btn_down">ISO 13485</a>
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
	                <!-- //임상진단사업 인증 현황 -->
	                <!--마크로젠 암 진단 패널의 특징 및 경쟁력-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Key features and strengths of Macrogen’s cancer panels</p>
	                    <p class="desc font-body img_bottom">With some of the most cutting-edge gene sequencing technologies in the world and advanced analytical capabilities developed in-house, Macrogen offers some of the highest quality services available on the market today.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_ngs_gene02.png" alt="">
	                            <span class="btnZoom" data-img="img_ngs_gene02"><i class="icon ico-zoom-white"></i></span>
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
	                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //마크로젠 암 진단 패널의 특징 및 경쟁력 -->
	                <!-- NGS기반 유전자 패널 검사실 구축 범위 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Scope of projects to set up <br>NGS-based PMG labs</p>
	                    <p class="desc font-body img_bottom">Macrogen offers services tailored to each client for optimal installation and operation of labs for genetic testing panels using next-generation sequencing techniques.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_ngs_gene03.png" alt="">
	                            <span class="btnZoom" data-img="img_ngs_gene03"><i class="icon ico-zoom-white"></i></span>
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
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //NGS기반 유전자 패널 검사실 구축 범위 -->
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
	        <script src="/publishing/mobile-ko/dist/js/business.js"></script>
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
</html>