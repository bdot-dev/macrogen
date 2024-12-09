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
				<h2 class="main-title font-h1 en">Sitemap</h2>
				<div class="section">
					<div class="font-h6">MACROGEN</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/company/overview">회사소개</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/company/overview">기업개요</a></li>
							<li><a href="/${rc.locale.language }/company/bod">경영진</a></li>
							<li><a href="/${rc.locale.language }/company/history">연혁</a></li>
							<li><a href="/${rc.locale.language }/company/vision">비전</a></li>
							<li><a href="/${rc.locale.language }/company/certification">인증</a></li>
						</ul>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/company/global-network">글로벌 네트워크</a></div>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/company/qualified-image">채용</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/company/qualified-image">인재상</a></li>
							<li><a href="/${rc.locale.language }/company/hrm">인사제도</a></li>
							<li><a href="/${rc.locale.language }/company/recruit">채용안내</a></li>
						</ul>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/rnd/patent">Resource</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/rnd/patent">특허</a></li>
							<li><a href="/${rc.locale.language }/rnd/thesis">논문</a></li>
						</ul>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/rnd/institute/precision-medicine">R&#47;D</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">정밀의학연구소</a></li>
							<li><a href="/${rc.locale.language }/rnd/institute/bioinformatics">생명정보학연구소</a></li>
							<li><a href="/${rc.locale.language }/rnd/institute/biome">더바이옴연구소</a></li>
							<li><a href="/${rc.locale.language }/rnd/institute/sync-genes">싱크진연구소</a></li>
							<li><a href="/${rc.locale.language }/rnd/institute/bigdata">빅데이터연구소</a></li>
						</ul>
					</div>
				</div>
				<div class="section">
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
						<div class="title"><a href="/${rc.locale.language }/business/healthcare/personal-genetic">퍼스널 헬스케어</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">질병예측 유전자검사</a></li>
							<li><a href="/${rc.locale.language }/business/healthcare/dtc-genetic">DTC 유전자검사</a></li>
							<li><a href="/${rc.locale.language }/business/healthcare/dtc-biome">DTC 바이옴검사</a></li>
						</ul>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/business/healthcare/pet-genetic">반려동물 헬스케어</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">반려동물 유전자검사</a></li>
						</ul>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/business/research/ngs">연구분석서비스</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/business/research/ngs">NGS</a></li>
							<li><a href="/${rc.locale.language }/business/research/ces">CES</a></li>
							<li><a href="/${rc.locale.language }/business/research/microarray">Microarray</a></li>
							<li><a href="/${rc.locale.language }/business/research/proteomics">Proteomics</a></li>
							<li><a href="/${rc.locale.language }/business/research/gene-synthesis">Gene Synthesis</a></li>
							<li><a href="/${rc.locale.language }/business/research/oligo">Oligo</a></li>
							<li><a href="/${rc.locale.language }/business/research/model">모델동물/크리스퍼</a></li>
							<li><a href="/${rc.locale.language }/business/research/reagent">연구용 시약 및 소모품</a></li>
						</ul>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/business/diagnosis/cancer">임상분석서비스</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/business/diagnosis/cancer">정밀의학</a></li>
							<li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome">암 유전체 검사</a></li>
							<li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel">NGS 유전자패널 검사실</a></li>
							<li><a href="/${rc.locale.language }/business/diagnosis/gclp">GCLP</a></li>
							<!-- <li><a href="/${rc.locale.language }/business/diagnosis/newborn">태아 및 희귀질환 검사</a></li> -->
						</ul>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/business/research/ngs">싱글셀분석서비스</a></div>
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
						<div class="title"><a href="/${rc.locale.language }/newsroom/news">뉴스</a></div>
					</div>
					<%-- <div class="item">
						<div class="title"><a href="/${rc.locale.language }/newsroom/media-library">미디어라이브러리</a></div>
					</div> --%>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/newsroom/notice">공지사항</a></div>
					</div>			     
				</div>
				<div class="section ir">
					<div class="font-h6">IR</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/ir/financial">재무정보</a></div>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/ir/announcement">공시정보</a></div>
						<ul>
							<li><a href="/${rc.locale.language }/ir/announcement">공고</a></li>
							<li><a href="/${rc.locale.language }/ir/disclosure">공시정보</a></li>
						</ul>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/ir/news">IR소식</a></div>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/ir/investor-inquiries">투자자 문의</a></div>
					</div>
				</div>
				<div class="section">
					<div class="font-h6">ESG</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/company/esg-management">ESG경영</a></div>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/company/ethical-management">윤리경영</a></div>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/company/social-contribution">사회공헌</a></div>
					</div>
					<div class="item">
						<div class="title"><a href="/${rc.locale.language }/company/greenhouse-gas">온실가스</a></div>
					</div>
				</div>
				</div>
		</div>
	</div>
</body>
