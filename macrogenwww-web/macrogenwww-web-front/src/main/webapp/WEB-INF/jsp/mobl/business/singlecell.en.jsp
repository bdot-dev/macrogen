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
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">Drawing on years of experience with single-cell multiomics, Macrogen offers single-cell sequencing and spatial transcriptomics optimized for your research needs.</p>
	                <p class="subject font-body-h img_bottom">By providing in situ analysis as well as services in spatial transcriptomics in a wide range of areas including cancer research, immunology and neuroscience, Macrogen serves as a reliable partner contributing to research on health, as well as on the diagnosis, monitoring and treatment of diseases.</p>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">PLATFORM</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">CosMx SMI</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active"><a href="#">CosMx SMI</a></li>
	                        <li class="option-value"><a href="#">Xenium</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--CosMx SMI-->
	                <div class="info-box show">
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
	                                <td>5 Weeks after ROI section</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample type</th>
	                                <td>
	                                    FFPE Block (Storage period: 3 years / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy available)<br>
	                                    Fresh Frozen Tissue (Store at -80℃, in cutting, within 6 months / 35.3mm x 14.1 mm x 4-6 µm )<br>
	                                    tissue microarray, organoid sample
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    CosMx™ Human Universal Cell Characterization Panel (RNA, 1000 Plex)<br>
	                                    CosMx™ Human Immuno-oncology Panel (RNA, 100 Plex)<br>
	                                    CosMx™ Human Immuno-oncology Panel (Protein, 64 Plex)<br>
	                                    Please contact us for inquiries about other panel assays<br>
	                                    <span class="point">We offer simultaneous analysis for RNA and protein from sectioned tissue.</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <p class="font-h4 main-title">Data of Analysis</p>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_single_cell04.png" alt="">
	                            <span class="btnZoom" data-img="img_single_cell04"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="btn-area pt82">
	                        <div class="btn_wrapper flex">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>Quotation</span></a>
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
	                                <td>6 Weeks</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample type</th>
	                                <td>FFPE, Fresh Frozen Tissue</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    Human Breast Gene Expression Panel (280 genes + Customize up to 100 genes)<br>
	                                    Extensive panel roadmap (Human Brain, Lung, Skin, Kidney, Pancreas)<br>
	                                    <span class="point">Various RNA targets analysis can be provided upon request</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <p class="font-h4 main-title">Data of Analysis</p>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_single_cell06.png" alt="">
	                            <span class="btnZoom" data-img="img_single_cell06"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="btn-area pt82">
	                        <div class="btn_wrapper flex">
	                            <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>Quotation</span></a>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
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
	        
	    </div>
	</div>

</body>
</html>