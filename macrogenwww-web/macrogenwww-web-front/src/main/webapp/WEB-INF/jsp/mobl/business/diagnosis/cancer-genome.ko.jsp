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
	            <div class="font-h1">암 유전체 검사</div>
	            <div class="font-body-h">FFPE, Tissue, Liquid Biopsy(액체생검)등을 이용한 암유전체 검사</div>
	            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
	        </div>
		</div>
	
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">높은 민감도의 다양한 NGS검사로 암 유관 유전자 변이를 분석하여 암의 조기 발견과 치료 그리고 예방의 길라잡이가 되겠습니다.</p>
	                <p class="subject font-body-h img_bottom">국내 사망 원인 1위인 암. 마크로젠에서는 상황별 맞춤화된 NGS targeted sequencing panel로 유전성 암부터 조기암, 진행성·전이성 암에 대해 Cancer Monitoring, (Early) Detection, Screening 분석합니다.</p>
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
	                        <span class="text">암 유전자 검사</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" id="cancer" onclick="setTabContent(0)"><a href="#">암 유전자 검사</a></li>
	                        <li class="option-value" id="hereditary" onclick="setTabContent(1)"><a href="#">유전성 암 감수성 검사</a></li>
	                        <li class="option-value" id="brca" onclick="setTabContent(2)"><a href="#">BRCA1/2 유전자 검사</a></li>
	                        <li class="option-value" id="gastric" onclick="setTabContent(3)"><a href="#">위암검사패널</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!-- 암 유전자 검사 -->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">암 유전자 검사 <br>(Axen™ Cancer Panel)</p>
	                    <p class="desc font-body img_bottom">Axen™ Cancer Panel은 capture hybridization 방식의 Pan-cancer panel로, coverage를 더욱 높여 암 관련 유전자 exon의 모든 SNV, InDel뿐만 아니라 Fusion gene, CNV 그리고 TMB, MSI까지도 효율적으로 검출할 수 있습니다. 원하는 연구범위에 따라 최소 88개부터 최대 559개 유전자로 구성된 3종의 cancer panel 중 가장 적합한 서비스를 선택할 수 있으며, Liquid Biopsy와 Tumor Biopsy 모두 분석이 가능합니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome06.png" alt="">
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
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	
	                    
	                </div>
	                <!-- //암 유전자 검사 -->
	
	                <!--유전성 암 감수성 검사-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">유전성 암 감수성 검사 <br>(Axen™ Hereditary Cancer Panel)</p>
	                    <p class="desc font-body img_bottom">혈액 채취를 통해 대표적인 유전성 암 관련 유전자를 검사하는 Axen™ Hereditary Cancer (유전성 암) 검사는 관련 논문들을 기반으로 하여 특정 암의 조기 발견에 도움이 될 수 있는 유전자 변이를 검사할 수 있도록 설계되었습니다. 유전성 암에서 대표적으로 널리 알려져 있는 유방암과 대장암 등 다양한 유전성 암 원인 유전자 69개를 차세대염기서열 분석법을 통해 한번에 분석 가능합니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome02.png" alt="">
	                            <span class="btnZoom" data-img="img_cancer_genome02"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>이 외에도 유방암, 난소암, 췌장암, 전립선암, 대장암, 자궁암, 위암, 피부암, 내분비계암, 혈액암, 신경계 뇌종양, 육종, 기타 암과 관련한 69개의 유전자를 검사합니다.</span></p>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //유전성 암 감수성 검사 -->
	
	                <!--BRCA1/2 유전자 검사-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">BRCA1/2 유전자 검사 <br>(Axen™ BRCA / Axen™ BRCA Premium)</p>
	                    <p class="desc font-body img_bottom">유전성 유방암 및 난소암 등의 발병 위험도를 높이는 것으로 잘 알려진 BRCA1/2 유전자의 전 영역을 분석하거나, 혹은 BRCA1/2를 포함한 유관 유전자 총 53개를 분석합니다. 유방암 및 난소암 등에 가족력이 있어 유전적 변이에 의한 발병 위험도 예측 선별 검사의 역할을 하기도 하며, 확진받은 환자의 유관 유전자 변이에 대해 정밀한 검사를 통해 정확한 진단과 개인 맞춤 치료에도 도움을 줍니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome03.png" alt="">
	                            <span class="btnZoom" data-img="img_cancer_genome03"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome04.png" alt="">
	                    </div>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome05.png" alt="">
	                    </div>
	                    <p class="description"></p>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col" onclick="setTabContent(3)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //BRCA1/2 유전자 검사 -->
	
	                <!-- 위암검사패널 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">위암 검사 패널 <br>(Axen™ Gastric Cancer)</p>
	                    <p class="desc font-body img_bottom">Axen™ Gastric Cancer Panel은 위암 환자에게서 돌연변이 빈도가 높게 나타나는 유전자를 선별하여, 다양한 위암의 유형을 분석할 수 있도록 디자인 했습니다. <br>아시아/한국인 특이적인 위암 관련 유전자들로 구성되어 위암 발병의 대부분을 차지하는 장 형 위암(Intestinal type)을 위한 Somatic 분석이 가능하며, 뿐만 아니라 미만형 위암(Diffuse type)에서 임상적으로 유의미한 CDH1, ARID1A, RHOA 분석을 포함하고 있어 유전성 위암 분석까지 가능하도록 설계되어 있습니다.</p>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_cancer_genome09.png" alt="">
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(2)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
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
	            <p>이미지를 확대할 수 있습니다</p>
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
	        	location.reload();
	        });
	        </script>
	    </div>
	</div>


</body>
</html>