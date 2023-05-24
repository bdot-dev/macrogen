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
	            <div class="font-h1">Spatial Gene <br>Expression analysis</div>
	        </div>
	    </div>
	    
	    <div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box type02">
	                <p class="title font-h4">This is the latest research analysis technique that can simultaneously check tissue spatial information and genomic expression information.</p>
	                <p class="subject font-body-h img_bottom">
	                    Spatial gene expression analysis is the latest genetic sequencing technology, which simultaneously assesses the genetic information of cells and the location of the cells. It can directly analyze the gene expression of the tissue itself without separation into single cells or RNA extraction. By doing so, you can understand the tissue heterogeneity at the same time by obtaining the unique location information of cells in the tissue, as well as the gene expression information. In addition, it has the advantage of being able to be applied to both the fresh tissue obtained from surgery and FFPE tissue treated with formalin to store the tissue. By analyzing genetic information and tissue location information at once, you can set a direction for treatment or predict efficacy. For example, by checking the genetic information and location of the cancer patient's immune cells and cancer cells, you can determine how effective treatment is, whether cancer cells have metastasized, and the expected prognosis of the treatment.
	                </p>
	                <div class="img">
	                    <img src="/publishing/mobile-en/dist/img/business/img-ngs-spatial-gene.png" alt="Spatial Gene Expression analysis">
	                </div>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--컨텐츠탭01-->
	                <div class="info-box show">
	                    <p class="desc font-body">
	                        As a CSP (Certified Service Provider) for spatial gene expression service, Macrogen is recognized for quick service delivery and a superior level of performance based on its NGS (Next Generation Sequencing) performance, and is ranked first in Korea and fifth in the world. We are also leading the market with diversified spatial sequencing services by rapidly introducing new spatial genome analysis techniques.
	                    </p>
	                    <hr class="divider" />
	                    <p class="font-h4 main-title mb86">PLATFORM</p>
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
	                                <td>5 Weeks after ROI section</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample type</th>
	                                <td>
	                                    FFPE Block (Storage period: 3 years / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy available) <br>
	                                    Fresh Frozen Tissue (Store at -80℃, in cutting, within 6 months/ 35.3mm x 14.1 mm x 4-6 µm )
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    Human Whole Transcriptome Atlas (hWTA)<br>
	                                    Human Cancer Transcriptome Atlas (hCTA)<br>
	                                    Human Protein Assay<br>
	                                    Please contact us for inquiries about other panel assays<br>
	                                    <span class="point">We offer simultaneous whole transcriptome analysis (WTA) for RNA and protein from sectioned tissue.</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <p class="font-h4 main-title">Data of Analysis</p>
	                    <div class="border-gray-box mb0">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_single_cell02.png" alt="">
	                            <span class="btnZoom" data-img="img_single_cell02"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="btn-area">
	                        <div class="btn-wrapper">
	                            <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>Quotation</span></a>
	                        </div>
	                        <div class="btn-wrapper">
	                            <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>Order</span></a>
	                        </div>
	                    </div>
	                </div>
	                <!-- //컨텐츠탭01 -->
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