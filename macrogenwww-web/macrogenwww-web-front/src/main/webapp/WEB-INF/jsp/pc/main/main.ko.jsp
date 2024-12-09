<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<script src="/publishing/pc-ko/dist/js/lib/jquery-ui.min.js"></script>
	<script type="text/javascript" src="https://unpkg.com/youtube-background/jquery.youtube-background.min.js"></script>
	<link rel="stylesheet" href="/resources/library/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/resources/css/common.css" />
    <link rel="stylesheet" href="/resources/css/main.css" />
    <!-- <script src="/resources/library/jquery/jquery-3.7.1.min.js"></script> -->
    <script src="/resources/library/jquery/jquery.easing.min.js"></script>
    <script src="/resources/library/swiper/swiper-bundle.min.js"></script>
    <script src="/resources/library/gsap/gsap.min.js"></script>
    <script src="/resources/library/gsap/ScrollTrigger.min.js"></script>
    <script src="/resources/library/gsap/ScrollToPlugin.min.js"></script>
    <script src="/resources/library/marquee/marquee.js"></script>
    <script src="/resources/script/common.js"></script>
    <script src="/resources/script/index.js"></script>
    <style>
        html,
        body {
            scroll-behavior: auto !important;
        }
    </style>
	<script>
		document.addEventListener('DOMContentLoaded', function () {
			const $htmlEl = document.querySelector('html');
			if ($htmlEl) {
				document.querySelector('html').classList.add('animated');
			}
		});
	</script>
</head>

