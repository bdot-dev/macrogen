<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<script src="/publishing/pc-ko/dist//js/jquery-ui.min.js"></script>
</head>
<body>

<div class="wrap main-wrap">


    <div class="full-bg main-bg">

        <header class="header header-bg-white header-main" id="header">
			<c:import url="/inc/header-inner-gnb" />
        </header>
        <script>
            var gnb2depth = $('#gnb2Depth .box')
            let gnbIndex = $('#gnb li')

            $('#gnb li').mouseover(function () {
                $('.header-main').css('background','#fff');
                $(this).parents('#header').addClass('header-bg-white')
                gnbIndex.removeClass('active');
                $(this).addClass('active');
                gnb2depth.removeClass('active');
                let idx = $(this).index();
                gnb2depth.eq(idx).addClass('active');
                $('#gnb2Depth').css({
                    borderBottom:"1px solid #e9e9e9",
                    borderTop:"1px solid #e9e9e9"
                })
            });

            gnb2depth.mouseover(function () {
                gnbIndex.removeClass('active');
                let idx = $(this).index();
                gnbIndex.eq(idx).addClass('active');

            });

            $('#header').on({
                "mouseleave focusout" : function () {
                    gnb2depth.removeClass('active')
                    gnbIndex.removeClass('active')
                    $('.header-main').css('background','none');
                    $('#gnb2Depth').css('border','none')
                    if ($('html').is('.animated')) {
                        $('#header').removeClass('header-bg-white')
                    }
                }
            })
        </script>

        <!-- s intro -->
        <div class="intro">
            <div class="box">
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="2000">유전체 맞춤 의학으로</p>
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="2400">
                    <img src="/publishing/pc-ko/dist/img/main/txt-intro.png" alt="78억 인류와 세상을 향합니다."></p>
            </div>
        </div>
        <!-- e intro -->

        <!-- s 메인비주얼 영역 -->
        <div class="swiper-container" id="key-swiper-container">
            <div class="swiper-wrapper" id="key-swiper-wrapper">
                <div class="swiper-slide visual_01">
                    <div class="text-box" data-aos="fade-down" data-aos-duration="800" data-aos-delay="2000">
                        <p class="text-gradient"><img src="/publishing/pc-ko/dist/img/main/txt-main_01.png" alt="유전체 분석기술의"></p>
                        <p class="slogan-sub">글로벌 리더</p>
                        <p class="desc">독보적 유전체 분석 기술로<br>인류의 건강한 미래를 선도합니다.</p>
                    </div>
                </div>
                <div class="swiper-slide visual_02">
                    <div class="text-box">
                        <p class="text-gradient"><img src="/publishing/pc-ko/dist/img/main/txt-main_02.png" alt="빅데이터 ai기반"></p>
                        <p class="slogan-sub">정밀맞춤의학</p>
                        <p class="desc">인공지능을 통해 분석된 빅데이터를  기반으로<br>미래 정밀맞춤의학의 시대를 만들어갑니다</p>
                    </div>
                </div>
                <div class="swiper-slide visual_03">
                    <div class="text-box">
                        <p class="text-gradient"><img src="/publishing/pc-ko/dist/img/main/txt-main_03.png" alt="희망과 함께하는"></p>
                        <p class="slogan-sub">건강한 미래</p>
                        <p class="desc">마크로젠은 인류의 건강을 위한<br>내 몸 설계도로 새로운 미래를 열어갑니다</p>
                    </div>
                </div>
                <div class="swiper-slide visual_04">
                    <div class="text-box phrase">
                        <p>DNA가 세상을 구할 것이다<br>나의 DNA에는 과거와 미래가 공존한다</p>
                        <span class="name">마크로젠 창립자/회장<span>서정선</span></span>
                    </div>
                </div>
            </div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

            <!-- If we need pagination -->
            <div class="swiper-pagination" id="key-swiper-pagination"></div>

            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev swiper_btn"></div>
            <div class="swiper-button-next swiper_btn"></div>
        </div>
        <script>
            var $container = $('#key-swiper-container');
            var $wrapper = $('#key-swiper-wrapper');
            var $pagination = $('#key-swiper-pagination');
            var delay = 5000;
            var mainSwiper;
            setTimeout(function () {
                step1();
            }, delay)

            function step1() {
                $wrapper.css({
                    'transform': 'translateY(0)',
                    'transition-duration': '1s'
                })
                $('.bg-DNA').addClass('DNA-move')
                $wrapper.animate({
                    height: "100%"
                }, 1000, function () {
                    $('.swiper-wrapper').css({'overflow': 'visible'})
                    $pagination.show()
                    setSlider()

                    $('html').addClass('animated')
                })
            }

            function step2() {
                //after 기능
                $('.header')
                    .addClass('header-main')
                    .removeClass('header-bg-white')
                $wrapper.css({'overflow': 'visible'})
                $container.css({'overflow': 'hidden'})
                $('.text-box').fadeIn()
                $('.scroll-wrap').delay(1000).fadeIn()
                $('.swiper_btn').delay(1000).fadeIn()
                $('.stock_information').delay(1500).fadeIn()
            }

            function setSlider() {
                if (mainSwiper !== undefined) {
                    console.log('mainSwiper');
                    return false
                }
                console.log('setSlider');
                mainSwiper = new Swiper($container, {
                    loop: true, //반복
                    speed: 1200,//속도
                    autoplay: {
                        delay: 3500,
                        waitForTransition: true,
                        disableOnInteraction: false,
                    },
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },
                    pagination: {
                        el: $pagination,
                        clickable: true,

                           renderBullet: function (index, className) {
                               var bu = '<span class="' + className + '">' + '<svg class="fp-arc-loader" width="50" height="50">' +
                               '<circle class="path" cx="50%" cy="50%" r="23" fill="none"  stroke="#FFF"' +
                               'stroke-opacity="1" stroke-width="1px"></circle>' +
                               '<circle cx="50%" cy="50%" r="5" fill="#FFF"></circle>' +
                               '</svg></span>';
                        return bu;

                        },
                    },
                })

                step2()
            }
        </script>

        <div class="bg-DNA"></div>


        <!-- e 메인비주얼 영역 -->

        <!-- s 주가 영역 -->
        <%--
        <div class="stock_information">

            <span class="close_btn"></span>
            <div class="stock_cont">
                <div class="stock_box">
                    <p class="title">Stock Information</p>
                    <div class="content"></div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $(".stock_information .close_btn").on('click', function () {
                    if ($(this).next().hasClass('active') == true) {
                        $(this).removeClass('active')
                        $(this).next().removeClass('active')
                        $(this).parents('body').css("overflow-y", "auto")

                    } else {
                        $(this).addClass('active')
                        $(this).next().addClass('active')
                        $(this).parents('body').css("overflow-y", " hidden")
                    }
                })
            })
        </script>
         --%>
        <!-- e 주가 영역 -->
    </div>


    <div class="container container-fluid">
        <div class="main-page company-define">
            <!-- s  바로가기 -->
            <div class="section-define">
                <div class="info-box">
                    <div class="title">
                        <span data-aos="fade-up" data-aos-duration="600">Humanizing</span>
                        <span data-aos="fade-up" data-aos-duration="600" data-aos-delay="200">Genomics</span>
                    </div>
                    <div class="text-box">
                        <div class="text">
                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="400">인간의 유전체 정보 및 데이터 분석 기술을
                                바탕으로</p>
                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="550">환자 개개인의 유전적 특성에 따른
                                맞춤의학으로 세계를 이끄는</p>
                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="700">생명공학기업 마크로젠 입니다</p>
                        </div>
                        <a href="/${rc.locale.language }/company/overview" class="btn btn-text" data-aos="fade-up" data-aos-duration="900"
                           data-aos-delay="1000"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a>
                    </div>
                </div>
                <div class="shortcuts-box" data-aos="fade-up" data-aos-duration="500">
                    <ul class="btn-list clearfix">
                        <li>
                            <a href="/${rc.locale.language }/company/overview">
                                <p>기업개요</p>
                                <p class="sub-text">대한민국 바이오 벤처 대표기업<br>마크로젠 입니다</p>
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/${rc.locale.language }/company/global-network">
                                <p>글로벌 마크로젠</p>
                                <p class="sub-text">유전체  분석 연구를 이끄는<br>글로벌 파트너와 함께 합니다</p>
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/${rc.locale.language }/company/esg-management">
                                <p>ESG</p>
                                <p class="sub-text">인류의 건강한 미래가<br>지속가능한 세계를 만들어갑니다</p>
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                    </ul>
                    <div class="bg_section bg0"></div>
                    <div class="bg_section bg1 active"></div>
                    <div class="bg_section bg2"></div>
                    <div class="bg_section bg3"></div>
                    <script>
                        var currentIdx = 1;
                        $('.shortcuts-box .btn-list li').mouseover(function () {
                            var index = $(this).index() + 1;
                            console.log(index)

                            if (index !== currentIdx) {
                                console.log('wun')
                                $('.bg_section').eq(index).addClass('active')
                                    .siblings().removeClass('active')


                                currentIdx = index
                            }
                        });
                    </script>
                </div>
            </div>
            <!-- e  바로가기 -->

            <!-- s  business slide -->
            <div class="section-business">
                <div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="500">Our Business</div>
                    <div class="desc">
                        <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">유전체 정보, 의료 정보 및 생활 정보 통합
                            빅데이터를 구축하고 질병을 예측하여<br>
                            미래의학을 혁신하는 글로벌 정밀의학 선도기업으로서 인간 유전체 연구로 인류의 건강과 행복에 이바지합니다</p>
                    </div>
                </div>
                <div class="business" data-aos="fade-left" data-aos-duration="500" data-aos-delay="200" >
    <div class="slider">
        <div class="swiper-container _businessSlider">
            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background: url(/publishing/pc-ko/dist/img/main/img-business_01.png) no-repeat center center / cover">
                    <div class="text-area">
                            <div class="title">
                                <span>퍼스널 헬스케어</span><a href="/ko/business/healthcare/personal-genetic">
                                    <span class="btn btn-circle btn-white btn-md">
                                        <i class="icon icon-arrow-right-short"></i>
                                    </span>
                                </a>
                            </div>
                            <div class="desc">
                                유전자 특성에 따라 건강관리에 도움을 주는<br/>
                                개인 맞춤형 헬스케어 솔루션입니다
                            </div>
                    </div>
                </div>
                <%--
                <div class="swiper-slide" style="background: url(/publishing/pc-ko/dist/img/main/img-business_02.png) no-repeat center center / cover">
                    <div class="text-area">
                        <div class="title">
                            <span>더바이옴</span><a href="/ko/business/healthcare/intestinal-microbiome">
                             <span class="btn btn-circle btn-white btn-md">
                                 <i class="icon icon-arrow-right-short"></i>
                             </span>
                            </a>
                        </div>
                        <div class="desc">
                            마이크로바이옴을 분석하여<br/>
                            나에게 가장 잘 맞는 맞춤형 솔루션을 제공합니다
                        </div>
                    </div>
                </div>
                 --%>
                <div class="swiper-slide" style="background: url(/publishing/pc-ko/dist/img/main/img-business_03.png) no-repeat center center / cover">
                    <div class="text-area">
                        <div class="title">
                            <span>임상진단/치료</span><a href="/ko/business/diagnosis/cancer">
                             <span class="btn btn-circle btn-white btn-md">
                                 <i class="icon icon-arrow-right-short"></i>
                             </span>
	                        </a>
                        </div>
                        <div class="desc">
                            COVID19, 암 유전체 검사 등 질병 발생원인 연구로<br/>
                            맞춤치료에 도움이 될 수 있습니다
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-ko/dist/img/main/img-business_04.png) no-repeat center center / cover">
                    <div class="text-area">
                        <div class="title">
                            <span>반려동물</span><a href="/ko/business/healthcare/pet-genetic">
                             <span class="btn btn-circle btn-white btn-md">
                                 <i class="icon icon-arrow-right-short"></i>
                             </span>
                            </a>
                        </div>
                        <div class="desc">
                            소중한 가족인 반려동물의 건강한 삶을 위해<br/>
                            유전질환예측, 질병 예방 등 맞춤 관리 솔루션을 제공합니다
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-ko/dist/img/main/img-business_05.png) no-repeat center center / cover">
                    <div  class="text-area" data-aos="fade-left" data-aos-duration="500">
                        <div class="title">
                            <span>연구서비스</span><a href="/ko/business/research/ngs">
                             <span class="btn btn-circle btn-white btn-md">
                                 <i class="icon icon-arrow-right-short"></i>
                             </span>
                            </a>
                        </div>
                        <div class="desc">
                            글로벌 스탠다드 인프라 기반의<br/>
                            빠른 염기서열 분석 연구데이터로 경쟁력을 갖추고 있습니다
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <script>
        $(document).ready(function (){
            /*slide 영역*/
             new Swiper ("._businessSlider", {
                slidesPerView: "auto",
                centeredSlides: true,
                loop: true,
                spaceBetween: 20,
            });

        })
    </script>
