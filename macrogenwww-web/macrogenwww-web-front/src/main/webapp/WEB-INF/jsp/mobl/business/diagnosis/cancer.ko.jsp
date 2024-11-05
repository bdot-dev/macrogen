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
	            <h2 class="font-h1">정밀의학</h2>
	            <div class="font-body-h">Precision Medicine</div>
	            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
	        </div>
	    	
	    	
	    </div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">글로벌 정밀의학 선도기업으로서 유전체정보, 의료정보 및 생활정보의 통합 빅데이터를 구축하고 질병을 예측하여 미래의학 혁신에 이바지하고 있습니다.</p>
	                <p class="subject font-body-h img_bottom">개인의 상황에 따른 질병 예측, 예방, 맞춤 진료 및 치료를 위해 유전체학(genomics)을 포함하여 단백질체학(proteomics), 전사체학(transcriptomics)의 멀티오믹스(multi-omics) 분석을 수행하고 있습니다.</p>
	                <div class="border-gray-box">
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_precision01.png" alt="정밀의학">
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
	                        <span class="text">암 발생 위험 예측</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" onclick="setTabContent(0)" id="prediction"><a href="#">암 발생 위험 예측</a></li>
	                        <li class="option-value"  onclick="setTabContent(1)" id="analyze"><a href="#">암 발생 원인 분석</a></li>
	                        <li class="option-value"  onclick="setTabContent(2)" id="monitoring"><a href="#">암 발생 모니터링</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--암 발생 위험 예측-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">암 발생 위험 예측</p>
	                    <p class="subject font-body-h-b">암은 다양한 원인에 의해 발생하지만, 일부 암은 타고난 특정 유전자의 변이 때문에 발생합니다.</p>
	                    <p class="desc font-body img_bottom">유전성 암은 부모로부터 물려받은 유전자 이상에 의해 발생하며 동일 가계 내 암 환자 발생 확률이 높아집니다. 암과 관련된 변이를 가진 경우 그렇지 않은 사람에 비해 암이 발생할 가능성이 매우 커지므로 유전자 진단을 통한 조기 발견과 정확한 원인 파악이 필요합니다. 유방암, 난소암, 대장암은 대표적인 유전성 암입니다. 유방암 환자의 5~10%가 유전적 원인에 의해 발병한다고 알려져 있으며, 이 중 절반 이상이 BRCA1, BRCA2 유전자 이상을 가지고 있습니다. 이 외에도 다양한 암 발생 주요 원인 유전자를 보유하는 경우 암 발생률이 급격하게 증가하게 됩니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_precision02.png" alt="암 발생 위험 예측">
	                            <span class="btnZoom" data-img="img_precision02"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a> -->
					          <div class="btn-box">
						          <div class="tit">마크로젠 서비스 문의</div>
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
	                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //암 발생 위험 예측 -->
	                <!--암 발생 원인 분석-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">암 발생 원인 분석</p>
	                    <p class="subject font-body-h-b">암 환자의 종양 샘플에서 추출한 DNA를 이용해 암 발생에 관여하는 주요 유전자의 변이를 분석함으로써 암 발생 원인을 추적하고 개인별 맞춤 치료에 중요한 정보를 제공하는 서비스입니다.</p>
	                    <p class="desc font-body img_bottom">지금까지는 종양 샘플의 조직 및 세포의 변화를 육안으로 판별하여 암을 치료해 왔으나, 최근에는 암 조직의 유전체 분석을 통해 얻어진 유전 정보를 치료에 활용하고 있습니다.이러한 유전정보의 활용으로 암 발생 원인을 밝혀내고, 적절한 치료 방법 및 약물을 처방하여 효과적인 맞춤형 치료에 도움을 주고 있습니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_precision03.png" alt="암 발생 원인 분석">
	                            <span class="btnZoom" data-img="img_precision03"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_precision04.png" alt="암 발생 원인 분석">
	                            <span class="btnZoom" data-img="img_precision04"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <p class="description">※ 출처 : Pao W et al. New driver mutations in non-small-cell lung cancer Lancet Oncol. 2011 Feb; 12(2): 175-80.</p>
	                    <hr class="divider">
	                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a> -->
					          <div class="btn-box">
						          <div class="tit">마크로젠 서비스 문의</div>
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
	                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- 암 발생 원인 분석 -->
	                <!-- 암 발생 모니터링 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">암 발생 모니터링</p>
	                    <p class="subject font-body-h-b">체내에 암이 발생한 경우 암세포로부터 떨어져 나온 DNA 조각이 혈액 내에도 존재합니다.</p>
	                    <p class="desc font-body img_bottom">이를 혈중 종양 DNA(ctDNA; circulating tumor DNA)라 부르며 정기적인 ctDNA 확인을 통해 암세포 발생 여부를 조기에 발견함으로써 빠른 대처가 가능합니다. <br>이는 기존 조직 검사와 달리 혈액 채취만으로 검사를 진행할 수 있어 효율적인 정기적인 검진이 이루어질 수 있습니다. <br>아직 암 종별 및 개인별 ctDNA의 수준 차이와 까다로운 검출 과정 때문에 적용 범위가 넓지 않지만 추후 지속적인 기술 향상을 통해 이를 확대해나갈 예정입니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_precision05.png" alt="암 발생 모니터링">
	                            <span class="btnZoom" data-img="img_precision05"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_precision06.png" alt="암 발생 모니터링">
	                            <span class="btnZoom" data-img="img_precision06"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a> -->
					          <div class="btn-box">
						          <div class="tit">마크로젠 서비스 문의</div>
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
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
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
	        	 if(location.hash != "#none"){
	 	        	location.reload();
	        	 }

	        });
		        
	        </script>
	    </div>
		
	</div>
	

</body>
