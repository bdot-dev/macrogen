<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg single_multi">
			<header class="header">
			    <div class="inner">
			        <h1 class="logo"><a href="/en">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <div class="font-h4">Single Cell <br>Multi-omics Analysis</div>
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
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
	        <div class="section_business single_cell_multi">
	            <!--상단 공통 s -->
	            <div class="subject-box type02">
	                <p class="title font-h4">Macrogen provides personalized single cell multi-omics analysis services based on extensive experience and innovation.</p>
	                <p class="subject font-body-h img_bottom">
	                    Single-cell gene sequencing is used to analyze gene expression profile and genetic changes in a single cell, which is a functional and structural unit of an organism. As it becomes possible to determine cellular heterogeneity, rare cell population, cellular differentiation, chromatin heterogeneity, immune profile, and surface protein profile in a single cell unit, this technique is applied to various fields of research including selection of cell treatments, stem cells, and cancer development and progression. Macrogen quickly provides a high level of genetic sequencing data based on its ability to perform NGS (next generation sequencing), which ranks first in Korea and fifth in the world. Furthermore, we are leading the market by diversifying single-cell sequencing services, thanks to industry-leading genome sequencing expertise accumulated over 26 years and investment in big data and unexplored areas.
	                </p>
	                <div class="img">
	                    <img src="/publishing/mobile-ko/dist/img/business/img-ngs-cell.png" alt="Single Cell Multi-omics analysis">
	                </div>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	            	<div class="info-box show">
		            	<!--컨텐츠탭01-->
		                <div class="box-gray-6">
		                    <div>
		                        <p class="title font-body-h-b">Single cell RNA sequencing</p>
		                        <p class="desc font-body">Single cell expression analysis</p>
		                    </div>
		                    <div>
		                        <p class="title font-body-h-b">Single nucleus RNA sequencing</p>
		                        <p class="desc font-body">Analysis of gene expression after isolation of nucleus from samples that are difficult to progress to cells</p>
		                    </div>
		                    <div>
		                        <p class="title font-body-h-b">Single cell immune profiling</p>
		                        <p class="desc font-body">Single cell TCR and BCR gene expression analysis</p>
		                    </div>
		                    <div>
		                        <p class="title font-body-h-b">Single cell surface protein profiling</p>
		                        <p class="desc font-body">Analysis of proteins located on the surface of single cells</p>
		                    </div>
		                    <div>
		                        <p class="title font-body-h-b">Single cell ATAC sequencing</p>
		                        <p class="desc font-body">Analysis of single-nucleus DNA's accessibility</p>
		                    </div>
		                    <div>
		                        <p class="title font-body-h-b">Single cell Multiome sequencing</p>
		                        <p class="desc font-body">Simultaneous analysis of single-nucleus DNA's accessibility and gene expression</p>
		                    </div>
		                </div>
		                
		                <p class="font-h4 main-title">Service Process</p>
						<div class="border-gray-box"> 
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img-single-cell-process.png" alt="">
	                            <span class="btnZoom" data-img="img-single-cell-process"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    
						<p class="font-h4 main-title">Sample Preparation</p>
						<p class="font-body-h sub-title">Single Cell sample</p>
						<p class="font-body desc">In Single Cell multi-omics analysis, data quality is determined by the condition of the sample. At Macrogen, we provide high-precision quality check results based on quality improvement steps and extensive analysis experience to enhance the quality of the sample.</p>
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
		                
		                
		                <p class="font-body desc">
		                    With the advent of the single-cell sequencing technique, it became possible to analyze trace amounts of cellular genes and those expressed in small amounts, which cannot be examined through conventional gene analysis. As a result, we are able to gain insights into individuals' environment, genetics, and biological characteristics in detail, allowing us to get one step closer to realizing ultra-precision medicine that can predict, prevent, and diagnose diseases. Macrogen has carried out the most single cell sequencing projects in Korea, and is the only CSP (Certified Service Provider) in the country for single cell gene expression and spatial gene expression services. In addition, we are leading the market by diversifying single-cell sequencing services by introducing innovative single-cell sequencing techniques.
		                </p>
		                <div class="btn-area">
		                    <div class="btn-wrapper">
		                        <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
		                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>Quotation</span></a>
		                    </div>
		                    <div class="btn-wrapper">
		                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>Order</span></a>
		                    </div>
		                </div>
		                <!-- //컨텐츠탭01 -->
	            	</div>
	            </div>
	            <!--// 탭 컨텐츠 e-->
	        </div>
	        
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
	        <script src="/publishing/mobile-en/dist/js/business.js"></script>
	
	    </div>
	</div>


</body>
</html>