</div>

            </div>
            <!-- e  s  business slide -->

            <!-- s  news -->
            <c:if test="${ fn:length(newsList) gt 0 }">
	            <div class="section-news">
	                <div class="info-box" data-aos="fade-up" data-aos-duration="500">
	                    <div class="title">News</div>
	                    <div class="desc">전세계 모든 인류가 건강한 세상을 꿈꾸는<br>마크로젠의 새로운 소식을 알려드립니다</div>
	                </div>
	                <div class="board">
	                    <div class="list list-border hover">
	                    	<c:forEach var="result" items="${ newsList }" varStatus="status">
		                        <div class="item" data-aos="fade-up" data-aos-duration="500" data-aos-delay="100">
		                            <span class="date"><span class="day"><fmt:formatDate value="${result.registDt }" pattern="dd" />.</span><fmt:formatDate value="${result.registDt }" pattern="yyyy.MM" /></span>
		                            <a href="/${rc.locale.language }/newsroom/news/${result.nttSn}" class="tit">${ result.nttSj }</a>
		                            <a href="/${rc.locale.language }/newsroom/news/${result.nttSn}" class="arrow"><i class="icon icon-arrow-right-short"></i></a>
		                        </div>
	                    	</c:forEach>
	                    </div>
	                    <a href="/${rc.locale.language }/newsroom/news" class="btn btn-text" data-aos="fade-up" data-aos-duration="1000"
	                       data-aos-delay="500"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a>
	                </div>
	                <div class="video-box" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
	                    <div class="info-box">
	                        <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">#Macrogen TV</div>
	                        <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">마크로젠의 새로운 소식을 영상으로 만나보세요</div>
	                        <a href="https://www.youtube.com/channel/UCT1qyaOiPM7syCEC_T8jmTw" target="_blank" class="btn btn-white btn-round btn_play" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500"><i class="icon icon_youtube"></i><span>마크로젠 유튜브채널</span><i class="icon icon-arrow-right-short"></i></a>
	                    </div>
	                    <!-- <a href="#" class="btn btn-text" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500"><span>MORE</span><i class="icon icon-arrow-right-long-white"></i></a> -->
	                </div>
	            </div>
            </c:if>
            <!-- e  news -->

            <!-- s  media -->
            <div class="section-media">
                <div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="1000">Social Media </div>
                    <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">다양한 채널을 통해 마크로젠의
                        소식을 만나실 수 있습니다
                    </div>
                </div>
                <div class="media" data-aos="fade-left" data-aos-duration="800" data-aos-delay="400">
    <div class="slider">
        <div class="slider-navigation">
            <a href="#" class="btn btn-circle btn-white btn-sm _btnPrev"><i class="icon icon-arrow-left-sm"></i></a>
            <a href="#" class="btn btn-circle btn-white btn-sm _btnNext"><i class="icon icon-arrow-right-sm"></i></a>
        </div>
        <div class="swiper-container _mediaSlider">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="https://youtu.be/2BHy_3FxjUk" target="_blank">
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/main/img-media_01.png" alt="물만 마셔도 살찌는 유전자가 있을까?">
                            <span class="sns">Youtube</span>
                        </div>
                        <div class="content">물만 마셔도 살이 찐다구?! 체중이 변하는 이유가 나의 유전자와 관련이 있다는 사실! 알고계셨나요? 유.잘.알 마크로젠 전문가들이
                            확실히 알려드립니다.
                        </div>
                        <div class="date">2021.09.09</div>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="https://blog.naver.com/macrogen_official/222481324813" target="_blank">
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/main/img-media_02.png" alt="미래의학의 새로운 패러다임 정밀의학의 모든 것">
                            <span class="sns">blog</span>
                        </div>
                        <div class="content">유전체 데이터로 질병 극복을 꿈꾸는 미래, 정밀의학! 질병 예측 및 예방, 맞춤 진단, 치료를 제공하는 미래의학의 새로운 패러다임,
                            정밀의학에 대해 알아보아요.
                        </div>
                        <div class="date">2021.08.23</div>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="https://blog.naver.com/macrogen_official/222462577508" target="_blank">
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/main/img-media_03.png" alt="함께하는 건강한 세상 ESG경영으로 실천합니다">
                            <span class="sns">blog</span>
                        </div>
                        <div class="content">환경보호, 사회적 책임 그리고 투명한 지배구조로 마크로젠이 실천하고 있는 ESG 경영 활동 내역을 소개합니다.</div>
                        <div class="date">2021.08.09</div>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="https://youtu.be/1GxtiISWwTg" target="_blank">
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/main/img-media_04.png" alt="마크로젠 NGS 영업부문 인터뷰">
                            <span class="sns">Youtube</span></div>
                        <div class="content">유전체 분석 기업 직원들은 어떻게 일할까?<br>마크로젠 직원들의 찐(gene) 이야기! 유튜브 마크로젠 채널의 찐톡에서 만나보세요.
                        </div>
                        <div class="date">2021.07.29</div>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="https://www.facebook.com/macrogenkr/posts/4139457679509293" target="_blank">
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/main/img-media_05.png" alt="장미남 / 장미녀 체크리스트">
                            <span class="sns">Facebook</span>
                        </div>
                        <div class="content">오늘의 장은 안녕하신가요?<br>생활 습관과 장의 건강상태를 체크해보세요. 장 건강이우리 몸 건강의 시작이랍니다.</div>
                        <div class="date">2021.07.22</div>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="https://www.facebook.com/macrogenkr/posts/4081205675334494" target="_blank">
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/main/img-media_06.png" alt="반려동물에게도 발생할 수 있는 유전질환, 미리 알아보고 예방할 수 있는 방법">
                            <span class="sns">Facebook</span>
                        </div>
                        <div class="content">반려동물에게도 발생할 수 있는 유전질환, 미리 알아보고 예방할 수 있다면 좋겠죠. 마크로젠이 견종별, 묘종별 주의해야 할 유전질환의
                            종류를 알려드릴게요!
                        </div>
                        <div class="date">2021.07.21</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <script>
        new Swiper("._mediaSlider", {
            slidesPerView: "auto",
            spaceBetween: 40,
            slidesPerGroup: 3,
            grabCursor: true,
            navigation: {
                nextEl: "._btnNext",
                prevEl: "._btnPrev",
            },
        });
    </script>
