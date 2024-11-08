<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg" style="background-image: url(/publishing/mobile-ko/dist/img/macrogen/company-overview-bg.png);">
        <header class="header header-white">
    <div class="inner">
        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
    </div>
</header>
<script>
    $(function(){
        var lastScroll = 0;
        $(window).scroll(function(){
            var st = $(this).scrollTop();
            if (st > lastScroll){
                // console.log('Down');
                $('.header').show().css({'position': 'absolute','top':'0'});
            }
            else if (st === 0) {
                // console.log('Top');
                $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
            }
            else {
                // console.log('Up');
                $('.header').show().css({'position': 'fixed','top':'0'}).removeClass('header-white');
            }
            lastScroll = st;
        });
    });
</script>

        <div class="frame">
            <h2 class="font-h4">기업개요</h2>
            <div class="font-slogan en">HUMANIZING<br/>GENOMICS</div>
            <div class="font-h7-r">인류의 건강한 미래를 만드는 기업 마크로젠입니다</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen company-overview">
            <!-- s  기업 설명 -->
            <div class="section-info">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-slogan-en">HUMANIZING<br/>GENOMICS</div>
                    <div class="font-h7">모두가 건강한 세상을 꿈꾸는 기업 마크로젠입니다</div>
                    <div class="text-box">
                        <div class="font-body-h">
                        	정밀의학 생명공학기업 마크로젠은 개개인이 타고난 유전적 특성을 정확히 알고<br/> 
							보다 건강한 삶을 준비할 수 있도록 돕는 초개인화 헬스케어 서비스를 제공합니다.<br/>
							1997년 설립 이래 국내 유전체 분석 1위를 넘어 글로벌 유전체 분석 시장을 리딩해오고 있는 마크로젠은 	전세계 모든 인류를<br/>
							대상으로 ‘DNA 몸 설계도’를 담은 ‘내 몸 사용설명서’를 제공하는 것을 목표로 합니다.
                        </div>
                    </div>
                </div>
                <div class="img-box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="inner">
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_thumb_lg.png" alt="글로벌 정밀의학 선도기업">
                        </div>
                        <!-- <ul class="list">
                            <li class="font-h7">글로벌 정밀의학 선도기업</li>
                            <li class="font-h7">인간중심의 인본주의 경영</li>
                            <li class="font-h7">빅데이터와 AI 기반의 헬스케어 솔루션</li>
                        </ul> -->
                    </div>
                </div>
            </div>
            <!-- e  기업 설명 -->

            <!-- s  기업현황 -->
            <div class="section-overview">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="box">
                        <div class="font-h7">기업현황</div>
                        <div class="year">EST 1997</div>
                        <div class="font-body-h">예측/예방의학 실현에 기여하여 건강한 미래를 만들기 위해 끊임없는 연구와 노력을 이어온 마크로젠의 도전은 계속됩니다.</div>
                    </div>
                    <div class="overview-list">
                        <ul class="row">
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_circle_1.png" alt="매출 1,300억원 규모"></span>
                                <span class="font-h4">&#36;100M</span>
                                <span class="font-body-h">매출 1,328억원 규모¹</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_circle_2.png" alt="해외매출 비중"></span>
                                <span class="font-h4">48&#37;</span>
                                <span class="font-body-h">해외매출 비중¹</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_circle_6.png" alt="1만 8천여 고객"></span>
                                <span class="font-h4"><span class="ko">전세계</span> 153<span class="ko">개국</span></span>
                                <span class="font-body-h">1만 8천여 고객</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_circle_8.png" alt="글로벌 임직원 수"></span>
                                <span class="font-h4">750&#43;</span>
                                <span class="font-body-h">글로벌 임직원 수²</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_circle_5.png" alt="국내 유전체 분석 시장점유율 1위"></span>
                                <span class="font-h4">No.1</span>
                                <span class="font-body-h">국내 유전체 분석<br> 시장점유율 1위</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_circle_3.png" alt="연간 30만명 유전체 분석 CAPA"></span>
                                <span class="font-h4">Global TOP5</span></span>
                                <span class="font-body-h">연간 30만명<br> 유전체 분석 CAPA</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_circle_4.png" alt="빅데이터 컴퓨팅 인프라"></span>
                                <span class="font-h4">30PB</span>
                                <span class="font-body-h">빅데이터 컴퓨팅<br> 인프라</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_circle_7.png" alt="한국인 표준 유전체 완성 등 논문 발표 수"></span>
                                <span class="font-h4">148</span>
                                <span class="font-body-h">한국인 유전체<br> 완성 등 논문 발표 수³</span>
                            </li>
                        </ul>
                        <hr class="divider">
                        <div class="footnote">
	                        1) 2023년 연결 기준<br>
							2) 2023년 12월 기준<br>
							3) Nature 본지/자매지, SCI급 논문  발표수 
						</div>
                    </div>
                </div>
            </div>
            <!-- e  기업현황 -->

            <!-- s  사업분야 -->
            <div class="section-business">
                <div class="swiper-container _slider" data-aos="fade-up" data-aos-duration="2000">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="inner">
                                <div class="font-h7">사업영역</div>
                                <div class="font-h3">건강관리 플랫폼</div>
                                <div class="font-body-h">젠톡은 보다 건강한 삶을 위한 초개인화 헬스케어 서비스를 제공합니다. 젠톡 앱을 통해 유전자 검사 신청에서 분석 결과 확인, 건강 팁까지 다양한 서비스를 경험하고 나만의 건강 루틴을 만들어보세요.</div>
                                <!-- <div class="category-list">
                                    <ul class="row">
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-biology3.svg" alt="개인유전체분석"></div>
                                            <div class="tit">개인유전체분석</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-microbiology.svg" alt="마이크로바이옴 분석"></div>
                                            <div class="tit">마이크로바이옴 <br/> 분석</div>
                                        </li>
                                    </ul>
                                </div> -->
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="inner">
                                <div class="font-h7">사업영역</div>
                                <div class="font-h3">연구서비스</div>
                                <div class="font-body-h">글로벌 유전체 분석기술의 성장을 위한 다양한 연구 서비스를 제공합니다.<br>
                                    마크로젠만의 연구결과로 축척된 빅데이터와 고도화된  AI 분석으로 새로운 인류 건강의 역사를 만들어 가고 있습니다.</div>
                                <div class="category-list">
                                    <ul class="row">
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-atom.svg" alt="NGS"></div>
                                            <div class="tit">NGS</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-molecule.svg" alt="CES"></div>
                                            <div class="tit">CES</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-molecule2.svg" alt="OlIGO"></div>
                                            <div class="tit">OLIGO</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-chip.svg" alt="MICROARRAY"></div>
                                            <div class="tit">MICROARRAY</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-rat.svg" alt="GEM"></div>
                                            <div class="tit">GEM</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-laptop.svg" alt="BIOINFORMATICS"></div>
                                            <div class="tit">BIOINFORMATICS</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="inner">
                                <div class="font-h7">사업영역</div>
                                <div class="font-h3">임상진단/치료</div>
                                <div class="font-body-h">
                                    78억 인류의 건강한 내일을 위한 다양한 임상진단 및 치료를 위한 정보를 제공합니다. <br/>
                                    단순한 치료만의 목적이 아닌 질병의 예측과 원인 분석이 가능하도록 체계적인 임상진단 시스템을 구축하고 있습니다.
                                </div>
                                <div class="category-list">
                                    <ul class="row">
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-biology.svg" alt="암유전체검사"></div>
                                            <div class="tit">암유전체검사</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-embryo1.svg" alt="태아 및 희귀질환 검사"></div>
                                            <div class="tit">태아 및 <br/>희귀질환 검사</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-biology2.svg" alt="COVID-19"></div>
                                            <div class="tit">COVID-19</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="inner">
                                <div class="font-h7">사업영역</div>
                                <div class="font-h3">퍼스널 헬스케어 및<br/>반려동물</div>
                                <div class="font-body-h">마크로젠의 연구로 구축된 빅데이터와 AI 분석을 기반으로
                                    DNA 특성에 맞는 개인 맞춤형 헬스케어서비스와 소중한 반려동물의 건강 관리 솔루션을 제공합니다.</div>
                                <div class="category-list">
                                    <ul class="row">
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-biology3.svg" alt="개인유전체분석"></div>
                                            <div class="tit">개인유전체분석</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-microbiology.svg" alt="마이크로바이옴 분석"></div>
                                            <div class="tit">마이크로바이옴 <br/> 분석</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/ic-dog-leash.svg" alt="반려동물 유전자 분석"></div>
                                            <div class="tit">반려동물  <br/>유전자 분석</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pagination-wrap">
                        <ul class="navigation">
                            <li class="page-item prev">
                                <a class="page-link _slidePrev" href="#">
                                    <span class="sr-only">이전</span>
                                </a>
                            </li>
                            <li class="page-item next">
                                <a class="page-link _slideNext" href="#">
                                    <span class="sr-only">다음</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <script>
            var swiper = new Swiper("._slider", {
                slidesPerView: "auto",
                spaceBetween: 0,
                centeredSlides: false,
                watchActiveIndex: true,
                slideToClickedSlide: true,
                pagination: {
                    el: "._slider .swiper-pagination",
                    clickable : true,
                },
                navigation: {
                    nextEl: "._slideNext",
                    prevEl: "._slidePrev",
                },
            });
        </script>
            <!-- e  사업분야 -->

            <!-- s  사업분야 상세 -->
            <div class="section-business-detail">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="item item-1">
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_thumb_3.png" alt="개인 유전체">
                            <span class="title-sm">Personal Healthcare</span>
                            <span class="title">퍼스널 헬스케어</span>
                        </div>
                        <div class="desc">일반인 대상</div>
                        <div class="desc-sm">마크로젠에서는 유전자 검사 기반의 헬스케어 플랫폼 &#39;젠톡(GenTok)&#39;을 통해 고객의 삶에 더욱 실질적이고 효과적인 건강관리 방법을 제시합니다&#46; 젠톡은 개개인의 필요와 목적에 따라 유전자 검사 항목의 구매가 가능한 것이 특징으로&#44; 탈모관리 패키지&#44; 운동맞춤 방지 패키지 등의 유전자검사 서비스를 제공합니다&#46;</div>
                    </div>
                    <div class="item item-2">
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_thumb_1.png" alt="RESEARCH">
                            <span class="title-sm">Research Sequencing</span>
                            <span class="title">연구서비스</span>
                        </div>
                        <div class="desc">정부기관, 대학교, 연구소 등</div>
                        <div class="desc-sm">마크로젠의 핵심 사업으로, 해당 분야에서는 염기서열 분석(NGS, CES), 바이오칩 분석(Microarray), 올리고 합성(Oligo), 유전자 변형 마우스(GEM), 바이오인포매틱스(Bioinformatics) 등 생명공학 및 임상 연구에 필요한 다양한 서비스를 제공합니다.</div>
                    </div>
                    <div class="item item-3">
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_thumb_2.png" alt="임상진단">
                            <span class="title-sm">Clinical Diagnostics &#38; Treatments</span>
                            <span class="title">임상진단/치료</span>
                        </div>
                        <div class="desc">환자 및 의료진 대상</div>
                        <div class="desc-sm">정밀의학 실현을 위해 마크로젠이 적극적으로 투자와 연구개발을 추진 중인 분야입니다. 암 유전체 검사, 약물 유전체 분석, 임상시험검체분석(GCLP) 등 개인 맞춤형 진단과 치료, 건강관리 방법 제시에 주력하고 있습니다.</div>
                    </div>
                    <div class="item item-4">
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/macrogen/macrogen_thumb_4.png" alt="응용">
                            <span class="title-sm">Companion Animals</span>
                            <span class="title">반려동물</span>
                        </div>
                        <div class="desc">반려동물 대상</div>
                        <div class="desc-sm">반려동물을 위한 유전자 검사 서비스(myPETGENE&#8482;)를 제공합니다. 이외에도 마크로젠은 Human에서 Non-human에 이르기까지 모든 생물의 유전체 정보를 분석합니다.</div>
                    </div>
                </div>
            </div>
            <!-- e  사업분야 상세-->

            <!-- s  CI-->
            <div class="section-ci">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title-sm">CI</div>
                    <div class="text">인류의 건강한 삶을<br/> 소망하는 마크로젠의<br/> 상징입니다</div>
                </div>
            </div>
            <!-- e  CI -->

            <!-- s  기업상징  -->
            <div class="section-symbol">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="item">
                        <div class="title">마크로젠 CI</div>
                        <div class="desc">
                            <div class="bg-logo"><span class="sr-only">macrogen</span></div>
                            <div class="content">
                                마크로젠은 Macroscopic Phenotype of Gene의 줄임말로 유전자가 생체 내에서 보여주는 거시적인 현상 또는 표현형을 연구하는 회사임을 뜻합니다.<br/><br/>
                                유전체와 사람이 하나가 된 모습을 형상화하였으며 개인 유전체 정보에 기반한 맞춤의학 실현을 통해 인류의 건강한 삶을 소망하는 마크로젠의 슬로건  Humanizing Genomics을 표현하였습니다.
                            </div>
                        </div>
                    </div>
                    <div class="item">
                       <!-- <div class="title">COLOR SYSTEM</div> -->
                        <div class="desc">
                            <ul class="row color-list">
                                <li class="col col-6">
                                    <div class="color color-1"></div>
                                    <div class="value">
                                        <span>RGB</span>
                                        <span>0  30  98</span>
                                    </div>
                                    <div class="value">
                                        <span>CMYK</span>
                                        <span>100  80  0  50</span>
                                    </div>
                                    <div class="value">
                                        <span>HEX</span>
                                        <span>001E62</span>
                                    </div>
                                </li>
                                <li class="col col-6">
                                    <div class="color color-2"></div>
                                    <div class="value">
                                        <span>RGB</span>
                                        <span>0  191  178</span>
                                    </div>
                                    <div class="value">
                                        <span>CMYK</span>
                                        <span>80  0  40  0</span>
                                    </div>
                                    <div class="value">
                                        <span>HEX</span>
                                        <span>00BFB2</span>
                                    </div>
                                </li>
                                <li class="col col-6">
                                    <div class="color color-3"></div>
                                    <div class="value">
                                        <span>RGB</span>
                                        <span>132  189  0</span>
                                    </div>
                                    <div class="value">
                                        <span>CMYK</span>
                                        <span>50  0  100  0</span>
                                    </div>
                                    <div class="value">
                                        <span>HEX</span>
                                        <span>84BD00</span>
                                    </div>
                                </li>
                                <li class="col col-6">
                                    <div class="color color-4"></div>
                                    <div class="value">
                                        <span>RGB</span>
                                        <span>224  0  77</span>
                                    </div>
                                    <div class="value">
                                        <span>CMYK</span>
                                        <span>0  100  50  0</span>
                                    </div>
                                    <div class="value">
                                        <span>HEX</span>
                                        <span>E0004D</span>
                                    </div>
                                </li>
                            </ul>
                            <div class="download-area">
                                <a href="/download/filename/macrogen_CI_기본형.ai" target="_blank" class="btn btn-light btn-round"><span>CI Download</span><i class="icon ico-download-black"></i></a>
                               <!-- <a href="/download/filename/e브로셔_최종본_220106.pdf" target="_blank" class="btn btn-light btn-round"><span>Brochure Download</span><i class="icon ico-download-black"></i></a>  -->
                            </div>
                        </div>
                    </div>
                    <!-- <div class="item">		2023.02.03 회사소개서 주석
                        <div class="title">마크로젠 회사소개서</div>
                        <div class="desc">
                            <div class="brochure_img"><span class="sr-only">digital brochure</span></div>
                            <div class="download-area">
                                <a href="/downfile/e_brochure_ko_230110_compressed.pdf" target="_blank" class="btn btn-light btn-round"><span>국문 PDF</span><i class="icon ico-download-black"></i></a>
                                <a href="/downfile/e_brochure_en_230110_compressed.pdf" target="_blank" class="btn btn-light btn-round"><span>영문 PDF</span><i class="icon ico-download-black"></i></a>
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>
            <!-- e  기업상징 -->
        </div>
    </div>

</body>
