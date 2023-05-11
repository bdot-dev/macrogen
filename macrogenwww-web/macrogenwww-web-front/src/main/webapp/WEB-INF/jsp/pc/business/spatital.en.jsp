<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>	
	<div class="wrap">
		<div class="full-bg business_bg bg-spatital">
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
	                    <li class="breadcrumb-item">Spatial Gene Expression analysis</li>
	                </ol>
	            </nav>
	            <div class="hero-title en">Spatial Gene Expression analysis</div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <div class="subject-box type02">
	                <p class="font-h4 title">This is the latest research analysis technique that can simultaneously check tissue spatial information and genomic expression information.</p>
	                <p class="subject info">Spatial gene expression analysis is the latest genetic sequencing technology, which simultaneously assesses the genetic information of cells and the location of the cells. It can directly analyze the gene expression of the tissue itself without separation into single cells or RNA extraction. By doing so, you can understand the tissue heterogeneity at the same time by obtaining the unique location information of cells in the tissue, as well as the gene expression information. In addition, it has the advantage of being able to be applied to both the fresh tissue obtained from surgery and FFPE tissue treated with formalin to store the tissue. By analyzing genetic information and tissue location information at once, you can set a direction for treatment or predict efficacy. For example, by checking the genetic information and location of the cancer patient's immune cells and cancer cells, you can determine how effective treatment is, whether cancer cells have metastasized, and the expected prognosis of the treatment.</p>
	            </div>
	            
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <!-- 1 -->
	                <div class="info-box show">
	                    <div class="img">
	                        <img src="/publishing/pc-ko/dist/img/business/img-ngs-spatial-gene.png" alt="Spatial Gene Expression analysis">
	                    </div>
	                    <p class="desc">As a CSP (Certified Service Provider) for spatial gene expression service, Macrogen is recognized for quick service delivery and a superior level of performance based on its NGS (Next Generation Sequencing) performance, and is ranked first in Korea and fifth in the world. We are also leading the market with diversified spatial sequencing services by rapidly introducing new spatial genome analysis techniques.</p>
	                    <div class="btn-area">
	                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
	                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
	                        <a href="https://dna.macrogen.com/" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
	                    </div>
	                </div>
	                <!-- //1 -->
	            </div>
	            <!-- //탭 컨텐츠 -->
	
	        </div>
	    </div>
	</div>
  
</body>