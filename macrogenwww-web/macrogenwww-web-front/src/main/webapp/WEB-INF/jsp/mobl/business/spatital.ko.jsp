<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg spatital">
	        <header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>		
			<div class="frame">
	            <div class="font-h1">Spatial Gene <br>Expression analysis</div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
	        <div class="section_business spatital">
	            <!--상단 공통 s -->
	            <div class="subject-box type02">
	                <p class="title font-h4">조직의 위치 정보와 전사체 발현 정보를 동시에 확인 할 수 있는 분석 방법입니다.</p>
	                <p class="subject font-body-h img_bottom">
						위치 기반 전사체 분석은 가장 최신의 유전자 분석 기술로, 세포들의 유전자 발현 정보와 세포들이 어느 위치에 존재하는지를 동시에 분석하는 기술입니다. 단일 세포로의 분리나 RNA 추출 없이 조직절편 자체의 유전자 발현을 바로 분석할 수 있는 기술이며, 이를 통해 유전자 발현 정보뿐만 아니라 조직이 가지고 있는 세포의 고유한 위치 정보까지 같이 얻을 수 있어 조직이질성 (tissue heterogeneity)을 동시에 이해 할 수 있습니다. 수술로 얻은 fresh 조직과 조직을 보관하기 위해 포르말린으로 고정시켜 저장해놓은 FFPE 조직 모두에 해당 분석 방법을 적용할 수 있다는 장점이 있으며, 이미 절편화된 조직에서도 실험이 가능합니다.
	                </p>
	                <div class="img">
	                    <img src="/publishing/mobile-ko/dist/img/business/img-ngs-spatial-gene.png" alt="Spatial Gene Expression analysis">
	                </div>
	                <p class="desc font-body">마크로젠은 10x Genomics 사의 위치 기반 전사체 분석(spatial gene expression) 서비스의 CSP(Certified service provider) 인증을 받았으며, 국내 1위이자 세계 5위 수준의 차세대염기서열분석(Next generation sequencing,NGS) 수행능력을 기반으로 높은 수준의 유전자 분석 데이터를 빠른 시간 내에 제공해 드리고 있습니다. 또한 신기술을 빠르게 도입함으로써 위치 기반 전사체 분석 서비스를 다양화하며 시장을 선도하고 있습니다.</p>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">PLATFORM</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">Visium CytAssist</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active"><a href="#">Visium CytAssist</a></li>
	                        <li class="option-value"><a href="#">Nanostring GeoMx® DSP</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--컨텐츠탭01-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Visium CytAssist</p>
	                    <p class="desc font-body img_bottom">Explore and Discover spatial organization of gene expression</p>
	                    <div class="img mb64"><img src="/publishing/mobile-ko/dist/img/business/img_single_cell07.png" alt=""/></div>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_single_cell08.png" alt="">
	                            <span class="btnZoom" data-img="img_single_cell08"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <p class="font-h4 main-title">Visium : Sample Preparation</p>
	                    <div class="table-scroll">
	                        <table class="table table-row tline">
	                            <colgroup>
	                                <col width="">
	                                <col width="">
	                            </colgroup>
	                            <tr>
	                            	<th rowspan="2">sample type</th>
	                            	<th>
	                            		FF<br>
	                            		(Fresh Frozen)
	                            	</th>
	                            	<th>
	                            		FFPE<br>
	                            		(Formalin Fixed Paraffin Embedded)
	                            	</th>
	                            	<th>Sectioned slide</th>
	                            </tr>
	                            <tr>
	                            	<td>OCT (compound) block</td>
	                            	<td>Paraffin block</td>
	                            	<td>FF / FFPE</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Section Thickness</th>
	                                <td>10 μm</td>
	                                <td>5 μm</td>
	                                <td>FF 10µm / FFPE 5µm</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA Quality</th>
	                                <td>RIN ≥ 7</td>
	                                <td>DV200 ≥ 50%</td>
	                                <td>FF RIN ≥ 4 / FFPE DV200 ≥ 30%</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Species</th>
	                                <td>Any organism (poly A tail)</td>
	                                <td>Only Human, Mouse</td>
	                                <td>Only Human, Mouse</td>
	                            </tr>
	                        </table>
	                    </div>
	                    <p class="font-h4 quality-title">Quality Check Process</p>
	                    <ul class="quality-sub">
	                    	<li>Visium-FF : Section (Cryotome) - RNA QC & ROI* check - Tissue optimization test</li>
	                    	<li>Visium-FFPE : Section (Microtome) - RNA QC & ROI check - Tissue adhesion test</li>
	                    	<li>Visium CytAssist : RNA QC & ROI check - no tissue optimization, tissue adhesion test</li>
	                    </ul>
	                    <p class="quality-desc">*ROI : Region of interest</p>
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
	                <!--컨텐츠탭02-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Nanostring GeoMx® DSP</p>
	                    <p class="desc font-body img_bottom">Discover Where Biology Happens</p>
	                    <div class="img mb64"><img src="/publishing/mobile-ko/dist/img/business/img_single_cell01.png" alt=""/></div>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_single_cell09.png" alt="">
	                            <span class="btnZoom" data-img="img_single_cell09"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="table-scroll mb0">
	                        <table class="table table-row tline">
	                            <colgroup>
	                                <col width="35%">
	                                <col width="65%">
	                            </colgroup>
	                            <tr>
	                                <th scope="row">Platform</th>
	                                <td>GeoMx® Digital Spatial Profiler</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample</th>
	                                <td>
	                                    FFPE Block (보관 기한: 3년 / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy 가능)<br>
	                                    Fresh Frozen Tissue (6개월 이내 Cutting, -80°C 보관 / 35.3mm x 14.1 mm x 4-6 µm )
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Panel</th>
	                                <td>Human Whole Transcriptome Atlas (hWTA)</td>
	                            </tr>
	                        </table>
	                    </div>
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
	                <!-- //컨텐츠탭02 -->
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
	        
	    </div>
	</div>


</body>
</html>