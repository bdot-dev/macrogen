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
                gnb2depth.removeClass('active').css('border','1px solid #e9e9e9');
                let idx = $(this).index();
                gnb2depth.eq(idx).addClass('active');
            });

            gnb2depth.mouseover(function () {
                gnbIndex.removeClass('active');
                let idx = $(this).index();
                gnbIndex.eq(idx).addClass('active');
            });

            $('#header').on({
                "mouseleave focusout" : function () {
                    $('.header-main').css('background','none');
                    gnb2depth.removeClass('active')
                    gnbIndex.removeClass('active')

                    if ($('html').is('.animated')) {
                        $('#header').removeClass('header-bg-white')
                    }
                }
            })
        </script>

        <!-- s intro -->
        <div class="intro">
            <div class="box">
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="2000">건강한 일상을</p>
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="2400">동행합니다</p>
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="2800"><span class="text-gradient">마크로젠</span></p>
            </div>
        </div>
        <!-- e intro -->

        <!-- s 메인비주얼 영역 -->
        <div class="swiper-container" id="key-swiper-container">
            <div class="swiper-wrapper" id="key-swiper-wrapper">
                <div class="swiper-slide visual_01">
                    <div class="text-box" data-aos="fade-down" data-aos-duration="800" data-aos-delay="2000">
                        <p class="text-gradient">유전체 분석기술의</p>
                        <p class="slogan-sub">글로벌 리더</p>
                        <p class="desc">독보적 유전체 분석 기술로<br>인류의 건강한 미래를 선도합니다.</p>
                    </div>
                </div>
                <div class="swiper-slide visual_02">
                    <div class="text-box">
                        <p class="text-gradient">빅데이터 + AI 기반</p>
                        <p class="slogan-sub">정밀맞춤의학</p>
                        <p class="desc">인공지능을 통해 분석된 빅데이터를  기반으로<br>미래 정밀맞춤의학의 시대를 만들어갑니다</p>
                    </div>
                </div>
                <div class="swiper-slide visual_03">
                    <div class="text-box">
                        <p class="text-gradient">희망과 함께하는</p>
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
                $('.text-box').fadeIn()
                $('.scroll-wrap').delay(1000).fadeIn()
                $pagination.delay(1000).fadeIn()
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
                        var bu = '<span class="' + className + '">' + '<svg class="fp-arc-loader" width="47" height="47" viewBox="0 0 25 25">' +
                            '<circle class="path" cx="8" cy="8" r="5" fill="none" transform="rotate(-90 8 8)" stroke="#FFF"' +
                            'stroke-opacity="1" stroke-width="0.3px"></circle>' +
                            '<circle cx="8" cy="8" r="1" fill="#FFF"></circle>' +
                            '</svg></span>'
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
                        <a href="#" class="btn btn-text" data-aos="fade-up" data-aos-duration="900"
                           data-aos-delay="1000"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a>
                    </div>
                </div>
                <div class="shortcuts-box" data-aos="fade-up" data-aos-duration="500">
                    <ul class="btn-list clearfix">
                        <li>
                            <a href="#">
                                <p>연구서비스</p>
                                <p class="sub-text">다양한 유전자 연구로<br>인류 건강에 이바지 합니다</p>
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p>임상진단서비스</p>
                                <p class="sub-text">빅데이터를 기반으로<br>정밀의학의 실현하고 있습니다</p>
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p>헬스케어서비스</p>
                                <p class="sub-text">건강 관리에 도움을 주는<br>개인 맞춤형 헬스케어 서비스입니다</p>
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
                    <div class="text-area" data-aos="fade-left" data-aos-duration="500" data-aos-delay="100">
                            <div class="title">
                                <span>GEM</span>
                                <a href="#" class="btn btn-circle btn-white btn-md"><i
                                        class="icon icon-arrow-right-short"></i></a>
                            </div>
                            <div class="desc">
                                인간 유전자의 기능을 밝히기 위한 목적으로 유전자 편집 기술을 이용해<br/>
                                특정 유전자를 삽입 또는 제거하거나 변형한 실험용 마우스를 생산 및 공급하는 서비스입니다
                            </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-ko/dist/img/main/img-business_02.png) no-repeat center center / cover">
                    <div  class="text-area" data-aos="fade-left" data-aos-duration="500">
                        <div class="title">
                            <span>NGS</span>
                            <a href="#" class="btn btn-circle btn-white btn-md"><i
                                    class="icon icon-arrow-right-short"></i></a></div>
                        <div class="desc">
                            모든 유전자의 집합체인 유전체를 무수히 많은 조각으로 나눠서 읽은 후,<br/>
                            얻어진 염기서열 조각을 조립하여 전체 유전체의 서열을 분석하는 방법입니다
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-ko/dist/img/main/img-business_03.png) no-repeat center center / cover">
                    <div class="text-area" data-aos="fade-left" data-aos-duration="500">
                        <div class="title">
                            <span>CES</span>
                            <a href="#" class="btn btn-circle btn-white btn-md"><i
                                    class="icon icon-arrow-right-short"></i></a>
                        </div>
                        <div class="desc">
                            생화학적 방법을 이용하여 DNA염기서열을 분석하는 서비스로서<br/>
                            다양한 연구목적으로 활용됨으로써 생명공학산업 발전에 주요한 밑거름이 되고 있습니다
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-ko/dist/img/main/img-business_04.png) no-repeat center center / cover">
                    <div  class="text-area" data-aos="fade-left" data-aos-duration="500">
                        <div class="title">
                            <span>Microarray</span>
                            <a href="#" class="btn btn-circle btn-white btn-md"><i
                                    class="icon icon-arrow-right-short"></i></a>
                        </div>
                        <div class="desc">
                            눈에 보이지 않는 미세한 probe들을 chip에 배열시킨 후 여기에 DNA, RNA, 단백질 등을 반응시킴으로써<br/>
                            유전자의 발현패턴을 측정하고 변이여부 등을 확인할 수 있는 기술입니다
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

            /*내부 텍스트 slide*/
            if ($('.swiper-slide').hasClass('swiper-slide-active')) {
                $(this).find().addClass('text_animate')
            } else {
                $(this).find().removeClass('text_animate')
            }
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
	                        <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">Clinical
	                            Diagnostics
	                        </div>
	                        <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">개개인의 건강한 삶을 위한 다양한 솔루션을 제공하는 임상진단 서비스를 영상으로 만나보세요</div>
	                        <a href="#" class="btn-play" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500"><span class="sr-only">재생 버튼</span></a>
	                    </div>
	                    <a href="#" class="btn btn-text" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500"><span>MORE</span><i class="icon icon-arrow-right-long-white"></i></a>
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
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/main/img-media_01.png" alt="자신의 계정에 공유해주세요. 선착순 100분께 스타벅스 음료를 드립니다.">
                        <span class="sns">Facebook</span>
                    </div>
                    <div class="content">마이크로브앤미코어 런칭을 널~리널리 알려주세요. 지금 보고 계신 게시글 하단의 공유하기를 눌러, 자신의 계정에 공유해주세요. 선착순 100분께
                        스타벅스 ...
                    </div>
                    <div class="date">2021.07.21</div>
                </div>
                <div class="swiper-slide">
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/main/img-media_02.png"
                             alt="Macrogen Clinical diagnostics services for each and every one. We unravel individuals' secrets.">
                        <span class="sns">Youtube </span>
                    </div>
                    <div class="content">Macrogen Clinical diagnostics services for each and every one. We unravel
                        individuals' secrets.
                        We find solutions for diseases. At Macrogen, ...
                    </div>
                    <div class="date">2021.07.21</div>
                </div>
                <div class="swiper-slide">
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/main/img-media_03.png" alt="반려동물에게도 발생할 수 있는 유전질환, 미리 알아보고 예방할 수 있는 방법">
                        <span class="sns">Facebook</span>
                    </div>
                    <div class="content">우리 집 댕댕이, 유전질환이 있는 견종이라고?<br> 반려동물에게도 발생할 수 있는 유전질환, 미리 알아보고 예방할 수 있다면 좋겠죠.
                    </div>
                    <div class="date">2021.07.21</div>
                </div>
                <div class="swiper-slide">
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/main/img-media_04.png" alt="코로나와 맞서 싸운 마크로젠, 그 1년 반의 시간.">
                        <span class="sns">blog</span></div>
                    <div class="content">코로나와 맞서 싸운 마크로젠, 그 1년 반의 시간.
                        국내 코로나19 바이러스가 상륙한 이후 약 한 달 뒤, 마크로젠은 서울대병원 호흡기내과 공동 연구팀과 공...
                    </div>
                    <div class="date">2021.07.21</div>
                </div>
                <div class="swiper-slide">
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/main/img-media_05.png" alt="자신의 계정에 공유해주세요. 선착순 100분께 스타벅스 음료를 드립니다.">
                        <span class="sns">Facebook</span>
                    </div>
                    <div class="content">마이크로브앤미코어 런칭을 널~리널리 알려주세요. 지금 보고 계신 게시글 하단의 공유하기를 눌러, 자신의 계정에 공유해주세요. 선착순 100분께
                        스타벅스 ...
                    </div>
                    <div class="date">2021.07.21</div>
                </div>
                <div class="swiper-slide">
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/main/img-media_06.png" alt="반려동물에게도 발생할 수 있는 유전질환, 미리 알아보고 예방할 수 있는 방법">
                        <span class="sns">Youtube</span>
                    </div>
                    <div class="content">Macrogen Europe featured in "Doe Maar Duurzaam" This video from Macrogen Europe was featured ...
                    </div>
                    <div class="date">2021.06.15</div>
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
                        <a class="pin amsterdam active" href="#"><i></i><span>Amsterdam, The Netherlands</span></a>
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

</body>
