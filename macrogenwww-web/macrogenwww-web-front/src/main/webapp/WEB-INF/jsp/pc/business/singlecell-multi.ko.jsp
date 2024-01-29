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
	                    <li class="breadcrumb-item">싱글셀분석서비스</li>
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
                <p class="font-h4 title">국내 최초, 최다 경험을 바탕으로 <br>고객 맞춤형 Single cell Multi-omics analysis 서비스를 제공합니다.</p>
                <p class="subject info">단일세포 유전자 분석은 생물의 기능적, 구조적 단위인 하나의 세포에서 유전자 발현량 및 유전자 변화를 분석하는 것 입니다. 세포 단위에서 cellular heterogeneity, rare cell population, cellular differentiation, chromatin heterogeneity, immune profile, surface protein profile 등의 확인이 가능해짐에 따라 세포 치료제 선별, 줄기세포, 암 발달 및 진행 과정 등 다양한 연구 분야에 응용됩니다. 마크로젠은 국내 1위 세계 5위의 차세대염기서열분석(Next generation sequencing, NGS) 수행능력을 기반으로 높은 수준의 유전자 분석 데이터를 빠르게 제공합니다. 또한 26년간 축적한 업계 1위의 유전체 분석 기술력과 빅데이터 및 미개척 분야 연구 투자를 기반으로 싱글셀 분석 서비스를 다양화하며 시장을 선도하고 있습니다.</p>
            </div>

            <!-- 탭 컨텐츠 -->
            <div class="info-box-wrap tab-content">
                <!-- 1 -->
                <div class="info-box show">
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img-ngs-cell.png" alt="Single Cell Multi-omics analysis소개이미지">
                    </div>
                    <div class="box-gray-6">
                        <div>
                            <p class="title">single cell RNA sequencing</p>
                            <p class="desc">단일세포 유전자 발현 분석</p>
                        </div>
                        <div>
                            <p class="title">single nucleus RNA sequencing</p>
                            <p class="desc">세포로 진행하기 어려운 샘플에서<br>핵을 분리한 후 유전자 발현 분석</p>
                        </div>
                        <div>
                            <p class="title">single cell immune profiling</p>
                            <p class="desc">단일세포 TCR, BCR 발현 분석</p>
                        </div>
                        <div>
                            <p class="title">single cell surface protein profiling</p>
                            <p class="desc">단일세포 표면에 위치하는 단백질 분석
                            </p>
                        </div>
                        <div>
                            <p class="title">single cell ATAC sequencing</p>
                            <p class="desc">단일 핵의 DNA 풀림 정보 분석</p>
                        </div>
                        <div>
                            <p class="title">single cell Multiome sequencing</p>
                            <p class="desc">단일 핵의 DNA 의 풀림 정보와 유전자 발현을 동시에 분석</p>
                        </div>
                    </div>
                    
                    <hr class="divider" />
	                <p class="font-h4 main-title mb120">Service Process</p>
	                <div class="service-box">
	                	<div class="box">
	                		<div class="img_txt">
	                			<img src="/publishing/pc-ko/dist/img/business/img-single-cell-process01.png" alt=""/>
	                			<p>Tissue dissociation부터 샘플 QC, Library 제작, Sequencing, Data analysis까지 제공하는 Full service</p>
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
	                <p class="font-sub desc">Single cell multi-omics Analysis에서 data quality는 sample condition에 의해 결정됩니다. 마크로젠에서는 sample quality를 향상시키기 위한 quality improvement step과 다수의 분석 경험을 바탕으로 높은 정확도의 QC 결과를 제공합니다.</p>
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
	                
                    <p class="desc">단일세포 유전자 분석 기술의 등장으로 기존 유전자 분석에서는 알 수 없던 극미량의 세포 유전자 분석과 소량으로 발현되는 유전자 분석이 가능합니다. 이를 통해 개인의 환경, 유전, 생물학적 특성을 세밀히 이해할 수 있으며 질병 예측과 예방, 맞춤 진단이 가능한 초정밀의학 실현에 한 단계 다가가게 되었습니다. 마크로젠은 국내 싱글셀 유전자 분석 프로젝트를 가장 많이 진행했으며, 단일세포 전사체 분석(single Cell Gene Expression)과 공간 전사체 분석(Spatial Gene Expression) 서비스의 CSP(Certified Service Provider) 동시 인증을 가진 국내 유일의 업체입니다. 또한 새로 등장하는 단일세포 유전체 분석 신기술을 빠르게 도입함으로써 단일세포 분석 서비스를 다양화에 앞장서며 시장을 선도하고 있습니다.</p>
                    <div class="btn-area">
                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
                        <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
                    </div>
                </div>
                <!-- //1 -->
            </div>
            <!-- //탭 컨텐츠 -->

        </div>
    </div>
 		
	
	</div>
</body>