<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg single_multi">
			<header class="header">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			
			<div class="frame">
	            <div class="font-h3">Single Cell <br>Multi-omics Analysis</div>
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
	        <div class="section_business single_cell_multi">
	            <!--상단 공통 s -->
	            <div class="subject-box type02">
	                <p class="title font-h4">국내 최초, 최다 경험을 바탕으로 고객 맞춤형 Single cell Multi-omics analysis 서비스를 제공합니다.</p>
	                <p class="subject font-body-h img_bottom">단일세포 유전자 분석은 생물의 기능적, 구조적 단위인 하나의 세포에서 유전자 발현량 및 유전자 변화를 분석하는 것 입니다. 세포 단위에서 cellular heterogeneity, rare cell population, cellular differentiation, chromatin heterogeneity, immune profile, surface protein profile 등의 확인이 가능해짐에 따라 세포 치료제 선별, 줄기세포, 암 발달 및 진행 과정 등 다양한 연구 분야에 응용됩니다. 마크로젠은 국내 1위 세계 5위의 차세대염기서열분석(Next generation sequencing, NGS) 수행능력을 기반으로 높은 수준의 유전자 분석 데이터를 빠르게 제공합니다. 또한 26년간 축적한 업계 1위의 유전체 분석 기술력과 빅데이터 및 미개척 분야 연구 투자를 기반으로 싱글셀 분석 서비스를 다양화하며 시장을 선도하고 있습니다.</p>
	                <div class="img">
	                    <img src="/publishing/mobile-ko/dist/img/business/img-ngs-cell.png" alt="Single Cell Multi-omics analysis소개이미지">
	                </div>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--컨텐츠탭01-->
	                <div class="info-box show">
	                    <div class="box-gray-6">
	                        <div>
	                            <p class="title font-body-h-b">Single cell RNA sequencing</p>
	                            <p class="desc font-body">단일세포 유전자 발현 분석</p>
	                        </div>
	                        <div>
	                            <p class="title font-body-h-b">Single nucleus RNA sequencing</p>
	                            <p class="desc font-body">세포로 진행하기 어려운 샘플에서<br>핵을 분리한 후 유전자 발현 분석</p>
	                        </div>
	                        <div>
	                            <p class="title font-body-h-b">Single cell immune profiling</p>
	                            <p class="desc font-body">단일세포 TCR, BCR 발현 분석</p>
	                        </div>
	                        <div>
	                            <p class="title font-body-h-b">Single cell surface protein profiling</p>
	                            <p class="desc font-body">단일세포 표면에 위치하는 단백질 분석</p>
	                        </div>
	                        <div>
	                            <p class="title font-body-h-b">Single cell ATAC sequencing</p>
	                            <p class="desc font-body">단일 핵의 DNA 풀림 정보 분석</p>
	                        </div>
	                        <div>
	                            <p class="title font-body-h-b">Single cell Multiome sequencing</p>
	                            <p class="desc font-body">단일 핵의 DNA 의 풀림 정보와 유전자 발현을 동시에 분석</p>
	                        </div>
	                    </div>
	                    
						<p class="font-h4 main-title">Service Process</p>
						<div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img-single-cell-process.png" alt="">
	                            <span class="btnZoom" data-img="img-single-cell-process"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    
						<p class="font-h4 main-title">Sample Preparation</p>
						<p class="font-body-h sub-title">Single Cell sample</p>
						<p class="font-body desc">Single cell multi-omics Analysis에서 data quality는 sample condition에 의해 결정됩니다. 마크로젠에서는 sample quality를 향상시키기 위한 quality improvement step과 다수의 분석 경험을 바탕으로 높은 정확도의 QC 결과를 제공합니다.</p>
						<div class="table-scroll">
	                        <table class="table table-row tline">
	                            <colgroup>
	                                <col width="45%">
	                                <col width="">
	                                <col width="">
	                            </colgroup>
	                            <tr>
	                            	<th scope="row">sample type</th>
	                            	<th scope="row">Cell, Nucleus</th>
	                            	<th scope="row">Tissue</th>
	                            </tr>
	                            <tr>
	                                <th scope="row">Cell number/weight</th>
	                                <td>> 5X10⁵</td>
	                                <td>200mg~500mg</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Cell viabillity</th>
	                                <td colspan="2">> 70%</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Target cell/ run</th>
	                                <td colspan="2">1,000 ~ 20,000</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Consideration point</th>
	                                <td colspan="2">RBC, debris, cell aggregation ratio, dead cells</td>
	                            </tr>
	                        </table>
	                    </div>
	                    
	                    <p class="font-body desc">단일세포 유전자 분석 기술의 등장으로 기존 유전자 분석에서는 알 수 없던 극미량의 세포 유전자 분석과 소량으로 발현되는 유전자 분석이 가능합니다. 이를 통해 개인의 환경, 유전, 생물학적 특성을 세밀히 이해할 수 있으며 질병 예측과 예방, 맞춤 진단이 가능한 초정밀의학 실현에 한 단계 다가가게 되었습니다. 마크로젠은 국내 싱글셀 유전자 분석 프로젝트를 가장 많이 진행했으며, 단일세포 전사체 분석(single Cell Gene Expression)과 공간 전사체 분석(Spatial Gene Expression) 서비스의 CSP(Certified Service Provider) 동시 인증을 가진 국내 유일의 업체입니다. 또한 새로 등장하는 단일세포 유전체 분석 신기술을 빠르게 도입함으로써 단일세포 분석 서비스를 다양화에 앞장서며 시장을 선도하고 있습니다.</p>
	                    <div class="btn-area">
	                        <div class="btn-wrapper">
	                            <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
	                        </div>
	                        <div class="btn-wrapper">
	                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
	                        </div>
	                    </div>	
	                </div>
	                <!-- //컨텐츠탭01 -->
	            </div>
	            <!--// 탭 컨텐츠 e-->
	        </div>
	        
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
	        <script src="/publishing/mobile-ko/dist/js/business.js"></script>
	
	    </div>
	</div>


</body>
</html>