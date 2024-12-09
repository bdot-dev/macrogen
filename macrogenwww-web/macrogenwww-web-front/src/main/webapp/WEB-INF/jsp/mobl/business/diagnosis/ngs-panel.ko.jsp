<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
	    <div class="top-bg">
	    	<header class="header">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			
			<div class="frame">
	            <h2 class="font-h3">NGS 유전자패널 검사실</h2>
<!-- 	            <div class="font-body-h">Next Generation Sequencing(NGS)-based <br>genetic panel laboratory support</div> -->
	        </div>
	        
	    </div>
		<script>
			$(function(){
				var lastScroll = 0;
				$(window).scroll(function(){
					var st = $(this).scrollTop();
					if (st > lastScroll){
						// console.log('Down');
						$('.header').show().css({'position': 'absolute','top':'0'});
					}
					else if (st === 0) {
						// console.log('Top');
						// $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
					}
					else {
						// console.log('Up');
						$('.header').show().css({'position': 'fixed','top':'0'}).removeClass('header-white');
					}
					lastScroll = st;
				});
			});
		</script>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">패널, 장비, 인력 등 NGS기반 유전자패널 검사실의 초기 구축을 지원합니다.</p>
	                <p class="subject font-body-h img_bottom">NGS(Next Generation Sequencing)기반 유전자패널 검사실을 구축하기 위해 많은 노력이 필요합니다. <br>마크로젠의 노하우를 통해 개발된 PMG Lab Business Model을 확인하세요. 각종 Clinical NGS Panels, Sequencing Platform, Manpower 등 다양한 서비스 옵션을 제공합니다.</p>
	                <div class="border-gray-box">
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_ngs_gene01.png" alt="">
	                        <span class="btnZoom" data-img="img_ngs_gene01"><i class="icon ico-zoom-white"></i></span>
	                    </div>
	                </div>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">SERVICE</p>
	                <p class="desc font-body">환자 개개인의 맞춤 치료가 가능한 정밀 의학 구현을 위해, 많은 병원과 기관에서 NGS(차세대염기서열분석)을 기반으로 한 유전자 패널 검사실 구축을 희망하고 있습니다. <br>하지만 NGS 기반 유전자 패널 검사실은 축적된 노하우로 개발된 임상 진단 패널과 숙련된 전문 인력, 인증 받은 시퀀싱 플랫폼 장비 구축이 필수이며, 많은 시간과 비용이 소비됩니다. <br>마크로젠은 NGS 패널, 수행 인력, 결과 분석, Lab 장비 등 모든 서비스를 맞춤 지원하고있습니다.</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">임상진단사업 인증 현황</span>
	                    </div> 
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" onclick="setTabContent(0)" id="certification"><a href="#">임상진단사업 인증 현황</a></li>
	                        <li class="option-value" onclick="setTabContent(1)" id="features"><a href="#">마크로젠 암 진단 패널의 특징 및 경쟁력</a></li>
	                        <li class="option-value" onclick="setTabContent(2)" id="scope"><a href="#">NGS기반 유전자 패널 검사실 구축 범위</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--임상진단사업 인증 현황-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">임상진단사업 인증 현황</p>
	                    <p class="desc font-body img_bottom">마크로젠은 인증받은 기술력으로 임상분석사업을 <br>해오고 있습니다.</p>
	                    <div class="img_ngs_gene01">
	                        <ol>
	                            <li>
	                                <i></i>
	                                <strong>2013</strong>
	                                <ul>
	                                    <li>2008년 ISO9001-최초인증</li>
	                                    <li>2011년 전사업 확대</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <i></i>
	                                <strong>2017</strong>
	                                <ul>
	                                    <li>미국병리학회(CAP) 및 CLIA인증 획득</li>
	                                    <li>식약처 NGS 임상검사실 승인</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <i></i>
	                                <strong>2018</strong>
	                                <ul>
	                                    <li>유전자검사 정확도 평가 참여(A등급)</li>
	                                    <li>업계 최초 PIMS 인증 획득 <br>(개인정보보호 관리체계)</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <i></i>
	                                <strong>2019</strong>
	                                <ul>
	                                    <li>NGS 기반 체외진단시약 <br>GMP 인정 획득</li>
	                                    <li>임상검체시험분석기관(GCLP) <br>인정 획득 (NGS업계 최초)</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <i></i>
	                                <strong>2020</strong>
	                                <ul>
	                                    <li>미국병리학회(CAP) 및 CLIA 인증 획득 <br>(2회 연속)</li>
	                                    <li>유전자검사 정확도평가 참여 (A등급)</li>
	                                    <li>ISO 13485 인증 획득</li>
	                                </ul>
	                            </li>
	                        </ol>
	                    </div>
	                    <div class="img_ngs_gene02">
	                        <a href="/downfile/1_FM89418_macrogen(2022).pdf" class="btn_down">ISO 9001.pdf</a>
							<a href="/downfile/2_Certificate_of_Accreditation_MacrogenHQ_2023.pdf" class="btn_down">CLIA 인증</a>
							<a href="/downfile/3_Macrogen_HQ-CAP_Certificate_of_Accreditation_2022-2024.pdf" class="btn_down">CAP 인증</a>
							<a href="/downfile/4_Macrogen_2022-20_Institute_of_Genetic_testing_evaluation.pdf" class="btn_down">유전자검사 정확도평가 인증</a>
							<a href="/downfile/9_Certificate_of_GMP_Macrogen_2025.08.23.pdf" class="btn_down">GMP 인증</a>
							<a href="/downfile/7_Genetic_Testing_Accuracy_Evaluation_Certification_5-2.PDF" class="btn_down">임상검사실체외진단검사 인증(GCLP)</a>
							<a href="/downfile/6_ISO13485.pdf" class="btn_down">ISO 13485</a>
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
	                <!-- //임상진단사업 인증 현황 -->
	                <!--마크로젠 암 진단 패널의 특징 및 경쟁력-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">마크로젠 암 진단 패널의 특징 <br>및 경쟁력</p>
	                    <p class="desc font-body img_bottom">세계 최고 수준의 유전체 기술력과 자체 보유 분석력을 바탕으로 높은 품질의 서비스를 제공합니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_ngs_gene02.png" alt="">
	                            <span class="btnZoom" data-img="img_ngs_gene02"><i class="icon ico-zoom-white"></i></span>
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
	                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //마크로젠 암 진단 패널의 특징 및 경쟁력 -->
	                <!-- NGS기반 유전자 패널 검사실 구축 범위 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">NGS기반 유전자 패널 검사실<br>(PMG Lab) 구축 범위</p>
	                    <p class="desc font-body img_bottom">NGS기반 유전자 패널 검사실 구축과 운영을 위한 상황별 맞춤 서비스를 제공합니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_ngs_gene03.png" alt="">
	                            <span class="btnZoom" data-img="img_ngs_gene03"><i class="icon ico-zoom-white"></i></span>
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
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
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
</html>