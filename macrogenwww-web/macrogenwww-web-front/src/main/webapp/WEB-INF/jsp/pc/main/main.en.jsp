<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<script src="/publishing/pc-en/dist/js/lib/jquery-ui.min.js"></script>
</head>
<body class="en">

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
        <!-- <div class="intro">
            <div class="box">
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="500">Personalized genomic medicine</p>
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="1000">
                    <img src="/publishing/pc-en/dist/img/main/txt-intro.png" alt="78억 인류와 세상을 향합니다."></p>
            </div>
        </div> -->
        <!-- e intro -->

        <!-- s 메인비주얼 영역 -->
        <div class="swiper-container" id="key-swiper-container">
            <div class="swiper-wrapper" id="key-swiper-wrapper">
                <div class="swiper-slide">
                	<div class="visual visual_01"></div>
                    <div class="text-box" data-aos="fade-down" data-aos-duration="800" data-aos-delay="2000">
                        <!-- <p class="text-gradient"><img src="/publishing/pc-en/dist/img/main/txt-main_01.png" alt="유전체 분석기술의"></p> -->
                        <p class="slogan-sub">Personalized genomic medicine</p>
                        <p class="slogan-sub">for 7.8 billion people</p>
                        <p class="desc">Leading the future with innovative<br/>genome analysis technology.</p>
                    </div>
                </div>
                <div class="swiper-slide">
                	<div class="visual visual_02"></div>
                    <div class="text-box">
                        <p class="text-gradient"><img src="/publishing/pc-en/dist/img/main/txt-main_02.png" alt="빅데이터 ai기반"></p>
                        <p class="slogan-sub">big data and AI</p>
                        <p class="desc">Paving the way to a better future with<br/>precision medicine based on big data powered by AI</p>
                    </div>
                </div>
                <div class="swiper-slide">
                	<div class="visual visual_03"></div>
                    <div class="text-box">
                        <p class="text-gradient"><img src="/publishing/pc-en/dist/img/main/txt-main_03.png" alt="희망과 함께하는"></p>
                        <p class="slogan-sub">future</p>
                        <p class="desc">Macrogen opens the door to the future using<br/>body designs for human health</p>
                    </div>
                </div>
                <div class="swiper-slide">
               		<div class="visual visual_04"></div>
                    <div class="text-box phrase">
                        <p>DNA will save the world.<br/>Your past and future is in your DNA.</p>
                        <span class="name">Founder/Chairman of Macrogen<span>  Jeong-Sun Seo</span></span>
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
             })

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
                    effect : 'fade', // 페이드 효과
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
                    on: {
                    	slideChange: function () { 
							var $slides = this.slides; 
							$slides.children('.visual').css('animation', 'none'); 
							$slides.eq(this.activeIndex).children('.visual').css({ 
								'animation-name': 'grow2', 
								'animation-duration': '1s' 
							}) 
                        }, 
                    }
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
                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="400">As a biotechnology company, Macrogen leads </p>
                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="550">personalized medicine based on individual patients'</p>
                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="700">human genome information and data analysis technology.</p>
                        </div>
                        <a href="/${rc.locale.language }/company/overview" class="btn btn-text" data-aos="fade-up" data-aos-duration="900"
                           data-aos-delay="1000"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a>
                    </div>
                </div>
                <div class="shortcuts-box" data-aos="fade-up" data-aos-duration="500">
                    <ul class="btn-list clearfix">
                        <li>
                            <a href="/${rc.locale.language }/company/overview">
                                <p>About MACROGEN</p>
                                <p class="sub-text">Macrogen is a leading<br>bio venture in Korea.</p>
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/${rc.locale.language }/company/global-network">
                                <p>Global Network</p>
                                <p class="sub-text">We work with global leaders in<br>genetic analysis and research.</p>
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/${rc.locale.language }/company/esg-management">
                                <p>ESG Management</p>
                                <p class="sub-text">We are committed to creating<br>a sustainable future for human health.</p>
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                    </ul>
                    <div class="bg_section bg0"></div>

                    <div class="bg_section bg1 active">
                        <video class="video" autoplay muted loop>
                            <source src="/publishing/pc-en/dist/img/video/main_기업개요.mp4" type="video/mp4">
                        </video>
                    </div>
                    <div class="bg_section bg2">
                        <video class="video" autoplay muted loop>
                            <source src="/publishing/pc-en/dist/img/video/main_글로벌마크로젠.mp4" type="video/mp4">
                        </video>
                    </div>
                    <div class="bg_section bg3">
                        <video class="video" autoplay muted loop>
                            <source src="/publishing/pc-en/dist/img/video/main_ESG.mp4" type="video/mp4">
                        </video>
                    </div>
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

                            $('.bg_section .video').play().currentTime()

                        }).mouseout(function(){
                            $('.bg_section .video').pause()
                        });
                    </script>
                </div>
            </div>
            <!-- e  바로가기 -->

            <!-- s  business slide -->
            <div class="section-business">
                <div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="500">Business</div>
                    <div class="desc">
                        <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">
                            As a global leader in precision medicine that drives innovation by building integrated big data of genomic and medical information, predicting<br/>
                            diseases and conducting human genome research projects, we contribute to the health and happiness of mankind.
                        </p>
                    </div>
                </div>
                <div class="business" data-aos="fade-left" data-aos-duration="500" data-aos-delay="200" >
    <div class="slider">
        <div class="swiper-container _businessSlider">
            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background: url(/publishing/pc-en/dist/img/main/img-business_01.png) no-repeat center center / cover">
                    <div class="text-area">
                            <div class="title">
                                <span>Personal Healthcare</span><a href="/${rc.locale.language }/business/healthcare/personal-genetic">
                                    <span class="btn btn-circle btn-white btn-md">
                                        <i class="icon icon-arrow-right-short"></i>
                                    </span>
                                </a>
                            </div>
                            <div class="desc">
                                Personalized healthcare solutions for managing people's health<br/>according to their genetic characteristics.
                            </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-en/dist/img/main/img-business_02.png) no-repeat center center / cover">
                    <div class="text-area">
                        <div class="title">
                            <span>The Biome</span><a href="/${rc.locale.language }/business/healthcare/intestinal-microbiome">
                             <span class="btn btn-circle btn-white btn-md">
                                 <i class="icon icon-arrow-right-short"></i>
                             </span>
                            </a>
                        </div>
                        <div class="desc">
                            Solutions are personalized by analyzing one's microbiome.
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-en/dist/img/main/img-business_03.png) no-repeat center center / cover">
                    <div class="text-area">
                        <div class="title">
                            <span>Clinical Diagnostics/Treatment</span><a href="/${rc.locale.language }/business/diagnosis/cancer">
                             <span class="btn btn-circle btn-white btn-md">
                                 <i class="icon icon-arrow-right-short"></i>
                             </span>
	                        </a>
                        </div>
                        <div class="desc">
                            Research on the cause of disease, e.g., COVID19 and cancer<br/>genomic testing for personalized treatment.
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-en/dist/img/main/img-business_04_v2.png) no-repeat center center / cover">
                    <div class="text-area">
                        <div class="title">
                            <span>Pets</span><a href="/${rc.locale.language }/business/healthcare/pet-genetic">
                             <span class="btn btn-circle btn-white btn-md">
                                 <i class="icon icon-arrow-right-short"></i>
                             </span>
                            </a>
                        </div>
                        <div class="desc">
                            Personalized management solutions, e.g., prediction and prevention of<br/>genetic diseases for your beloved pets.
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(/publishing/pc-en/dist/img/main/img-business_05.png) no-repeat center center / cover">
                    <div  class="text-area" data-aos="fade-left" data-aos-duration="500">
                        <div class="title">
                            <span>Research Services</span><a href="/${rc.locale.language }/business/research/ngs">
                             <span class="btn btn-circle btn-white btn-md">
                                 <i class="icon icon-arrow-right-short"></i>
                             </span>
                            </a>
                        </div>
                        <div class="desc">
                            Competitive research and analysis for fast sequencing based on<br/>global standard infrastructure.
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
            });

        })
    </script>
