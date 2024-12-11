<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<link rel="stylesheet" href="/resources/library/swiper/swiper-bundle.min.css" />
	<link rel="stylesheet" href="/resources/css/mobile_common.css" />
	<link rel="stylesheet" href="/resources/css/mobile.css" />
	<link rel="stylesheet" href="/resources/css/mobile_en.css" />
	<script src="/resources/library/swiper/swiper-bundle.min.js"></script>
	<script src="/resources/library/gsap/gsap.min.js"></script>
	<script src="/resources/library/gsap/ScrollTrigger.min.js"></script>
	<script src="/resources/library/gsap/ScrollToPlugin.min.js"></script>
	<script src="/resources/library/marquee/marquee.js"></script>
	<!-- <script src="/resources/script/mobile_common.js"></script> -->
	<script src="/resources/script/mobile.js"></script>

	<script>
		document.addEventListener('DOMContentLoaded', function () {
			const $htmlEl = document.querySelector('html');
			if ($htmlEl) {
				document.querySelector('html').classList.add('animated');
			}
		});
	</script>

	<style>
		.footer.main, .btn-totop {display: none;}
		
		
	</style>
</head>
<body divwrapclass="main-wrap">
	<div class="wrap main-wrap" id="wrap">
		<header class="header">
			<div class="inner">
				<h1 class="logo"><a href="/en/">마크로젠 로고</a></h1>
				<a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			</div>
		</header>
		<main class="container">
			<h2 class="ir">정밀의학 생명공학기업 마크로젠은 개개인이 타고난 유전적 특성을 정확히 알고 보다 건강한 삶을 준비할 수 있도록 돕는 초개인화 헬스케어 서비스를 제공합니다.</h2>
			<section class="section section--kv section--slide">
				<div class="section__inner">
					<h3 class="ir">macrogen main keyvisual</h3>
					<div class="main-full main-kv">
						<div class="main-kv__inner">
							<div class="main-board">
								<div class="main-board__cont">
									<div class="main-board__mo">
										<ul class="main-board__list">
											<li class="main-board__row">
												<a href="https://www.macrogen.com/en/newsroom/news/20000000354?pageIndex=1&searchKeyword=">
													<div class="main-board__image">
														<img src="/resources/images/mo/kv-image01.jpg" alt="" />
														<h4 class="main-board__description">
															First Non-Medical Biobank<br />
															in South Korea
														</h4>
													</div>
												</a>
												<a href="https://www.macrogen.com/en/newsroom/news/20000000358?pageIndex=1&searchKeyword=">
													<div class="main-board__image video-length first">
														<video autoplay muted playsinline loop>
															<source src="/resources/video/kv01_03.mp4" type="video/mp4" />
														</video>
														<h4 class="main-board__description">
															the Korean National<br />
															Project of Bio-Big Data
														</h4>
													</div>
												</a>
												<a href="https://dna.macrogen-singapore.com/eng/">
													<div class="main-board__image">
														<img src="/resources/images/mo/kv-image03_en.jpg" alt="" />
														<h4 class="main-board__description">
															Contact <br />Macrogen APAC
														</h4>
													</div>
												</a>
												<a href="https://www.macrogen.com/en/newsroom/news/20000000336?pageIndex=1&searchKeyword=">
													<div class="main-board__image">
														<img src="/resources/images/mo/kv-image04_en.jpg" alt="" />
														<h4 class="main-board__description">
															Partnering with PacBio <br />
															for Precision Health <br />
															in Singapore
														</h4>
													</div>
												</a>
												<a href="https://www.macrogen.com/en/business/singlecell-multi">
													<div class="main-board__image">
														<video autoplay muted playsinline loop>
															<source src="/resources/video/kv01_01_m.mp4" type="video/mp4" />
														</video>
														<h4 class="main-board__description">
															Single-Cell Multi-<br />
															Omics Analysi<br />
															Services
														</h4>
													</div>
												</a>
											</li>
											<li class="main-board__row">
												<a href="https://www.macrogen.com/en/business/research/ngs#genome">
													<div class="main-board__image">
														<img src="/resources/images/mo/kv-image05_en.jpg" alt="" />
														<h4 class="main-board__description">
															Next Generation<br />
															Sequencing
														</h4>
													</div>
												</a>
												<a href="https://www.macrogen.com/en/company/global-network">
													<div class="main-board__image">
														<img src="/resources/images/mo/kv-image06.jpg" alt="" />
														<h4 class="main-board__description">Macrogen <br />Global Network</h4>
													</div>
												</a>
												<a href="https://www.macrogen.com/en/company/overview">
													<div class="main-board__image video-length second">
														<video autoplay muted playsinline loop>
															<source src="/resources/video/kv02_06.mp4" type="video/mp4" />
														</video>
														<h4 class="main-board__description">
															Global Leader <br />
															in Precision Medicine <br />
															Healthcare
														</h4>
													</div>
												</a>
												<a href="https://www.macrogen.com/en/company/vision">
													<div class="main-board__image">
														<img src="/resources/images/mo/kv-image07.jpg" alt="" />
														<h4 class="main-board__description">Future of Digital Health <br />with Big Data and AI</h4>
													</div>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="section section--slogan section--slide">
				<div class="section__inner">
					<h3 class="ir">마크로젠 서비스</h3>
					<div class="main-full main-slogan">
						<div class="main-slogan__wrap">
							<div class="main-slogan__group">
								<div class="main-slogan__text">
									<h4>Combining top-tier</h4>
								</div>
								<div class="main-slogan__text">
									<h4>global genomic</h4>
								</div>
								<div class="main-slogan__text">
									<h4>analysis expertise</h4>
								</div>
								<div class="main-slogan__text">
									<h4>
										with<span class="highlight"><span class="bg"></span>Big Data</span>and<span class="highlight"><span class="bg"></span>AI</span>
									</h4>
								</div>
							</div>
							<div class="overlay-circle"></div>
							<div class="main-slogan__marquee">
								<h4>
									We are creating<br />
									pathways to a<br />
									healthier life.
								</h4>
								<div class="main-slogan__imagewrap">
									<ul>
										<li>
											<div class="main-slogan__image">
												<img src="/resources/images/main/main-slogan_image01.jpg" alt="" />
											</div>
										</li>
										<li>
											<div class="main-slogan__image main-slogan__image--scale"></div>
										</li>
										<li>
											<div class="main-slogan__image">
												<img src="/resources/images/main/main-slogan_image03.jpg" alt="" />
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="main-full main-service">
						<div class="main-service__slide">
							<ul class="main-service__list swiper-wrapper">
								<li class="main-service__item main-service__item--01 swiper-slide">
									<div class="main-service__cont">
										<div class="main-service__left">
											<span class="main-service__entitle">Personal Healthcare</span>
											<h3 class="main-service__kotitle">Healthcare</h3>
											<p class="main-service__description">We provide a wide range of genetic tests to support not only disease prediction but also nutrition, diet, and overall wellness, empowering you to maintain health and build balanced lifestyle habits.</p>
											<ul class="main-service__link">
												<li>
													<a href="/en/business/healthcare/dtc-genetic">Personal Healthcare</a>
												</li>
												<li>
													<a href="/en/business/healthcare/pet-genetic">Pet Healthcare</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="main-service__item main-service__item--02 swiper-slide">
									<div class="main-service__cont">
										<div class="main-service__left">
											<span class="main-service__entitle">Research and Data Analysis</span>
											<h3 class="main-service__kotitle">
												Research and<br />
												Data Analysis
											</h3>
											<p class="main-service__description">Leveraging years of accumulated expertise and global-standard analytical infrastructure, we offer fast, accurate, and comprehensive genomic analysis services.</p>
											<ul class="main-service__link">
												<li>
													<a href="/en/business/research/ngs#genome">NGS</a>
												</li>
												<li>
													<a href="/en/business/research/proteomics">Proteomics</a>
												</li>
												<li>
													<a href="/en/business/research/ces#standard">CES</a>
												</li>
												<li>
													<a href="/en/business/singlecell-multi">Single-cell omics</a>
												</li>
												<li>
													<a href="/en/business/research/microarray#expression">Microarray</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="main-service__item main-service__item--03 swiper-slide">
									<div class="main-service__cont">
										<div class="main-service__left">
											<span class="main-service__entitle">Clinical Diagnosis</span>
											<h3 class="main-service__kotitle">
												Clinical<br />
												Diagnostics
											</h3>
											<p class="main-service__description">By building an integrated big data system of genomic, medical, and lifestyle information, we are advancing disease prediction and pioneering innovation in future medicine.</p>
											<ul class="main-service__link main-service__link--large">
												<li>
                                                    <a href="/en/business/diagnosis/cancer-genome#cancer">Cancer Genomic Testing</a>
												</li>
												<li>
                                                   <a href="/en/business/diagnosis/ngs-panel#certification">NGS Genomic Panel Laboratory</a>
												</li>
												<li>
                                                    <a href="/en/business/diagnosis/gclp#clin">GCLP (Clinical Trial Sample Analysis)</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
							<div class="main-service__buttonwrap">
								<ul class="main-service__button">
									<li class="active">Healthcare</li>
									<li>Research and Data Analysis</li>
									<li>Clinical Diagnostics</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="section section--info">
				<div class="section__inner">
					<h2 class="ir">macrogen service</h2>
					<div class="main-full main-info">
						<div class="main-info__wrap">
							<h3 class="title title--white tac">
								Driving continuous<br />
								growth and leading<br />
								the paradigm<br />
								shift in healthcare.
							</h3>
							<div class="main-info__content">
								<ul class="main-info__list">
									<li>
										<strong>No.<span class="counting" data-count="1">0</span></strong>
										<p>
											Market Share<br />
											in South Korea
										</p>
									</li>
									<li>
										<strong><span class="counting" data-count="153">0</span></strong>
										<p>
											18K+ Customers<br />
											in 153 Countries
										</p>
									</li>
									<li>
										<strong>Top<span class="counting" data-count="5">0</span></strong>
										<p>
											Sequencing Capacity<br />
											300K+ Genome<br />
											per Year
										</p>
									</li>
									<li>
										<strong><span class="counting" data-count="30">0</span>PB</strong>
										<p>
											Big Data Computing<br />
											Infrastructure
										</p>
									</li>
									<li>
										<strong><span class="counting" data-count="700">0</span>+</strong>
										<p>
											Number of Employees<br />
											(as of 2024)
										</p>
									</li>
									<li>
										<strong><span class="counting" data-count="156">0</span></strong>
										<p>
											SCI-level Articles<br />
											in Top-tier Journals
										</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="section section--global">
				<div class="section__inner">
					<h2 class="ir">마크로젠 글로벌 네트워크</h2>
					<div class="main-full main-global">
						<div class="main-global__wrap">
							<div class="main-global__title tac">
								<h3 class="title">
									We deliver timely,<br />
									systematic services<br />
									tailored to meet<br />
									your needs,<br />
									wherever you are
								</h3>
							</div>
							<div class="main-global__btnwrap">
								<div class="main-global__select">
									<div class="main-global__selecttext" data-text="Asia">All</div>
									<div class="main-global__option">
										<ul class="main-global__optionlist">
											<li class="group-button"><button type="button" data-option="All" data-group="0">All</button></li>
											<li class="group-button"><button type="button" data-option="Asia" data-group="1">Asia</button></li>
											<li class="group-button"><button type="button" data-option="Europe" data-group="2">Europe</button></li>
											<li class="group-button"><button type="button" data-option="America" data-group="3">America</button></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="main-global__map">
								<div class="main-global__bg swiper-container">
									<ul class="swiper-wrapper">
										<li class="swiper-slide active" data-group="0">
											<img src="/resources/images/mo/img_map_all.png" alt="" />
										</li>
										<li class="swiper-slide active" data-group="1">
											<img src="/resources/images/mo/img_map_01.png" alt="" />
										</li>
										<li class="swiper-slide" data-group="2">
											<img src="/resources/images/mo/img_map_02.png" alt="" />
										</li>
										<li class="swiper-slide" data-group="3">
											<img src="/resources/images/mo/img_map_03.png" alt="" />
										</li>
									</ul>
								</div>
							</div>

							<div class="global-swiper">
								<div class="global-swiper__wrap swiper-wrapper">
									<div class="global-swiper__item swiper-slide" data-group="0"></div>
									<div class="global-swiper__item swiper-slide" data-group="1">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_korea_01.jpg" alt="Macrogen Gangnam HQ" />
										</div>
										<div class="global-swiper__description">
											<span>Korea</span>
											<h4>Macrogen Gangnam HQ</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="1">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_korea_02.jpg" alt="Macrogen Genome Center" />
										</div>
										<div class="global-swiper__description">
											<span>Korea</span>
											<h4>Macrogen Genome<br />Center</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="1">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_korea_03.jpg" alt="Macrogen Songdo Global Campus" />
										</div>
										<div class="global-swiper__description">
											<span>Korea</span>
											<h4>Macrogen Songdo<br />Global Campus</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="1">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_korea_04.jpg" alt="acrogen Sejong Campu" />
										</div>
										<div class="global-swiper__description">
											<span>Korea</span>
											<h4>Macrogen Sejong<br />Campus</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="1">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_japan_01.jpg" alt="Macrogen Japan" />
										</div>
										<div class="global-swiper__description">
											<span>Japan</span>
											<h4>Macrogen Japan</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="1">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_singapore_01.jpg" alt="Macrogen APAC" />
										</div>
										<div class="global-swiper__description">
											<span>Singapore</span>
											<h4>Macrogen APAC</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="2">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_netherlands_01.jpg" alt="Macrogen Europe" />
										</div>
										<div class="global-swiper__description">
											<span>Netherlands</span>
											<h4>Macrogen Europe</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="2">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_spain_01.jpg" alt="Madrid Genome Center" />
										</div>
										<div class="global-swiper__description">
											<span>Spain</span>
											<h4>Madrid Genome Center</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="2">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_italy_01.jpg" alt="Milano Genome Center" />
										</div>
										<div class="global-swiper__description">
											<span>Italy</span>
											<h4>Milano Genome Center</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="2">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_france_01.jpg" alt="Paris Genome Center" />
										</div>
										<div class="global-swiper__description">
											<span>France</span>
											<h4>Paris Genome Center</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="2">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_poland_01.jpg" alt="Szczecin Genome Center" />
										</div>
										<div class="global-swiper__description">
											<span>Poland</span>
											<h4>Szczecin Genome Center</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="2">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_switzerland_01.jpg" alt="Basel Genome Center" />
										</div>
										<div class="global-swiper__description">
											<span>Switzerland</span>
											<h4>Basel Genome Center</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="3">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_usa_01.jpg" alt="Psomagen" />
										</div>
										<div class="global-swiper__description">
											<span>USA</span>
											<h4>Psomagen</h4>
										</div>
									</div>
									<div class="global-swiper__item swiper-slide" data-group="3">
										<div class="global-swiper__image">
											<img src="/resources/images/mo/network_chile_01.jpg" alt="Santiago Genome Center" />
										</div>
										<div class="global-swiper__description">
											<span>Chile</span>
											<h4>Santiago Genome Center</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="section section--news">
				<div class="section__inner">
					<h2 class="ir">macrogen news</h2>
					<div class="main-news">
						<div class="main-news__wrap">
							<h3 class="title">News</h3>
							<div class="main-news__partnership">
								<ul class="main-news__list">
									<li>
										<a href="https://www.macrogen.com/en/newsroom/news/20000000358?pageIndex=1&searchKeyword=" class="main-news__container">
											<div class="main-news__left">
												<div class="main-news__content">
													<div class="main-news__tag">
														<span class="main-news__category">Business</span>
													</div>
													<div class="main-news__top">
														<h4 class="main-news__title">
															Macrogen Selected as Final Contractor for Korea's Largest Bio Big Data Project
														</h4>
													</div>
													<div class="main-news__bottom">
														<p class="main-news__description">
															December 9, 2024 –Macrogen, a global leader in genomic analysis, in partnership with DNA Link, Theragen Bio, and CG invites, has been selected as the final contractor forNational Integrated Bio Big Data Project, supported by the Ministry of Health and Welfare and the Korea Disease Control and Prevention Agency, and commissioned by the Korea Research Institute of Bioscience and Biotechnology.
														</p>

														<time class="main-news__date">2024.12.09</time>
													</div>
												</div>
											</div>
											<div class="main-news__right">
												<div class="main-news__image">
													<img src="/resources/images/main/news_image03.jpg" alt="" />
												</div>
											</div>
										</a>
									</li>
									<li>
										<a href="https://www.macrogen.com/en/newsroom/news/20000000353?pageIndex=1&searchKeyword= " class="main-news__container">
											<div class="main-news__left">
												<div class="main-news__content">
													<div class="main-news__tag">
														<span class="main-news__category">Business</span>
													</div>
													<div class="main-news__top">
														<h4 class="main-news__title">Macrogen and Samsung Sign a Supply Agreement for ‘Gentok’ DNA Testing Service</h4>
													</div>
													<div class="main-news__bottom">
														<p class="main-news__description">
															November 18, 2024 – Macrogen, a global digital healthcare leader, announced today that it has signed a service supply agreement with Samsung Electronics. Macrogen’s digital healthcare platform, ‘Gentok,’ will be integrated into the Samsung Health app. This integration will enable Samsung Health users to access personalized health solutions tailored to their lifestyle logs and genetic data.
														</p>
														<time class="main-news__date">2024.11.18</time>
													</div>
												</div>
											</div>
											<div class="main-news__right">
												<div class="main-news__image">
													<img src="/resources/images/mo/news_image03.jpg" alt="" />
												</div>
											</div>
										</a>
									</li>
									<li>
										<a href="https://www.macrogen.com/en/newsroom/news/20000000351?pageIndex=1&searchKeyword=" class="main-news__container">
											<div class="main-news__left">
												<div class="main-news__content">
													<div class="main-news__tag">
														<span class="main-news__category">Business</span>
													</div>
													<div class="main-news__top">
														<h4 class="main-news__title">Macrogen Selected as Preferred bidder for South Korea's Largest "National Integrated Bio Big Data Project"</h4>
													</div>
													<div class="main-news__bottom">
														<p class="main-news__description">
															October 29, 2024 – Macrogen, a global leader in genomic analysis, announced that its consortium with DNA Link, Theragen Bio, and CG invites has been selected as the preferred bidder for the genomic data production in the "National Integrated Bio Big Data Project." This initiative, backed by the Ministry of Health and Welfare, the Ministry of Science and ICT, the Ministry of Trade, Industry and Energy, and the Korea Disease Control and Prevention Agency, and commissioned by the Korea Research Institute of Bioscience and Biotechnology (KRIBB), aims to amass a comprehensive bio big data resource.
														</p>
														<time class="main-news__date">2024.10.29</time>
													</div>
												</div>
											</div>
											<div class="main-news__right">
												<div class="main-news__image">
													<img src="/resources/images/mo/news_image03.jpg" alt="" />
												</div>
											</div>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="section section--marquee">
				<div class="section__inner">
					<h2 class="ir">macrogen global partner</h2>
					<div class="main-marquee">
						<h3 class="title tac">
							We collaborates<br />
							with global partners<br />
							to drive innovation<br />
							together
						</h3>
						<div class="main-marquee__slidewrap"></div>
						<div class="main-marquee__slide main-marquee__slide--01">
							<ul>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image01.png" alt="PacBi" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image02.png" alt="ThermoFisher" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image03.png" alt="10x Genomics" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image04.png" alt="OLink" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image05.png" alt="Agilent" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image01.png" alt="PacBi" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image02.png" alt="ThermoFisher" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image03.png" alt="10x Genomics" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image04.png" alt="OLink" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image05.png" alt="Agilent" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image01.png" alt="PacBi" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image02.png" alt="ThermoFisher" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image03.png" alt="10x Genomics" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image04.png" alt="OLink" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image05.png" alt="Agilent" />
									</div>
								</li>
							</ul>
						</div>
						<div class="main-marquee__slide main-marquee__slide--02">
							<ul>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image06.png" alt="Microsoft" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image07.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image08.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image09.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image10.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image06.png" alt="Microsoft" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image07.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image08.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image09.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image10.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image06.png" alt="Microsoft" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image07.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image08.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image09.png" alt="TWIST" />
									</div>
								</li>
								<li>
									<div class="main-marquee__image">
										<img src="/resources/images/mo/marquee_image10.png" alt="TWIST" />
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<section class="section section--banner">
				<div class="section__inner">
					<h2 class="ir">CONTACT US</h2>
					<div class="main-banner">
						<h2 class="title title--white title--small tac">
							Need Assistance?<br />
							Our experts are here to help
						</h2>
						<div class="main-banner__button">
							<a href="/en/contact-us" class="btn btn-default btn-default--gradient">
								<span class="btn btn-default__text btn-default__text--diff">Contact Us</span>
							</a>
						</div>
					</div>
				</div>
			</section>

			<script>
				document.addEventListener('DOMContentLoaded', function () {
					const $htmlEl = document.querySelector('html');
					if ($htmlEl) {
						document.querySelector('html').classList.add('animated');
					}
				});
			</script>

			
		</main>
	</div>
	<script> /*2023.0404 수정*/
		var $container = $('#key-swiper-container');
		var $conLi = $container.find('.swiper-slide');
		var $wrapper = $('#key-swiper-wrapper');
		var $pagination = $('#key-swiper-pagination');
		var delay = 5000;
		var mainSwiper;
		setTimeout(function () {
			step1()
		})

		function step1() {
			$wrapper.css({
				'transform': 'translateY(0)',
				'transition-duration': '1s'
			})
			// $('.header').addClass('header-white')
			$('.bg-DNA').addClass('DNA-move')
			$wrapper.animate({
				height: "100%"
			}, 1000, function () {
				$('.swiper-wrapper').css({'overflow': 'visible'})
				$pagination.show()
				setSlider()

				$('html').addClass('animated')
			})
			introScroll()
		}

		function step2() {
			//after 기능
			// $('.header').addClass('header-white')
			introScroll()

			$wrapper.css({'overflow': 'visible'})
			$container.css({'overflow': 'hidden'})
			$('.text-box').fadeIn()
			$('.scroll-wrap').delay(1000).fadeIn()
			// $('.stock_information').delay(1500).fadeIn()
		}


		function setSlider() {                
			var conCnt = $conLi.length;
			let options = {};

			if (mainSwiper !== undefined) {
				console.log('mainSwiper');
				return false
			}
			console.log('setSlider');
			if(conCnt < 2){
				console.log(conCnt);
				options = {}         
			}else{
				options = {
					effect : 'fade', // 페이드 효과
					loop: true, //반복
					speed: 0,//속도
					autoplay: {
						delay: 6000,
						waitForTransition: true,
						disableOnInteraction: false,
					},
					pagination: {
						el: $pagination,
						clickable: true,
						renderBullet: function (index, className) {
							var bu = '<span class="' + className + '">' + '<svg class="fp-arc-loader" width="28" height="28">' +
								'<circle class="path" cx="50%" cy="50%" r="13" fill="none"  stroke="#FFF"' +
								'stroke-opacity="1" stroke-width="1px"></circle>' +
								'<circle cx="50%" cy="50%" r="4" fill="#FFF"></circle>' +
								'</svg></span>';
							return bu;
						},
					},
					on: {
						slideChange: function () {
							!$('.swiper-slide').eq(this.activeIndex).css({
								'animation-name': 'none',
								'animation-duration': '0'
							})

							$('.swiper-slide').eq(this.activeIndex).children('.visual').css({
								'animation-name': 'grow2',
								'animation-duration': '1s'
							})
						}
					}
				}   
				$('.swiper_btn').delay(1000).fadeIn()
			}

			mainSwiper = new Swiper($container, options)
			step2()

			jQuery('[data-vbg]').youtube_background();
		}            

		function introScroll(){
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
		}
	</script>	
	
</body>
