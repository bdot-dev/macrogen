<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/singlecell_img_mo.png);">
			<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			
			<div class="frame">
	            <div class="font-h1 mr-10">Single Cell <br>(In Situ / Spatial)</div>
	            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
	        </div>      
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">Single cell multiomics에 대한 다양한 경험을 바탕으로 연구자에게 최적화된 단일세포 공간 전사체 분석 데이터를 제공하겠습니다.</p>
	                <p class="subject font-body-h img_bottom">Cancer Research, Immunology, Neuroscience 등 다양한 분야에서 Spatial Transcriptomics 및 In Situ 분석을 통해 건강, 질병의 진단, 모니터링, 치료 등의 연구에 기여합니다.</p>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">PLATFORM</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">GeoMx DSP</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active"><a href="#">GeoMx DSP</a></li>
	                        <li class="option-value"><a href="#">CosMx SMI</a></li>
	                        <li class="option-value"><a href="#">Xenium</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--GeoMx DSP-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Nanostring GeoMx® DSP</p>
	                    <p class="desc font-body img_bottom">Discover Where Biology Happens</p>
	                    <div class="img mb64"><img src="/publishing/mobile-ko/dist/img/business/img_single_cell01.png" alt=""/></div>
	                    <div class="table-scroll">
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
	                                <th scope="row">TAT</th>
	                                <td>ROI selection 후 5주</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">검체 타입</th>
	                                <td>
	                                    FFPE Block (보관 기한: 3년 / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy 가능)<br>
	                                    Fresh Frozen Tissue (6개월 이내 Cutting, -80°C 보관 / 35.3mm x 14.1 mm x 4-6 µm )
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    Human Whole Transcriptome Atlas (hWTA)<br>
	                                    Human Cancer Transcriptome Atlas (hCTA)<br>
	                                    Human Protein Assay<br>
	                                    그 외 Panel Assay에 대해 별도 문의 바랍니다.<br>
	                                    <span class="point">한번에 Section된 조직으로 RNA와 Protein 동시 WTA 분석이 가능합니다.</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <p class="font-h4 main-title">분석 데이터</p>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_single_cell02.png" alt="">
	                            <span class="btnZoom" data-img="img_single_cell02"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="btn-area pt82">
	                        <div class="btn_wrapper flex">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
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
	                <!-- //GeoMx DSP -->
	                <!--CosMx SMI-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Nanostring CosMx™ SMI</p>
	                    <p class="desc font-body img_bottom">The First Fully-Integrated Single-Cell Spatial Biology Solution with the highest plex, multiomic capability and high resolution</p>
	                    <div class="img mb64"><img src="/publishing/mobile-ko/dist/img/business/img_single_cell03.png" alt=""/></div>
	                    <div class="table-scroll">
	                        <table class="table table-row tline">
	                            <colgroup>
	                                <col width="35%">
	                                <col width="65%">
	                            </colgroup>
	                            <tr>
	                                <th scope="row">Platform</th>
	                                <td>CosMx™ Spatial Molecular Imager</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">TAT</th>
	                                <td>고객과 실험 디자인 협의 완료 후 5주 (협의 조절 가능)</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">검체 타입</th>
	                                <td>
	                                    FFPE Block (보관 기한: 3년 / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy 가능)<br>
	                                    Fresh Frozen Tissue (6개월 이내 Cutting, -80°C 보관 / 35.3mm x 14.1 mm x 4-6 µm )<br>
	                                    TMA(Tissue MicroArray) Organoid Spheroids
	                                    <p>※ 주문 시 상담 확인</p>
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    CosMx™ Human Universal Cell Characterization Panel (RNA, 1000 Plex)<br>
	                                    CosMx™ Human Immuno-oncology Panel (RNA, 100 Plex)<br>
	                                    CosMx™ Human Immuno-oncology Panel (Protein, 64 Plex)<br>
	                                    그 외 Panel Assay에 대해 별도 문의 바랍니다. (Panel 종류는 지속적으로 Update됩니다. 주문 시 상담 바랍니다.)<br>
	                                    <span class="point">한번에 Section된 조직으로 RNA와 Protein 동시 분석이 가능합니다. (2023년 하반기 업데이트 예정)</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <p class="font-h4 main-title">분석 데이터</p>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_single_cell04.png" alt="">
	                            <span class="btnZoom" data-img="img_single_cell04"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="btn-area pt82">
	                        <div class="btn_wrapper flex">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
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
	                <!-- CosMx SMI -->
	                <!-- Xenium -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">10x Genomics Xenium <br>In Situ</p>
	                    <p class="desc font-body img_bottom">High-plex in situ from the single cell leader</p>
	                    <div class="img mb64"><img src="/publishing/mobile-ko/dist/img/business/img_single_cell05.png" alt=""/></div>
	                    <div class="table-scroll">
	                        <table class="table table-row tline">
	                            <colgroup>
	                                <col width="35%">
	                                <col width="65%">
	                            </colgroup>
	                            <tr>
	                                <th scope="row">Platform</th>
	                                <td>Xenium In Situ Analyzer</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">TAT</th>
	                                <td>6주</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">검체 타입</th>
	                                <td>FFPE, Fresh Frozen Tissue</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    Human Breast Gene Expression Panel (280 genes + Customize up to 100 genens)<br>
	                                    Extensive panel roadmap (Human Brain, Lung, Skin, Kidney, Pancreas 등)<br>
	                                    <span class="point">다양한 RNA Target별 분석 가능</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <p class="font-h4 main-title">분석 데이터</p>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_single_cell06.png" alt="">
	                            <span class="btnZoom" data-img="img_single_cell06"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="btn-area pt82">
	                        <div class="btn_wrapper flex">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
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
	                <!-- //Xenium -->
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