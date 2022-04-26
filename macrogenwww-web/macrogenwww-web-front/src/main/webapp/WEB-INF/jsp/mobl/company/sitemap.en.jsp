<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="non-bg">
        <header class="header">
    		<div class="inner">
       		<h1 class="logo"><a href="/">마크로젠 로고</a></h1>
        	<a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
  			</div>
		</header>
    </div>

    <div class="container pt-0">
        <div class="macrogen macrogen-sitemap">
	        <div class="inner">
             	<p class="main-title font-h1">Sitemap</p>
				<div class="section">
		        	<div class="font-h6">MACROGEN</div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/company/overview">Company</a></div>
			            <ul>
			                <li><a href="/${rc.locale.language }/company/overview">About MACROGEN</a></li>
			                <li><a href="/${rc.locale.language }/company/bod">Executive Leadership</a></li>
			                <li><a href="/${rc.locale.language }/company/history">History</a></li>
			                <li><a href="/${rc.locale.language }/company/vision">Vision</a></li>
			                <li><a href="/${rc.locale.language }/company/certification">Certification &<br> Accreditation</a></li>
			                <!-- <li><a href="/${rc.locale.language }/company/contact-us">Contact us</a></li> -->
			            </ul>
			        </div>
			        <div class="item">
						<div class="title"><a href="/${rc.locale.language }/company/global-network">Global Network</a></div>
				    </div>
		        </div>
	  			<div class="section biz">
		        	<div class="font-h6">BUSINESS</div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/business/research/ngs">Research</a></div>
			            <ul>
			                <li><a href="/${rc.locale.language }/business/research/ngs">NGS</a></li>
			                <li><a href="/${rc.locale.language }/business/research/ces">CES</a></li>
			                <li><a href="/${rc.locale.language }/business/research/gene-sythesis">Gene Sythesis</a></li>
			                <li><a href="/${rc.locale.language }/business/research/oligo">Oligo</a></li>
			                <li><a href="/${rc.locale.language }/business/research/microarray">Microarray</a></li>
			                <li><a href="/${rc.locale.language }/business/research/model">GEM</a></li>
			            </ul>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/business/diagnosis/cancer">Clinical<br> Diagnostics</a></div>
			            <ul>
			                <li><a href="/${rc.locale.language }/business/diagnosis/cancer">Cancer Genome Testing</a></li>
			                <li><a href="/${rc.locale.language }/business/diagnosis/newborn">Genetic Disorder</a></li>
			                <li><a href="/${rc.locale.language }/business/diagnosis/covid">COVID&#45;19</a></li>
			            </ul>
		        	</div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/business/healthcare/personal-genetic">Healthcare</a></div>
			            <ul>
			                <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">Personal Genome Analysis</a></li>
			                <li><a href="/${rc.locale.language }/business/healthcare/intestinal-microbiome">Microbiome Analysis</a></li>
			                <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">Pet DNA Test</a></li>
			            </ul>
			        </div>
		        </div>  
		        <div class="section rd">
		        	<div class="font-h6">R&D</div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/rnd/institute/precision-medicine">Precision<br/> Medicine Institute</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/rnd/institute/bioinformatics">Bioinformatics<br/>Institute</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/rnd/institute/biome">The Biome<br/>Institute</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/rnd/institute/sync-genes">Sync Genes<br/>Institute</a></div>
			        </div>
			        <div class="font-h6"></div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/rnd/institute/bigdata">Big Data Institute<br/> for Health</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/rnd/patent">Patents&#47;Papers</a></div>
			            <ul>
			                <li><a href="/${rc.locale.language }/rnd/patent">Patents</a></li>
			                <li><a href="/${rc.locale.language }/rnd/thesis">Papers</a></li>
			            </ul>
			        </div>
		        </div>  
		        <div class="section">
		        	<div class="font-h6">NEWSROOM</div>
		        	<div class="item">
			            <div class="title"><a href="/${rc.locale.language }/newsroom/news">News</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/newsroom/media-library">Media library</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/newsroom/notice">Notice</a></div>
			        </div>
		        </div>
		        <div class="section ir">
		        	<div class="font-h6">IR</div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/ir/financial">Financial Information</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/ir/investor-inquiries">Investment Inquiries</a></div>
			        </div>
		        </div>
		        <div class="section esg">
		        	<div class="font-h6">ESG</div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/company/esg-management">ESG Management</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/company/ethical-management">Ethical Management</a></div>
			        </div>
			        <div class="item">
			            <div class="title"><a href="/${rc.locale.language }/company/social-contribution">Social Responsibility</a></div>
			        </div>
				</div>
             </div>
        </div>
    </div>
</body>