</div>

            </div>
            <script>
                $(document).ready(function(){
                  $('.business').css("cursor","url('/publishing/pc-en/dist/img/main/img-cursor.cur'), auto");
                });
            </script>


            <!-- e  business slide -->

            <!-- s  news -->
            <c:if test="${ fn:length(newsList) gt 0 }">
	            <div class="section-news">
	                <div class="info-box" data-aos="fade-up" data-aos-duration="500">
                    <div class="title">NEWSROOM</div>
                    <div class="desc">Keep up with our latest news as we pave the way to a brighter future.</div>
	                </div>
	                <div class="board">
	                    <div class="list list-border hover">
	                    	<c:forEach var="result" items="${ newsList }" varStatus="status">
		                        <div class="item" data-aos="fade-up" data-aos-duration="500" data-aos-delay="100">
		                            <span class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy.MM.dd" /></span>
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
                            <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Watch our latest news in video.</div>
	                        <a href="https://www.youtube.com/channel/UCT1qyaOiPM7syCEC_T8jmTw" target="_blank" class="btn btn-white btn-round btn_play" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500"><i class="icon icon_youtube"></i><span>Marcrogen Youtube</span><i class="icon icon-arrow-right-short"></i></a>
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
                    <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">Get our latest news via social media channels.</div>
                </div>
                <div class="media" data-aos="fade-left" data-aos-duration="800" data-aos-delay="400">
    <div class="slider">
        <div class="slider-navigation">
            <a href="#" class="btn btn-circle btn-white btn-sm _btnPrev"><i class="icon icon-arrow-left-sm"></i></a>
            <a href="#" class="btn btn-circle btn-white btn-sm _btnNext"><i class="icon icon-arrow-right-sm"></i></a>
        </div>
        <div class="swiper-container _mediaSlider">
            <div class="swiper-wrapper">

				<c:forEach var="result" items="${ mainSomlnkList }" varStatus="status">
	                <div class="swiper-slide">
	                    <a href="${result.somlnkUrl }" target="_blank">
	                        <div class="img">
	                            <img src="${publicUrl}${result.imageFlpth}" alt="${result.somlnkSj }">
	                            <span class="sns">${result['somlnkCtgryCodeNm'.concat(lang)] }</span>
	                        </div>
	                        <div class="content">${result.somlnkSj }
	                        </div>
	                        <div class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy.MM.dd" /></div>
	                    </a>
	                </div>
				</c:forEach>

            </div>
        </div>
    </div>
    <script>
        new Swiper("._mediaSlider", {
            slidesPerView: "auto",
            slidesPerGroup: 3,
            grabCursor: true,
            loopFillGroupWithBlank : true, // 그룹수가 맞지 않을 경우 빈칸으로 메우기(3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듦)
            /* loop : true, */
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
                            We provide personalized solutions to meet the diverse needs of local customers around the world in a timely manner.
                        </div>
                    </div>
                    <div class="map">
                        <a class="pin amsterdam" onClick="location.href='/${rc.locale.language}/company/global-network#amsterdam'"><i></i><span>Amsterdam, Netherlands</span></a>
                      	<a class="pin maastricht" onClick="location.href='/${rc.locale.language}/company/global-network#maastricht'"><i></i><span>Maastricht, Netherlands</span></a>
                      	<a class="pin milan" onClick="location.href='/${rc.locale.language}/company/global-network#italy'"><i></i><span>Milan, Italy</span></a>
                        <a class="pin madrid" onClick="location.href='/${rc.locale.language}/company/global-network#madrid'"><i></i><span>Madrid, Spain</span></a>
                        <a class="pin seoul" onClick="location.href='/${rc.locale.language}/company/global-network#seoul'"><i></i><span>Seoul, Korea</span></a>
                        <a class="pin songdo" onClick="location.href='/${rc.locale.language}/company/global-network#songdo'"><i></i><span>Songdo, Korea</span></a>
                        <a class="pin daejeon" onClick="location.href='/${rc.locale.language}/company/global-network#daejeon'"><i></i><span>Daejeon, Korea</span></a>
                        <a class="pin tokyo" onClick="location.href='/${rc.locale.language}/company/global-network#tokyo'"><i></i><span>Tokyo, japan</span></a>
                        <a class="pin synapse" onClick="location.href='/${rc.locale.language}/company/global-network#synapse'"><i></i><span>Synapse, Singapore</span></a>
                        <a class="pin boston" onClick="location.href='/${rc.locale.language}/company/global-network#rockville'"><i></i><span>Boston, USA</span></a>
                        <a class="pin newyork" onClick="location.href='/${rc.locale.language}/company/global-network#rockville'"><i></i><span>New york, USA</span></a>
                        <a class="pin rockville" onClick="location.href='/${rc.locale.language}/company/global-network#rockville'"><i></i><span>Rockville, USA</span></a>
                        <a class="pin virginia" onClick="location.href='/${rc.locale.language}/company/global-network#rockville'"><i></i><span>Virginia, USA</span></a>
                    </div>
                    <script>
                    	$('.map .pin').on('click', function () {
                                $(this).addClass('active')
                                    .siblings().removeClass('active')
                        })
                    </script>
                </div>
            </div>
            <!-- e  global map -->


        </div>
    </div>
    <%-- <footer class="footer">
		<c:import url="/inc/footer" />
    </footer> --%>
	<c:import url="/inc/footer" />
    <a href="#" class="btn btn-text btn-totop">
    <i class="icon icon-arrow-top-long"></i>
    <span>TOP</span>
</a>

<script>
    $(document).ready(function(){
        $('.btn-totop').click(function(){
            $('html,body').animate( { scrollTop:0 },{duration : 100});
            $('.header').css({'display' : 'block'});
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
<c:if test="${not empty popupList  }">
<c:forEach var="popup" items="${popupList}" varStatus="status">
	<div class="modal" tabindex="-1" id="layerPopup${status.index }" data-bs-backdrop="static">
		<input type="hidden" value="${popupCnt}" id="popupCnt">
		<input type="hidden" value="${cookieChkList[status.index]}" id="cookieChkList${status.index }">
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
	                <div class="data-img">
	                    <img src="${publicUrl}${popup.popupImageFlpth}" alt="" onclick="onclickPopupImage('${popup.popupLinkUrl}', '${popup.popupLinkTrgtCode}')">
	                </div>
	            </div>
	            <div class="modal-footer">
	                <div class="form-check">
	                    <input class="form-check-input" type="checkbox" id="popup-sn${status.index }" value="${ popup.popupSn }">
	                    <label class="form-check-label" for="popup-sn${status.index }">Do not open today</label>
	                </div>
	                <div class="close-box" data-bs-dismiss="modal" aria-label="Close" id="close-box${status.index }" onclick="popupClose('${ popup.popupSn }', '${status.index }')">
	                    <span>Close</span>
	                    <i class="icon ico-close-white"></i>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</c:forEach>
	<script>
	var popupCnt = $("#popupCnt").val();
	
	for(var i=0;i<popupCnt;i++){
		var layerPopupModal = new bootstrap.Modal(document.getElementById('layerPopup'+i))
		var coockieChk = $("#cookieChkList"+i).val();
		
		if(coockieChk == 'true'){
			layerPopupModal.hide();
		}else if(coockieChk =='false'){
			layerPopupModal.show();
		}
		
	    //layerPopupModal.show();
	}
	
	$('div.modal-backdrop:gt(0)').css("opacity", "0");
		
	    /* var layerPopupModal = new bootstrap.Modal(document.getElementById('layerPopup'))
	    layerPopupModal.show(); */
	</script>
	<script>
		function onclickPopupImage(url, trgtCode) {
			if (!url) {
				return;
			}

			if (trgtCode === 'NEW') {
				window.open(url);
			} else {
				location.href = url;
			}
		}
		
		function popupClose(sn, idx) {
			if ($('#popup-sn'+idx).is(':checked')) {
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
			$('.show').parent('body').css("overflow", "hidden");
			$('.show').parent('body').css("padding-right", "17px");
		}
	</script>

</c:if>

</body>