<body>
<div class="wrap main-wrap" id="wrap">
            <header class="header header-main" id="header">
				<c:import url="/inc/header-inner-gnb" />
			</header>
            <main class="container">
                <h2 class="ir">정밀의학 생명공학기업 마크로젠은 개개인이 타고난 유전적 특성을 정확히 알고 보다 건강한 삶을 준비할 수 있도록 돕는 초개인화 헬스케어 서비스를 제공합니다.</h2>
                <section class="section section--kv section--slide">
                    <div class="section__inner">
                        <h3 class="ir">마크로젠 메인 키비주얼</h3>
                        <div class="main-full main-kv">
                            <div class="main-kv__inner">
                                <div class="main-board">
                                    <div class="main-board__cont">
                                        <div class="main-board__pc">
                                            <ul class="main-board__list">
                                                <li>
													<a href="https://www.macrogen.com/ko/newsroom/news/20000000323?pageIndex=3&searchKeyword=">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image01.jpg" alt="" />
															<h4 class="main-board__description">
																국내 최초 비의료기관<br />
																바이오뱅크
															</h4>
														</div>
													</a>
                                                </li>
                                                <li>
													<a href="https://www.macrogen.com/ko/business/healthcare/dtc-genetic">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image02.jpg" alt="" />
															<h4 class="main-board__description main-board__description--diff">몸BTI 유전자검사 <br />젠톡</h4>
														</div>
													</a>
                                                </li>
                                            </ul>
                                            <ul class="main-board__list">
                                                <li>
													<a href="https://www.macrogen.com/ko/business/healthcare/dtc-biome">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image03.jpg" alt="" />
															<h4 class="main-board__description">장내미생물 검사 더바이옴</h4>
														</div>
													</a>
                                                </li>
                                                <li>
                                                    <a href="https://www.macrogen.com/ko/newsroom/news/20000000356?pageIndex=1&searchKeyword=">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image04.jpg" alt="" />
															<h4 class="main-board__description">마크로젠 세종캠퍼스 오픈</h4>
														</div>
													</a>
                                                </li>
                                                <li>
													<a href="https://www.macrogen.com/ko/business/singlecell-multi">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image05.jpg" alt="" />
															<video autoplay muted playsinline loop>
																<source src="/resources/video/kv02_01.mp4" type="video/mp4" />
															</video>
															<h4 class="main-board__description">
																Single Cell Multi-omics<br />
																싱글셀 분석 서비스
															</h4>
														</div>
													</a>
                                                </li>
                                            </ul>
                                            <ul class="main-board__list">
                                                <li>
													<a href="https://www.macrogen.com/ko/company/global-network">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image06.jpg" alt="" />
															<h4 class="main-board__description">마크로젠 <br />글로벌 네트워크</h4>
														</div>
													</a>
                                                </li>
                                                <li>
													<a href="https://www.macrogen.com/ko/newsroom/news/20000000357?pageIndex=1&searchKeyword=">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image07.jpg" alt="" />
															<video autoplay muted playsinline loop>
																<source src="/resources/video/kv01_03.mp4" type="video/mp4" />
															</video>
															<h4 class="main-board__description">국가 통합 <br />바이오 빅데이터 구축</h4>
														</div>
													</a>
                                                </li>
                                            </ul>
                                            <ul class="main-board__list">
                                                <li>
													<a href="https://www.macrogen.com/ko/company/overview">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image08.jpg" alt="" />
															<video autoplay muted playsinline loop>
																<source src="/resources/video/kv02_02.mp4" type="video/mp4" />
															</video>
															<h4 class="main-board__description">
																글로벌 정밀의학<br />
																헬스케어 리더
															</h4>
														</div>
													</a>
                                                </li>
                                                <li>
													<a href="https://www.macrogen.com/ko/company/vision">
														<div class="main-board__image">
															<img src="/resources/images/main/kv-image09.jpg" alt="" />
															<h4 class="main-board__description">빅데이터·AI 기반 <br />건강데이터 산업의 미래</h4>
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
                        <div class="main-full main-slogan main-slogan--diff">
                            <div class="main-slogan__wrap">
                                <div class="main-slogan__group">
                                    <div class="main-slogan__text">
                                        <h4>글로벌 탑티어 유전체 분석 기술력에</h4>
                                    </div>
                                    <div class="main-slogan__text">
                                        <h4>
                                            <span class="highlight"><span class="bg"></span>빅데이터</span>와 <span class="highlight"><span class="bg"></span>AI</span>를 더해
                                        </h4>
                                    </div>
                                </div>
                                <div class="overlay-circle"></div>
                                <div class="main-slogan__marquee">
                                    <h4>인류의 건강하고 행복한 삶을 만들어 갑니다</h4>
                                    <div class="main-slogan__imagewrap">
                                        <ul>
                                            <li>
                                                <div class="main-slogan__image">
                                                    <img src="/resources/images/main/main-slogan_image01.jpg" alt="" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-slogan__image">
                                                    <img src="/resources/images/main/main-slogan_image02.jpg" alt="" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-slogan__image main-slogan__image--scale">
                                                    <!-- <img src="/resources/images/main/service-bg02.jpg" alt="" /> -->
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
                                                <h3 class="main-service__kotitle">헬스케어</h3>
                                                <p class="main-service__description">
                                                    질병예측뿐만 아니라 영양, 다이어트에 이르기까지<br />
                                                    건강을 유지하고 균형 잡힌 생활습관을 만들어가는데<br />
                                                    필요한 다양한 유전자 검사를 제공합니다.
                                                </p>
                                                <ul class="main-service__link">
                                                    <li>
														<a href="/ko/business/healthcare/dtc-genetic">퍼스널 헬스케어</a>
													</li>
													<li>
														<a href="/ko/business/healthcare/pet-genetic">반려동물 헬스케어</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="main-service__item main-service__item--02 swiper-slide">
                                        <div class="main-service__cont">
                                            <div class="main-service__left">
                                                <span class="main-service__entitle">Research and Data Analysis</span>
                                                <h3 class="main-service__kotitle">연구분석</h3>
                                                <p class="main-service__description">
                                                    오랜기간 축적된 경험과 노하우, 글로벌 수준의 분석 인프라를 바탕으로<br />
                                                    빠르고 정확하게 다양한 유전체 분석 서비스를 제공합니다.
                                                </p>
                                                <ul class="main-service__link main-service__link--col50">
                                                    <li>
                                                        <a href="/ko/business/research/ngs#genome">NGS</a>
													</li>
													<li>
														<a href="/ko/business/research/proteomics">Proteomics</a>
													</li>
													<li>
														<a href="/ko/business/research/ces#standard">CES</a>
													</li>
													<li>
														<a href="/ko/business/singlecell-multi">Single-cell omics</a>
													</li>
													<li>
														<a href="/ko/business/research/microarray#expression">Microarray</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="main-service__item main-service__item--03 swiper-slide">
                                        <div class="main-service__cont">
                                            <div class="main-service__left">
                                                <span class="main-service__entitle">Clinical Diagnosis</span>
                                                <h3 class="main-service__kotitle">임상진단</h3>
                                                <p class="main-service__description">
                                                    유전체정보, 의료정보 및 생활정보의 통합 빅데이터를 구축하고<br />
                                                    질병을 예측하여 미래의학 혁신에 이바지하고 있습니다.
                                                </p>
                                                <ul class="main-service__link">
                                                    <li>
                                                        <a href="/ko/business/diagnosis/cancer-genome#cancer">암 유전체 검사</a>
                                                    </li>
                                                    <li>
                                                        <a href="/ko/business/diagnosis/ngs-panel#certification">NGS 유전자패널 검사실</a>
                                                    </li>
                                                    <li>
                                                        <a href="/ko/business/diagnosis/gclp#clin">GCLP (임상시험검체분석)</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="main-service__button">
                                    <li class="active">헬스케어</li>
                                    <li>연구분석</li>
                                    <li>임상진단</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- 기본 스크롤 영역 -->
                <section class="section section--scroll section--slide">
                    <div class="scroll-area">
                        <section class="section section--info">
                            <div class="section__inner">
                                <h2 class="ir">마크로젠 서비스</h2>
                                <div class="main-full main-info">
                                    <div class="main-info__wrap">
                                        <h3 class="title title--white tac">
                                            지속 성장을 이루며, 헬스케어<br />
                                            패러다임의 변화를 이끕니다
                                        </h3>
                                        <div class="main-info__content">
                                            <ul class="main-info__list">
                                                <li>
                                                    <strong><span class="counting" data-count="1">0</span>위</strong>
                                                    <p>
                                                        국내 유전체 분석<br />
                                                        시장점유율
                                                    </p>
                                                </li>
                                                <li>
                                                    <strong><span class="counting" data-count="153">0</span></strong>
                                                    <p>
                                                        전세계 153개국<br />
                                                        1만 8천여 고객
                                                    </p>
                                                </li>
                                                <li>
                                                    <strong>Top<span class="counting" data-count="5">0</span></strong>
                                                    <p>
                                                        연간 30만명 유전체 분석<br />
                                                        CAPA Global Top5
                                                    </p>
                                                </li>
                                                <li>
                                                    <strong><span class="counting" data-count="30">0</span>PB</strong>
                                                    <p>빅데이터 컴퓨팅 인프라</p>
                                                </li>
                                                <li>
                                                    <strong><span class="counting" data-count="700">0</span>+</strong>
                                                    <p>글로벌 임직원 수(2024)</p>
                                                </li>
                                                <li>
                                                    <strong><span class="counting" data-count="156">0</span></strong>
                                                    <p>한국인 표준 유전체 <br>완성 등 논문 발표 수</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
								<video class="bg-video" muted playsinline loop>
									<source src="/resources/video/graph_bg.mp4" type="video/mp4" />
								</video>
                            </div>
                        </section>
                        <section class="section section--global">
                            <div class="section__inner">
                                <h2 class="ir">마크로젠 글로벌 네트워크</h2>
                                <div class="main-full main-global">
                                    <div class="main-global__wrap">
                                        <h3 class="title tac">
                                            글로벌 네트워크로<br />
                                            맞춤형 서비스를 제공합니다
                                        </h3>
                                        <div class="main-global__map">
                                            <div class="main-global__btn">
                                                <ul class="main-global__btnlist">
													<li>
                                                        <button type="button" class="btn btn-default btn-default--gradclick group-button white active" data-group="0">
                                                            <span class="btn btn-default__text btn-default__text--white">All</span>
                                                        </button>
                                                    </li>
                                                    <li>
                                                        <button type="button" class="btn btn-default btn-default--gradclick group-button white" data-group="1">
                                                            <span class="btn btn-default__text btn-default__text--white">Asia</span>
                                                        </button>
                                                    </li>
                                                    <li>
                                                        <button type="button" class="btn btn-default btn-default--gradclick group-button white" data-group="2">
                                                            <span class="btn btn-default__text btn-default__text--white">Europe</span>
                                                        </button>
                                                    </li>
                                                    <li>
                                                        <button type="button" class="btn btn-default btn-default--gradclick group-button white" data-group="3">
                                                            <span class="btn btn-default__text btn-default__text--white">America</span>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="main-global__bg swiper-container">
                                                <ul class="swiper-wrapper">
                                                    <li class="swiper-slide active" data-group="0">
                                                        <img src="/resources/images/main/img_map_all.png" alt="" />
                                                    </li>
                                                    <li class="swiper-slide" data-group="1">
                                                        <img src="/resources/images/main/img_map_01.png" alt="" />
                                                    </li>
                                                    <li class="swiper-slide" data-group="2">
                                                        <img src="/resources/images/main/img_map_02.png" alt="" />
                                                    </li>
                                                    <li class="swiper-slide" data-group="3">
                                                        <img src="/resources/images/main/img_map_03.png" alt="" />
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="global-swiper">
                                            <div class="global-swiper__wrap swiper-wrapper">
												<div class="global-swiper__item swiper-slide" data-group="0"></div>
                                                <div class="global-swiper__item swiper-slide" data-group="1">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_korea_01.jpg" alt="마크로젠 강남 본사" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Korea</span>
                                                        <h4>마크로젠 강남 본사</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="1">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_korea_02.jpg" alt="마크로젠 지놈센터" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Korea</span>
                                                        <h4>마크로젠 지놈센터</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="1">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_korea_03.jpg" alt="마크로젠 송도 글로벌 캠퍼스" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Korea</span>
                                                        <h4>마크로젠 송도 글로벌 캠퍼스</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="1">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_korea_04.jpg" alt="마크로젠 세종캠퍼스" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Korea</span>
                                                        <h4>마크로젠 세종캠퍼스</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="1">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_japan_01.jpg" alt="일본 법인" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Japan</span>
                                                        <h4>일본 법인</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="1">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_singapore_01.jpg" alt="마크로젠 APAC" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Singapore</span>
                                                        <h4>마크로젠 APAC</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="2">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_netherlands_01.jpg" alt="유럽법인" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Netherlands</span>
                                                        <h4>유럽법인</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="2">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_spain_01.jpg" alt="마드리드 지놈슈퍼센터" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Spain</span>
                                                        <h4>마드리드 지놈슈퍼센터</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="2">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_italy_01.jpg" alt="밀라노 지놈슈퍼센터" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Italy</span>
                                                        <h4>밀라노 지놈슈퍼센터</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="2">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_france_01.jpg" alt="파리 지놈슈퍼센터" />
                                                    </div>
                                                    <div class="global-swiper__description" data-group="2">
                                                        <span>France</span>
                                                        <h4>파리 지놈슈퍼센터</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="2">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_poland_01.jpg" alt="슈체친 지놈슈퍼센터" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Poland</span>
                                                        <h4>슈체친 지놈슈퍼센터</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="2">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_switzerland_01.jpg" alt="바젤 지놈슈퍼센터" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Switzerland</span>
                                                        <h4>바젤 지놈슈퍼센터</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="3">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_usa_01.jpg" alt="소마젠 (Psomagen) " />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>USA</span>
                                                        <h4>소마젠 (Psomagen)</h4>
                                                    </div>
                                                </div>
                                                <div class="global-swiper__item swiper-slide" data-group="3">
                                                    <div class="global-swiper__image">
                                                        <img src="/resources/images/main/network_chile_01.jpg" alt="산티아고 지놈슈퍼센터" />
                                                    </div>
                                                    <div class="global-swiper__description">
                                                        <span>Chile</span>
                                                        <h4>산티아고 지놈슈퍼센터</h4>
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
                                <h2 class="ir">마크로젠 뉴스</h2>
                                <div class="main-news">
                                    <div class="main-news__wrap">
                                        <h3 class="title">새로운 소식</h3>
                                        <div class="main-news__partnership">
                                            <ul class="main-news__list">   
												<li>
                                                    <a href="https://www.macrogen.com/ko/newsroom/news/20000000357?pageIndex=1&searchKeyword=" class="main-news__container">
                                                        <div class="main-news__left">
                                                            <div class="main-news__content">
                                                                <div class="main-news__tag">
                                                                    <span class="main-news__category">Business</span>
                                                                </div>
                                                                <div class="main-news__top">
                                                                    <h4 class="main-news__title">
																		마크로젠, 국내 최대 규모 ‘국가 통합 바이오 빅데이터 구축 사업’ 최종 선정… “2032년까지 대한민국 100만 명 바이오 데이터 구축“
																	</h4>
                                                                </div>
                                                                <div class="main-news__bottom">
                                                                    <p class="main-news__description">
																		2024년 12월 9일 – 글로벌 유전체 분석 기업 마크로젠(대표 김창훈), 디엔에이링크, 테라젠바이오, 씨지인바이츠 공동 컨소시엄은 보건복지부와 질병관리청이 지원하고 한국생명공학연구원이 발주하는 ‘국가 통합 바이오 빅데이터 구축 사업’의 유전체 생산기관 용역과제 사업자로 최종 선정됐다.
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
                                                    <a href="https://www.macrogen.com/ko/newsroom/news/20000000356?pageIndex=1&searchKeyword=" class="main-news__container">
                                                        <div class="main-news__left">
                                                            <div class="main-news__content">
                                                                <div class="main-news__tag">
                                                                    <span class="main-news__category">Corporate</span>
                                                                </div>
                                                                <div class="main-news__top">
                                                                    <h4 class="main-news__title">
																		마크로젠, ‘세종캠퍼스’ 준공…미래형 종합 지놈센터로 도약
																	</h4>
                                                                </div>
                                                                <div class="main-news__bottom">
                                                                    <p class="main-news__description">
                                                                        2024년 12월 2일 – 글로벌 유전체 분석 기업 마크로젠(대표 김창훈)이 지난 11월 29일 세종시 세종테크밸리 내에 위치한 ‘마크로젠 세종캠퍼스’ 준공식을 개최했다고 밝혔다. 이번 준공식에는 최민호 세종시장, 정해영 국가생명연구자원정보센터장 등 주요 인사들과 관계자 70여 명이 참석했다.
                                                                    </p>

                                                                    <time class="main-news__date">2024.12.02</time>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="main-news__right">
                                                            <div class="main-news__image">
                                                                <img src="/resources/images/main/news_image02.jpg" alt="" />
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
												<li>
                                                    <a href="https://www.macrogen.com/ko/newsroom/news/20000000352?pageIndex=1&searchKeyword=" class="main-news__container">
                                                        <div class="main-news__left">
                                                            <div class="main-news__content">
                                                                <div class="main-news__tag">
                                                                    <span class="main-news__category">Business</span>
                                                                </div>
                                                                <div class="main-news__top">
                                                                    <h4 class="main-news__title">마크로젠 – 삼성전자, ‘젠톡’ 유전자검사 서비스 공식 계약 체결</h4>
                                                                </div>
                                                                <div class="main-news__bottom">
                                                                    <p class="main-news__description">
                                                                        2024년 11월 18일 – 마크로젠의 유전자/미생물검사 기반 건강관리 플랫폼 ‘젠톡(GenTok)’이 삼성 헬스 앱 내에 탑재된다. 이를 통해 삼성 헬스 사용자는 일상생활 라이프로그와 유전자검사 분석 데이터에 연동된 통합적인 개인 맞춤 건강 솔루션을 제공받게 된다.
                                                                    </p>
                                                
                                                                    <time class="main-news__date">2024.11.18</time>
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
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="section section--marquee">
                            <div class="section__inner">
                                <h2 class="ir">마크로젠 글로벌 파트너</h2>
                                <div class="main-marquee">
                                    <h3 class="title tac">
                                        글로벌 파트너와<br />
                                        마크로젠이 함께합니다
                                    </h3>
                                    <div class="main-marquee__slide">
                                        <ul>
                                            <!-- loop1 -->
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image_illumina.png" alt="Illumina" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image01.png" alt="PacBi" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image02.png" alt="ThermoFisher" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image03.png" alt="10x Genomics" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image04.png" alt="OLink" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image05.png" alt="Agilent" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image06.png" alt="Microsoft" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image07.png" alt="TWIST" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image_nanopore.png" alt="NONOPORE" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image_ug.png" alt="ULTIMA GENOMICS" />
                                                </div>
                                            </li>
                                            <!-- // loop1 -->
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image_illumina.png" alt="Illumina" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image01.png" alt="PacBi" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image02.png" alt="ThermoFisher" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image03.png" alt="10x Genomics" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image04.png" alt="OLink" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image05.png" alt="Agilent" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image06.png" alt="Microsoft" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image07.png" alt="TWIST" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image_nanopore.png" alt="NONOPORE" />
                                                </div>
                                            </li>
                                            <li>
                                                <div class="main-marquee__image">
                                                    <img src="/resources/images/main/marquee_image_ug.png" alt="ULTIMA GENOMICS" />
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
                                    <h2 class="title title--white title-small tac">
                                        도움이 필요하신가요?<br />
                                        분야별 담당자가 안내해드릴게요
                                    </h2>
                                    <div class="main-banner__button">
                                        <a href="/ko/contact-us" class="btn btn-default btn-default--gradient">
                                            <span class="btn btn-default__text">Contact Us</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <footer class="footer">
							<div class="footer__inner">
								<div class="footer__top">
									<div class="footer__title">
										<h2>
											Humanizing genomics<br />
											macrogen
										</h2>
									</div>
									<div class="footer__list">
										<div class="footer__menu">
											<strong>Macrogen</strong>
											<ul>
												<li><a href="/${rc.locale.language }/company/overview">회사소개</a></li>
												<li><a href="/${rc.locale.language }/company/global-network">글로벌 네트워크</a></li>
												<li><a href="/${rc.locale.language }/company/qualified-image">채용</a></li>
												<li><a href="/${rc.locale.language }/rnd/patent">Resource</a></li>
												<li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">R&amp;D</a></li>
											</ul>
										</div>
										<div class="footer__menu">
											<strong>Service</strong>
											<ul>
												<li><a href="/${rc.locale.language }/business/healthcare/dtc-genetic">퍼스널 헬스케어</a></li>
												<li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">반려동물 헬스케어</a></li>
												<li><a href="/${rc.locale.language }/business/research/ngs#genome">연구분석 서비스</a></li>
												<li><a href="/${rc.locale.language }/business/diagnosis/cancer#prediction">임상분석 서비스</a></li>
												<li><a href="/${rc.locale.language }/business/singlecell-multi">싱글셀 분석 서비스</a></li>
											</ul>
										</div>
										<div class="footer__menu">
											<strong>Newsroom</strong>
											<ul>
												<li><a href="/${rc.locale.language }/newsroom/news">뉴스</a></li>
												<li><a href="/${rc.locale.language }/newsroom/notice">공지사항</a></li>
											</ul>
										</div>
										<div class="footer__menu">
											<strong>IR</strong>
											<ul>
												<li><a href="/${rc.locale.language }/ir/financial">재무정보</a></li>
												<li><a href="/${rc.locale.language }/ir/announcement">공시정보</a></li>
												<li><a href="/${rc.locale.language }/ir/news">IR소식</a></li>
												<li><a href="/${rc.locale.language }/ir/investor-inquiries">투자자 문의</a></li>
											</ul>
										</div>
										<div class="footer__menu">
											<strong>ESG</strong>
											<ul>
												<li><a href="/${rc.locale.language }/company/esg-management">ESG경영</a></li>
												<li><a href="/${rc.locale.language }/company/ethical-management">윤리경영</a></li>
												<li><a href="/${rc.locale.language }/company/social-contribution">사회공헌</a></li>
												<li><a href="/${rc.locale.language }/company/greenhouse-gas">온실가스</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="footer__bottom">
									<div class="footer__etc">
										<div class="footer__site">
											<ul>
												<li>
													<a href="https://dna.macrogen.com/" target="_blank">서비스 신청</a>
												</li>
												<li class="policy">
													<a href="/${rc.locale.language }/policy/privacy">개인정보처리방침</a>
												</li>
												<li>
													<a href="/${rc.locale.language }/policy/inside">내부정보관리규정</a>
												</li>
												<li>
													<a href="/${rc.locale.language }/policy/image">영상정보처리기기 운영.관리방침</a>
												</li>
												<li>
													<a href="/${rc.locale.language }/company/sitemap">사이트맵</a>
												</li>
												<li>
													<a href="/${rc.locale.language }/contact-us">Contact us</a>
												</li>
											</ul>
										</div>
										<div class="footer__select">
											<button type="button" class="footer__button">Family site</button>
											<div class="footer__toggle">
												<div class="footer__container">
													<ul>
														<li><a href="https://gentok.net/" target="_blank">GenTok 젠톡</a></li>
														<li><a href="https://blog.naver.com/macrogen123" target="_blank">마이펫진</a></li>
														<li><a href="https://psomagen.com/" target="_blank">소마젠&#40;Psomagen&#41;</a></li>
														<li><a href="https://www.macrogen-japan.co.jp/" target="_blank">마크로젠 일본</a></li>
														<li><a href="https://www.macrogen-europe.com" target="_blank">마크로젠 유럽</a></li>
														<li><a href="https://macrogenclinical.com/macrogen/" target="_blank">마크로젠 스페인</a></li>
														<li><a href="https://www.macrogen-apac.com/" target="_blank">마크로젠 APAC</a></li>
														<li><a href="http://gmi.ac.kr/index.php" target="_blank">유전체의학연구소</a></li>
														<li><a href="http://www.g2if.org/" target="_blank">공우생명정보재단</a></li>
														<li><a href="http://www.genehealth.or.kr/" target="_blank">진헬스 건강검진센터</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="footer__info">
										<p>서울특별시 강남구 테헤란로 238 (마크로젠빌딩)</p>
										<p class="info info--tel">
											<span>대표번호</span>
											<span>02-2180-7000</span>
										</p>
										<p class="info info--exponent">
											<span>대표자</span>
											<span>김창훈</span>
										</p>
									</div>
									<div class="footer__copyright">©Macrogen, Inc. All Rights Reserved.</div>
								</div>
							</div>
							<div class="top-btn">
								<button type="button">TOP</button>
							</div>
						</footer>
                    </div>
                </section>
            </main>
        </div>
</body>
