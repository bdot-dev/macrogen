<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>	
	<div class="full-bg business_bg bg-type2">
    <!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header header-bg-white" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>
		<div class="frame frameB">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-white">
                    <li class="breadcrumb-item">Home</li>
                    <li class="breadcrumb-item">SERVICE</li>
                    <li class="breadcrumb-item">임상분석서비스</li>
                    <li class="breadcrumb-item">NGS 유전자 패널 검사실</li>
                </ol>
            </nav>
            <h2 class="hero-title">NGS 유전자 패널 검사실</h2>
            <!-- <div class="slogan-sub">Next Generation Sequencing(NGS)-based genetic panel laboratory support</div>
            <a href="#_tab-box" class="btn btn-round btn-service">
                <span>SERVICE</span>
                <i class="icon icon-arrow-bottom-short-white"></i>
            </a> -->
        </div>
	</div>

	<div class="container">
		<link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
		<div class="section_business">
			<div class="subject-box">
                <p class="font-h4 title">패널, 장비, 인력 등 <br>NGS기반 유전자패널 검사실의 초기 구축을 지원합니다.</p>
                <p class="subject info">NGS(Next Generation Sequencing)기반 유전자패널 검사실을 구축하기 위해 많은 노력이 필요합니다. <br>마크로젠의 노하우를 통해 개발된 PMG Lab Business Model을 확인하세요. 각종 Clinical NGS Panels, Sequencing Platform, ManPower 등 다양한 서비스 옵션을 제공합니다.</p>
                <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_ngs_gene01.png" alt=""/></div>
            </div>

			<!--탭 슬라이드-->
			<div class="tab-box" id="_tab-box">
				<p class="font-h4 title">SERVICE</p>
                <p class="info">환자 개개인의 맞춤 치료가 가능한 정밀 의학 구현을 위해, 많은 병원과 기관에서 NGS(차세대염기서열분석)을 기반으로 한 유전자 패널 검사실 구축을 희망하고 있습니다. <br>하지만 NGS 기반 유전자 패널 검사실은 축적된 노하우로 개발된 임상 진단 패널과 숙련된 전문 인력, 인증 받은 시퀀싱 플랫폼 장비 구축이 필수이며, 많은 시간과 비용이 소비됩니다. 마크로젠은 NGS 패널, 수행 인력, 결과 분석, Lab 장비 등 모든 서비스를 맞춤 지원하고있습니다.</p>
				<div class="slide-tab-wrap">
					<div class="swiper-container tab-slide-box _swiperTab">
						<div class="swiper-wrapper _swiperTab">
							<div class="swiper-slide active" id="certification"><a href="#">임상진단사업 인증 현황</a></div>
							<div class="swiper-slide" id="features"><a href="#">마크로젠 암 진단 패널의 특징 및 경쟁력</a></div>
							<div class="swiper-slide" id="scope"><a href="#">NGS기반 유전자 패널 검사실(PMG Lab) 구축 범위</a></div>
						</div>
					</div>
				</div>
			</div>
			<!--//탭 슬라이드-->

			<!-- 탭 컨텐츠 -->
			<div class="info-box-wrap tab-content">
				<!-- 임상진단사업 인증 현황 -->
				<div class="info-box show">
					<p class="font-h4 main-title">임상진단사업 인증 현황</p>
					<p class="desc">마크로젠은 인증받은 기술력으로 임상분석사업을 해오고 있습니다.</p>
					<div class="img_ngs_gene01">
						<ol>
							<li>
								<strong>2013</strong>
								<ul>
									<li>2008년 ISO9001-최초인증</li>
									<li>2011년 전사업 확대</li>
								</ul>
							</li>
							<li>
								<strong>2017</strong>
								<ul>
									<li>미국병리학회(CAP) 및 <br>CLIA인증 획득</li>
									<li>식약처 NGS 임상검사실 <br>승인</li>
								</ul>
							</li>
							<li>
								<strong>2018</strong>
								<ul>
									<li>유전자검사 정확도 평가 <br>참여(A등급)</li>
									<li>업계 최초 PIMS 인증 획득 <br>(개인정보보호 관리체계)</li>
								</ul>
							</li>
							<li>
								<strong>2019</strong>
								<ul>
									<li>NGS 기반 체외진단시약 <br>GMP 인정 획득</li>
									<li>임상검체시험분석기관<br>(GCLP) 인정 획득 <br>(NGS업계 최초)</li>
								</ul>
							</li>
							<li>
								<strong>2020</strong>
								<ul>
									<li>미국병리학회(CAP) 및 CLIA <br>인증 획득(2회 연속)</li>
									<li>유전자검사 정확도평가 참여<br>(A등급)</li>
									<li>ISO 13485 인증 획득</li>
								</ul>
							</li>
						</ol>
					</div>
					<div class="img_ngs_gene02">
						<a href="/downfile/1_FM89418_macrogen(2022).pdf" class="btn_down">ISO 9001.pdf</a>
						<a href="/downfile/2_Certificate_of_Accreditation_MacrogenHQ_2023.pdf" class="btn_down">CLIA 인증</a>
						<a href="/downfile/3_Macrogen_HQ-CAP_Certificate_of_Accreditation_2022-2024.pdf" class="btn_down">CAP 인증</a>
						<a href="/downfile/4_Macrogen_2022-20_Institute_of_Genetic_testing_evaluation.pdf" class="btn_down">유전자검사 정확도평가 인증</a>
						<a href="/downfile/9_Certificate_of_GMP_Macrogen_2025.08.23.pdf" class="btn_down">GMP 인증</a>
						<a href="/downfile/7_Genetic_Testing_Accuracy_Evaluation_Certification_5-2.PDF" class="btn_down">임상검사실체외진단검사 인증(GCLP)</a>
						<a href="/downfile/6_ISO13485.pdf" class="btn_down">ISO 13485</a>
					</div>
					<hr class="divider">
					<div class="board">
						<div class="navigation">
							<div class="content clearfix">
								<a href="#" class="item next"onclick="setTabContent(1)"><div class="title">마크로젠 암 진단 패널의 특징 및 경쟁력</div></a>
							</div>
						</div>
					</div>
				</div>
				<!-- //임상진단사업 인증 현황 -->

				<!-- 마크로젠 암 진단 패널의 특징 및 경쟁력 -->
				<div class="info-box">
					<p class="font-h4 main-title">마크로젠 암 진단 패널의 특징 및 경쟁력</p>
					<p class="desc">세계 최고 수준의 유전체 기술력과 자체 보유 분석력을 바탕으로 높은 품질의 서비스를 제공합니다.</p>
					<div class="img_ngs_gene03">
						<div class="center"><div class="txt">마크로젠<br>암 유전체 경쟁력</div></div>
						<div class="competitive01">
							<img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0201.png" alt=""/>
							<div class="txt01">한국인 암<br>유전체 최적화</div>
							<div class="txt02 left">다양한 대형 프로젝트로 자체 확보한 <br>한국인 정상 및 암 유전체 데이터베이스 사용</div>
						</div>
						<div class="competitive02">
							<img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0202.png" alt=""/>
							<div class="txt01">쉽고 유용한 병원 맞춤형<br>결과지 제공</div>
							<div class="txt02 left">이해하기 쉽게 구성된 기관 맞춤 결과지, <br>및 유용한 임상정보 제공</div>
						</div>
						<div class="competitive03">
							<img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0203.png" alt=""/>
							<div class="txt01">세계 최고 수준의<br>유전체 기술력</div>
							<div class="txt02 right">최고의 숙련된 전문인력 및 검증된 <br>인증시설을 통한 높은 품질의 서비스 제공</div>
						</div>
					</div>
					<hr class="divider">
					<div class="board">
						<div class="navigation">
							<div class="content clearfix">
								<a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">임상진단사업 인증 현황</div></a>
								<a href="#" class="item next"onclick="setTabContent(2)"><div class="title">NGS기반 유전자 패널 검사실(PMG Lab) 구축 범위</div></a>
							</div>
						</div>
					</div>
				</div>
				<!-- //마크로젠 암 진단 패널의 특징 및 경쟁력 -->

				<!-- NGS기반 유전자 패널 검사실(PMG Lab) 구축 범위 -->
				<div class="info-box">
					<p class="font-h4 main-title">NGS기반 유전자 패널 검사실(PMG Lab) 구축 범위</p>
					<p class="desc">NGS기반 유전자 패널 검사실 구축과 운영을 위한 상황별 맞춤 서비스를 제공합니다.</p>
					<div class="img_ngs_gene04">
						<ul>
							<li>
								<div class="imgbox">
									<img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0301.png" alt=""/>
									패널 제공
								</div>
								<ul class="dot_list01">
									<li>성능 검증된 암 패널</li>
									<li>모든 alteration 및 signature 한번에 분석</li>
								</ul>
							</li>
							<li>
								<div class="imgbox">
									<img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0302.png" alt=""/>
									수행 인력 파견
								</div>
								<ul class="dot_list01">
									<li>다년간 NGS 수행 경험 보유한 선임급 연구원 파견</li>
								</ul>
							</li>
							<li>
								<div class="imgbox">
									<img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0303.png" alt=""/>
									BI 분석
								</div>
								<ul class="dot_list01">
									<li>병원 맞춤 리포트 제공</li>
									<li>전문 BI 인력 1:1 매칭</li>
									<li>정확한 분석 및 빠른 대응</li>
								</ul>
							</li>
							<li>
								<div class="imgbox">
									<img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0304.png" alt=""/>
									장비 투자
								</div>
								<ul class="dot_list01">
									<li>NGS 실험에 필요한 모든 기기</li>
									<li>분석 서버</li>
								</ul>
							</li>
						</ul>
					</div>
					<hr class="divider">
					<div class="board">
						<div class="navigation">
							<div class="content clearfix">
								<a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">마크로젠 암 진단 패널의 특징 및 경쟁력</div></a>
							</div>
						</div>
					</div>
				</div>
				<!-- //NGS기반 유전자 패널 검사실(PMG Lab) 구축 범위 -->
				<div class="btn-area">
					<!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a> -->
		          <div class="btn-box">
			          <div class="tit">마크로젠 서비스 문의</div>
			          <div class="email">
			          	<span class="sub_tit">이메일문의</span>
			          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
			          </div>
			          <div class="phone">
			          	<span class="sub_tit">전화문의</span>
			          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
			          </div>
		          </div>
				</div>
			</div>
			<!-- //탭 컨텐츠 -->

			<script>
				$('._swiperTab .swiper-slide').on('click', function(){
					var idx = $(this).index();
					$(this).addClass('active').siblings().removeClass('active');
					// <!--탭메뉴 클릭시 페이지 변경-->
					$(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
					$(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
				});
				function setTabContent(idx){
					$('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');
					// <!--탭메뉴 클릭시 페이지 변경-->
					$(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
					$(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
					/*페이지 변경후 상단 이동*/
					fnMove();
				}
				/*탭메뉴 상단으로 이동*/
				function fnMove(){
					var offset = $("#_tab-box").offset();
					$('html, body').animate({scrollTop : offset.top - 95}, 100);
				}
				
				// location.hash // 20230502
                if(location.hash != "#_tab-box") {
                	
               		var loadtab = $('._swiperTab .swiper-slide').filter(location.hash);
               		loadtab.click();	// tab content view
               		setTabContent(loadtab.index());	// scroll 이동
                }
           		
                $(window).on("hashchange",function () { 
                	location.reload();
                });
			</script>
		</div>
	</div>
</body>