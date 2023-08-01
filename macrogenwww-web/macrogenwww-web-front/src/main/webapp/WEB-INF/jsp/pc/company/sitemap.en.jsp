<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<div class="full-bg macrogen no-bg">
		<header class="header header-bg-white" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>
		<div class="frame frameC">
			<div class="hero-title en">Sitemap</div>
		</div>
	</div>
	
	<div class="en container container-fluid">
		<div class="macrogen macrogen-sitemap">
			<div class="section">
				<div class="font-h6">MACROGEN</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/company/overview">Company</a></div>
					<ul>
						<li><a href="/${rc.locale.language }/company/overview">About MACROGEN</a></li>
						<li><a href="/${rc.locale.language }/company/bod">Executive Leadership</a></li>
						<li><a href="/${rc.locale.language }/company/history">History</a></li>
						<li><a href="/${rc.locale.language }/company/vision">Vision</a></li>
						<li><a href="/${rc.locale.language }/company/certification">Certification<br> & Accreditation</a></li>
					</ul>
				</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/company/global-network">Global Network</a></div>
				</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/rnd/patent">Resource</a></div>
					<ul>
						<li><a href="/${rc.locale.language }/rnd/patent">Patents</a></li>
						<li><a href="/${rc.locale.language }/rnd/thesis">Papers</a></li>
					</ul>
				</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/rnd/institute/precision-medicine">R&#47;D</a></div>
					<ul>
						<li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">Precision Medicine <br>Institute</a></li>
						<li><a href="/${rc.locale.language }/rnd/institute/bioinformatics">Bioibformatics <br>Institute</a></li>
						<li><a href="/${rc.locale.language }/rnd/institute/biome">The Biome <br>Institute</a></li>
						<li><a href="/${rc.locale.language }/rnd/institute/sync-genes">Sync Genes <br>Institute</a></li>
						<li><a href="/${rc.locale.language }/rnd/institute/bigdata">Big Data Institute <br>for Health</a></li>
					</ul>
				</div>
			</div>
			<div class="section biz">
				<div class="font-h6">SERVICE</div>
				<!-- 추후 론칭(오픈 시 숨김) -->
				<!-- <div class="item">
					<div class="title"><a href="#">헬스케어 플랫폼</a></div>
					<ul>
						<li><a href="#">CanBe</a></li>
					</ul>
				</div> -->
				<!-- //추후 론칭(오픈 시 숨김) -->
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/business/healthcare/personal-genetic">Personal Healthcare</a></div>
					<ul>
						<li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">Disease Prediction <br>&#47; Wellness Genetic Test</a></li>
						<li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">DTC Genetic Testing</a></li>
						<!-- 추후 론칭(오픈 시 숨김)<li><a href="/${rc.locale.language }/business">마이크로바이옴 검사솔루션</a></li> -->
					</ul>
				</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/business/healthcare/pet-genetic">Pet Healthcare</a></div>
					<ul>
						<li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">Pet DNA Test</a></li>
					</ul>
				</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/business/research/ngs">Research Services</a></div>
					<ul>
						<li><a href="/${rc.locale.language }/business/research/ngs">NGS</a></li>
						<li><a href="/${rc.locale.language }/business/research/ces">CES</a></li>
						<li><a href="/${rc.locale.language }/business/research/microarray">Microarray</a></li>
						<li><a href="/${rc.locale.language }/business/research/proteomics">Proteomics</a></li>
						<li><a href="/${rc.locale.language }/business/research/gene-synthesis">Gene Synthesis</a></li>
						<li><a href="/${rc.locale.language }/business/research/oligo">Oligo</a></li>
						<li><a href="/${rc.locale.language }/business/research/model">GEM/CRISPR</a></li>
					</ul>
				</div>
				<div class="item"></div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/business/diagnosis/cancer">Clinical Services</a></div>
					<ul>
						<li><a href="/${rc.locale.language }/business/diagnosis/cancer">Precision Medicine</a></li>
						<li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome">Genetic testing <br>for cancer risk</a></li>
						<li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel">NGS-based Genetic <br>Panel Lab</a></li>
						<li><a href="/${rc.locale.language }/business/diagnosis/gclp">GCLP</a></li>
						<!-- <li><a href="/${rc.locale.language }/business/diagnosis/newborn">태아 및 희귀질환 검사</a></li> -->
					</ul>
				</div>
				<div class="item wide">
					<div class="title"><a href="/${rc.locale.language }/business/research/ngs">Single Cell Expert <br>Services</a></div>
					<ul>
						<li><a href="/${rc.locale.language }/business/singlecell-multi">Single Cell Multi-omics Analysis</a></li>
						<li><a href="/${rc.locale.language }/business/spatital">Spatial Transcriptome Analysis</a></li>
						<li><a href="/${rc.locale.language }/business/singlecell">Single Cell (In situ / Statial)</a></li>
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
			<div class="section">
				<div class="font-h6">ESG</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/company/esg-management">ESG<br/> Management</a></div>
				</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/company/ethical-management">Ethical Management</a></div>
				</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/company/social-contribution">Social<br/> Responsibility</a></div>
				</div>
				<div class="item">
					<div class="title"><a href="/${rc.locale.language }/company/greenhouse-gas">Greenhouse gas<br/> emissions</a></div>
				</div>

			</div>
		</div>
	</div>
</body>
