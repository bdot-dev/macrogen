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
	                    <li class="breadcrumb-item">싱글셀분석서비스</li>
	                    <li class="breadcrumb-item">Spatial Gene Expression analysis</li>
	                </ol>
	            </nav>
	            <div class="hero-title en">Spatial Gene Expression analysis</div>
	            <a href="#_tab-box" class="btn btn-round btn-service">
	                <span>SERVICE</span>
	                <i class="icon icon-arrow-bottom-short-white"></i>
	            </a>
	        </div>
		</div>
	 
		<div class="container">
			<link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <div class="subject-box type02">
	                <p class="font-h4 title">조직의 공간 정보와 유전체 발현 정보를 <br>동시에 확인 할 수 있는 최신 연구 분석 방법입니다</p>
	                <p class="subject info">위치 기반 전사체 분석은 가장 최신의 유전자 분석 기술로, 세포들의 유전자 정보와 세포들이 어느 위치에 존재하는지를 동시에 분석하는 기술입니다. 단일 세포로의 분리나 RNA 추출 없이 조직 자체의 유전자 발현을 바로 분석할 수 있는 기술이며, 이를 통해 유전자 발현 정보뿐만 아니라 조직이 가지고 있는 세포의 고유한 위치 정보까지 같이 얻을 수 있어 조직이질성(tissue heterogeneity)을 동시에 이해 할 수 있습니다. 또한 수술로 얻은 fresh 조직과 조직을 보관하기 위해 포르말린으로 고정시켜 저장해놓은 FFPE 조직 모두에 해당 분석 방법을 적용할 수 있다는 장점이 있습니다. 유전자 정보와 조직 위치 정보를 한번에 분석함으로써 질병의 치료 방향을 설정하거나 약효 예측 등에 활용 할 수 있습니다. 예를 들어 암 환자의 면역세포와 암세포의 유전자 정보와 위치를 확인함으로써 어떤 방법으로 치료를 해야 효과적일지, 암 세포의 전이가 진행되지는 않았는지, 약물 치료 후의 예후는 어떻게 예상되는지 등에 활용될 수 있습니다.</p>
	            </div>
	            
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <!-- 1 -->
	                <div class="info-box show">
	                    <div class="img">
	                        <img src="/publishing/pc-ko/dist/img/business/img-ngs-spatial-gene.png" alt="Spatial Gene Expression analysis">
	                    </div>
	                    <p class="desc">마크로젠은 공간 전사체 분석(spatial gene expression) 서비스의 CSP(Certified service provider) 인증을 받았으며, 국내 1위이자 세계 5위 수준의 차세대염기서열분석(Next generation sequencing,NGS) 수행능력을 기반으로 높은 수준의 유전자 분석 데이터를 빠른 시간 내에 제공한다는 장점이 있습니다. 또한 새로 등장하는 공간 유전체 분석의 신기술을 빠르게 도입함으로써 공간 유전체 분석 서비스를 다양화하며 시장을 선도하고 있습니다.
	                    </p>
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