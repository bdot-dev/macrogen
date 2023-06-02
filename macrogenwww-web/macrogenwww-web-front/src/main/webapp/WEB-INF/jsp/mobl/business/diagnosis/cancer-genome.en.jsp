<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/test-bg.png);">
			<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <div class="font-h1">Genetic testing <br>for cancer risk</div>
	            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">At Macrogen, we use a variety of highly sensitive NGS tests to analyze genetic mutations associated with cancer, to help with the prevention, early detection and treatment of cancer.</p>
	                <p class="subject font-body-h img_bottom">As cancer is the leading cause of death in Korea, Macrogen offers services to help ward off and address this risk as much as possible. An NGS targeted sequencing panel that is highly customized to each individual is used to screen for, detect and monitor cancers of various types, from those hereditary in nature, to those in their early stages, to those that have progressed or metastasized.</p>
	                <div class="border-gray-box">
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome01.png" alt="">
	                    </div>
	                </div>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">SERVICE</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">Cancer Panel</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" id="cancer" onclick="setTabContent(0)"><a href="#">Cancer Panel</a></li>
	                        <li class="option-value" id="hereditary" onclick="setTabContent(1)"><a href="#">Hereditary Cancer Panel</a></li>
	                        <li class="option-value" id="brca" onclick="setTabContent(2)"><a href="#">BRCA 1/2 Cancer Panel</a></li>
	                        <li class="option-value" id="gastric" onclick="setTabContent(3)"><a href="#">Gastric Cancer Panel</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!-- 암 유전자 검사 -->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Cancer Panel</p>
	                    <p class="desc font-body img_bottom">The Axen™ Cancer Panel is a pan-cancer panel using capture hybridization technology. With better coverage than conventional methods, the Axen™ Cancer Panel is able to effectively detect a wide range of aberration types in exons of genes associated with cancer, including not only SNV and InDel, but also fusion genes, CNV, TMB and MSI. Depending on the desired range of analysis, you can choose among three types of cancer panels, consisting of as few as 88 genes or as many as 559 genes. Both liquid biopsy and tumor biopsy are available for the panels.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_cancer_genome06.png" alt="">
	                            <span class="btnZoom" data-img="img_cancer_genome06"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome07.png" alt="">
	                    </div>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome08.png" alt="">
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a> -->
					          <div class="btn-box">
						          <div class="tit">Service Inquiry</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
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
	                <!-- //암 유전자 검사 -->
	
	                <!--유전성 암 감수성 검사-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Hereditary Cancer Panel</p>
	                    <p class="desc font-body img_bottom">The Axen™ Test for Hereditary Cancer that uses blood samples to screen for some of the most common inherited cancers has been cited in many papers for its unique design that allows for genetic mutations to be effectively checked for, paving the way for early detection of specific cancer syndromes. Specifically, the Axen Test applies a next-generation genome sequencing technique to analyze all at once 69 genes closely linked with hereditary cancers, of which breast cancer and colorectal cancer, are the most widely known.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_cancer_genome02.png" alt="">
	                            <span class="btnZoom" data-img="img_cancer_genome02"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>In addition to screening for genetic mutations that may indicate the afore-mentioned cancers, Macrogen offers analysis of 69 genes closely related to cancer in the breast, ovary, pancreas, prostate, colon, rectum, uterus, stomach, skin, endocrine system, blood, neurological system and the brain, as well as sarcomas.</span></p>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a> -->
					          <div class="btn-box">
						          <div class="tit">Service Inquiry</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
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
	                <!-- //유전성 암 감수성 검사 -->
	
	                <!--BRCA1/2 유전자 검사-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">BRCA 1/2 Cancer Panel</p>
	                    <p class="desc font-body img_bottom">Analysis can be done on the full range of the BRCA1/2 gene, well known to its association with an elevated risk for hereditary breast and ovarian cancers. Alternatively, 53 relevant genes, including the BRCA1/2 can be analyzed. For those with a family history of breast cancer or ovarian cancer, selective screening can be conducted to forecast the risk of incidence caused by gene mutations. The thorough and precise analysis and testing conducted by Macrogen on gene mutations in patients diagnosed with cancer also helps in designing the best treatment program tailored to the individual’s needs.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_cancer_genome03.png" alt="">
	                            <span class="btnZoom" data-img="img_cancer_genome03-2"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <p class="description"></p>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a> -->
					          <div class="btn-box">
						          <div class="tit">Service Inquiry</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col" onclick="setTabContent(3)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //BRCA1/2 유전자 검사 -->
	
	                <!-- 위암검사패널 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Gastric Cancer Panel</p>
	                    <p class="desc font-body img_bottom">The Axen™ Gastric Cancer Panel was designed to analyze various types of stomach cancer by selectively focusing on genes that are more likely to show mutations in patients of stomach cancer. Particular emphasis is placed on genes associated with specific types of stomach cancer that are most common in Asians or Koreans; Somatic analysis is carried out to detect the intestinal type stomach cancer, which accounts for the majority of stomach cancers. CDH1, ARID1A and RHOA, found to be clinically significant in diffuse-type stomach cancers, are also analyzed as part of the panel, offering broad coverage in detecting stomach cancers including those that are hereditary in nature.</p>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome09.png" alt="">
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a> -->
					          <div class="btn-box">
						          <div class="tit">Service Inquiry</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(2)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //위암검사패널 -->
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