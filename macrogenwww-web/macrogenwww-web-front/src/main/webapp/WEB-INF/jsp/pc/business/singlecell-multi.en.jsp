<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>
	<div class="wrap">
		<div class="full-bg business_bg bg-singlemulti">
			<!--header 수정시 메인 header 같이 수정해주세요-->
			<header class="header" id="header">
				<c:import url="/inc/header-inner-gnb" />
			</header>
			<div class="frame frameB">
	            <nav aria-label="breadcrumb">
	                <ol class="breadcrumb breadcrumb-white">
	                    <li class="breadcrumb-item">Home</li>
	                    <li class="breadcrumb-item">SERVICE</li>
	                    <li class="breadcrumb-item">Single Cell Expert Services</li>
	                    <li class="breadcrumb-item">Single Cell Multi-omics Analysis</li>
	                </ol>
	            </nav>
	            <div class="hero-title en">Single Cell Multi-omics Analysis</div>
	            <a href="#_tab-box" class="btn btn-round btn-service">
	                <span>SERVICE</span>
	                <i class="icon icon-arrow-bottom-short-white"></i>
	            </a>
	        </div>
		</div>
		
		<div class="container">
        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
        <div class="section_business single_cell_multi">
            <div class="subject-box type02">
                <p class="font-h4 title">Macrogen provides personalized single cell multi-omics analysis services based on extensive experience and innovation.</p>
                <p class="subject info">Single-cell gene sequencing is used to analyze gene expression profile and genetic changes in a single cell, which is a functional and structural unit of an organism. As it becomes possible to determine cellular heterogeneity, rare cell population, cellular differentiation, chromatin heterogeneity, immune profile, and surface protein profile in a single cell unit, this technique is applied to various fields of research including selection of cell treatments, stem cells, and cancer development and progression. Macrogen quickly provides a high level of genetic sequencing data based on its ability to perform NGS (next generation sequencing), which ranks first in Korea and fifth in the world. Furthermore, we are leading the market by diversifying single-cell sequencing services, thanks to industry-leading genome sequencing expertise accumulated over 26 years and investment in big data and unexplored areas.</p>
            </div>

            <!-- 탭 컨텐츠 -->
            <div class="info-box-wrap tab-content">
                <!-- 1 -->
                <div class="info-box show">
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img-ngs-cell.png" alt="Single Cell Multi-omics analysis">
                    </div>
                    <div class="box-gray-6">
                        <div>
                            <p class="title">single cell RNA sequencing</p>
                            <p class="desc">Single cell expression analysis</p>
                        </div>
                        <div>
                            <p class="title">single nucleus RNA sequencing</p>
                            <p class="desc">Analysis of gene expression after isolation of nucleus from samples that are difficult to progress to cells</p>
                        </div>
                        <div>
                            <p class="title">single cell immune profiling</p>
                            <p class="desc">Single cell TCR and BCR gene expression analysis</p>
                        </div>
                        <div>
                            <p class="title">single cell surface protein profiling</p>
                            <p class="desc">Analysis of proteins located on the surface of single cells</p>
                        </div>
                        <div>
                            <p class="title">single cell ATAC sequencing</p>
                            <p class="desc">Analysis of single-nucleus DNA's accessibility</p>
                        </div>
                        <div>
                            <p class="title">single cell Multiome sequencing</p>
                            <p class="desc">Simultaneous analysis of single-nucleus DNA's accessibility and gene expression </p>
                        </div>
                    </div>
                    
                    <hr class="divider" />
	                <p class="font-h4 main-title mb120">Service Process</p>
	                <div class="service-box">
	                	<div class="box">
	                		<div class="img_txt">
	                			<img src="/publishing/pc-ko/dist/img/business/img-single-cell-process01.png" alt=""/>
	                			<p>We offer a full range of services, including tissue dissociation, sample quality checks, library construction, sequencing, and data analysis.</p>
	                		</div>
	                		<ul class="service_list">
	                			<li class="list">
	                				<div class="img"><img src="/publishing/pc-ko/dist/img/business/img-single-cell-process02.png" alt=""/></div>
	                				<p>Service<br>Consultation</p>
	                			</li>
	                			<li class="list">
	                				<div class="img"><img src="/publishing/pc-ko/dist/img/business/img-single-cell-process04.png" alt=""/></div>
	                				<p>Library<br>Construction</p>
	                			</li>
	                			<li class="list">
	                				<div class="img"><img src="/publishing/pc-ko/dist/img/business/img-single-cell-process03.png" alt=""/></div>
	                				<p>Sample<br>Quality Check</p>
	                			</li>
	                			<li class="list">
	                				<div class="img"><img src="/publishing/pc-ko/dist/img/business/img-single-cell-process05.png" alt=""/></div>
	                				<p>Sequencing</p>
	                			</li>
	                			<li class="list">
	                				<div class="img"><img src="/publishing/pc-ko/dist/img/business/img-single-cell-process06.png" alt=""/></div>
	                				<p>Data<br>Analysis</p>
	                			</li>
	                		</ul>
	                	</div>
	                </div>
                    
                    <hr class="divider" />
	                <p class="font-h4 main-title mb120">Sample Preparation</p>
	                <p class="font-h5 sub-title">Single Cell sample</p>
	                <p class="font-sub desc">In Single Cell multi-omics analysis, data quality is determined by the condition of the sample. At Macrogen, we provide high-precision quality check results based on quality improvement steps and extensive analysis experience to enhance the quality of the sample.</p>
                    <table class="table table-row">
	                    <colgroup>
	                        <col width="33.333%">
	                    	<col width="33.333%">
	                    	<col width="33.333%">
                        </colgroup>
	                    <tbody>
	                    	<tr>
	                    		<th scope="col">Sample type</th>
	                    		<th scope="col">Cell, Nucleus</th>
	                    		<th scope="col">Tissue</th>
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
	                	</tbody>
	                </table>
                    
                    <p class="desc">With the advent of the single-cell sequencing technique, it became possible to analyze trace amounts of cellular genes and those expressed in small amounts, which cannot be examined through conventional gene analysis. As a result, we are able to gain insights into individuals' environment, genetics, and biological characteristics in detail, allowing us to get one step closer to realizing ultra-precision medicine that can predict, prevent, and diagnose diseases. Macrogen has carried out the most single cell sequencing projects in Korea, and is the only CSP (Certified Service Provider) in the country for single cell gene expression and spatial gene expression services. In addition, we are leading the market by diversifying single-cell sequencing services by introducing innovative single-cell sequencing techniques.</p>
                    <div class="btn-area">
                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                </div>
                <!-- //1 -->
            </div>
            <!-- //탭 컨텐츠 -->

        </div>
    </div>
	</div>	

</body>