</div>

            </div>
            <!-- e  media -->

            <!-- s  global map -->
            <div class="section-map" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <div class="inner">
                    <div class="info-box">
                        <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Global Network</div>
                        <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                            국내 지사를 포함하여 세계 각지의 글로벌 네트워크를 통해<br/>현지 고객의 다양한 요구에 부합하는 맞춤형 서비스를 더욱 신속하고 체계적으로 제공합니다
                        </div>
                    </div>
                    <div class="map">
                        <a class="pin amsterdam" href="#"><i></i><span>Amsterdam, The Netherlands</span></a>
                        <a class="pin seoul" href="#"><i></i><span>Seoul, Korea</span></a>
                        <a class="pin boston" href="#"><i></i><span>Boston, USA</span></a>
                        <a class="pin tokyo" href="#"><i></i><span>Tokyo, japan</span></a>
                        <a class="pin virginia" href="#"><i></i><span>Virginia, USA</span></a>
                        <a class="pin madrid" href="#"><i></i><span>Madrid, Spain</span></a>
                        <a class="pin kyoto" href="#"><i></i><span>Kyoto, japan</span></a>
                        <a class="pin newyork" href="#"><i></i><span>New york, USA</span></a>
                        <a class="pin synapse" href="#"><i></i><span>Synapse, Singapore</span></a>
                        <a class="pin rockville" href="#"><i></i><span>Rockville, USA</span></a>
                    </div>
                    <script>
                        $('.pin').on('click', function () {
                                $(this).addClass('active')
                                    .siblings().removeClass('active')
                        })
                    </script>
                </div>
            </div>
            <!-- e  global map -->


        </div>
    </div>
    <footer class="footer">
		<c:import url="/inc/footer" />
    </footer>
    <a href="#" class="btn btn-text btn-totop">
    <i class="icon icon-arrow-top-long"></i>
    <span>TOP</span>
</a>

<script>
    $(document).ready(function(){
        $('.btn-totop').click(function(){
            $('html,body').animate( { scrollTop:0 },{duration : 100});
            return false;
        });
        $(window).on('scroll', function (){
            var scrollTop = $(window).scrollTop()
            if (scrollTop > 150) {
                $('.btn-totop').css({'opacity' : 1})
            } else {
                $('.btn-totop').css({'opacity' : 0})
            }
        })
    });
</script>

</div>

<%-- 팝업 --%>
<c:if test="${not empty popupVo  }">
	<div class="modal" tabindex="-1" id="layerPopup" data-bs-backdrop="static">
	    <div class="modal-dialog modal-dialog-centered layer-modal">
	        <div class="modal-content">
	            <div class="modal-header">
	                <div class="blue-circle">
	                    <i class="icon icon-union"></i>
	                </div>
	            </div>
	            <div class="modal-body">
	                <%-- <p class="title">${popupVo.popupNm }</p>
	                <p class="desc">마크로젠은 핵심 기술력과 글로벌 네트워크를 바탕으로
	                    <br>2020년 창사 이래 최대 실적을 거뒀습니다.
	                    ‘매출액 또는 손익구조 30% 이상 변동 공시’ 를 통해 2020년 연결
	                    <br>재무제표 기준 매출 1,126억 원, 영업이익 72억 원, 당기순이익
	                    <br>908억 원을 달성했습니다.
	                </p>
	                <div class="btn-area">
	                    <a class="btn btn-sm btn-white" href="#">버튼 1</a>
	                    <a class="btn btn-sm btn-white" href="#">버튼 2</a>
	                </div> --%>
	            </div>
	            <div class="modal-footer">
	                <div class="form-check">
	                    <input class="form-check-input" type="checkbox" id="popup-sn"
	                    	value="${ popupVo.popupSn }" >
	                    <label class="form-check-label" for="popup-sn">오늘 하루 이 창 열지 않기</label>
	                </div>
	                <div class="close-box" data-bs-dismiss="modal" aria-label="Close">
	                    <span>Close</span>
	                    <i class="icon ico-close-white"></i>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<script>
	    var layerPopupModal = new bootstrap.Modal(document.getElementById('layerPopup'))
	    layerPopupModal.show();
	</script>
	<script>
		$(function() {
			var $btnPopupClose = $('#layerPopup .close-box');
			var $chkPopupSn = $('#layerPopup #popup-sn');
			$btnPopupClose.on('click', function() {
				if ($chkPopupSn.is(':checked')) {
					var sn = $chkPopupSn.val();
					if (!sn) return;

					var snListStr = $.cookie('popup-sn-list');
					if (!snListStr) {
						snListStr = sn;
					} else if (snListStr.indexOf(sn) < 0) {
						snListStr += ',' + sn;
					}
					$.cookie('popup-sn-list', snListStr, { expires: 1, path: '/'});
				}
				layerPopupModal.hide();
			});
		});
	</script>

</c:if>

</body>
