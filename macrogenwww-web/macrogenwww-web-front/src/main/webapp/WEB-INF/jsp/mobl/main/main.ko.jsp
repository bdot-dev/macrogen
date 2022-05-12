<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body divwrapclass="main-wrap">
    <div class="main-bg">
        <header class="header">
    <div class="inner">
        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
    </div>
</header>

        <!-- s intro -->
        <!-- <div class="intro">
            <div class="box">
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="500">유전체 맞춤 의학으로</p>
                <p data-aos="fade-left" data-aos-duration="600" data-aos-delay="1000">
                    <span class="text-gradient" >78억 인류와</span>
                </p>
                <p data-aos="fade-left" data-aos-duration="600" data-aos-delay="1500">
                    <span class="text-gradient">세상을 향합니다</span></p>
            </div>
        </div> -->
        <!-- e intro -->

        <!-- s 메인비주얼 영역 -->
        <div class="swiper-container" id="key-swiper-container">
            <div class="swiper-wrapper" id="key-swiper-wrapper">
                <div class="swiper-slide">
                    <div class="visual visual_01">
                        <div class="text-box">
                           <!--  <p><span class="text-gradient">유전체</span></p>
                            <p><span class="text-gradient">분석기술의</span></p> -->
                            <p class="slogan-sub">유전체 맞춤</p>
                            <p class="slogan-sub">의학으로</p>
                            <p class="slogan-sub">78억 인류와</p>
                            <p class="slogan-sub">세상을 향합니다</p>
                            <p class="desc">독보적 유전체 분석 기술로<br>인류의 건강한 미래를 선도합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="visual visual_02">
                        <div class="text-box">
                            <p><span class="text-gradient">빅데이터 +</span></p>
                            <p><span class="text-gradient">AI기반</span></p>
                            <p class="slogan-sub">정밀맞춤의학</p>
                            <p class="desc">인공지능을 통해 분석된 빅데이터를<br>기반으로 미래 정밀맞춤의학의<br>시대를 만들어갑니다</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="visual visual_03">
                        <div class="text-box">
                            <p><span class="text-gradient">희망과</span></p>
                            <p><span class="text-gradient">함께하는</span></p>
                            <p class="slogan-sub">건강한 미래</p>
                            <p class="desc">마크로젠은 인류의 건강을 위한<br>내 몸 설계도로<br>새로운 미래를 열어갑니다</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="visual visual_04">
                        <div class="text-box phrase">
                            <p>DNA가<br>세상을 구할 것이다<br>나의 DNA에는<br>과거와 미래가 공존한다</p>
                            <span class="name">마크로젠 창립자&#47;회장<br><span>서정선</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

            <!-- If we need pagination -->
            <div class="swiper-pagination" id="key-swiper-pagination"></div>
        </div>
        <script>
            var $container = $('#key-swiper-container');
            var $wrapper = $('#key-swiper-wrapper');
            var $pagination = $('#key-swiper-pagination');
            var delay = 5000;

            setTimeout(function () {
                step1()
            })

            function step1() {
                $wrapper.css({
                    'transform': 'translateY(0)',
                    'transition-duration': '1s'
                })
                $('.header').addClass('header-white')
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
                $('.header').addClass('header-white')
                introScroll()

                $wrapper.css({'overflow': 'visible'})
                $container.css({'overflow': 'hidden'})
                $('.text-box').fadeIn()
                $('.scroll-wrap').delay(1000).fadeIn()
                // $('.stock_information').delay(1500).fadeIn()
            }

            function setSlider() {
                if (mainSwiper !== undefined) {
                    //console.log('mainSwiper');
                    return false
                }
                //console.log('setSlider');
                var mainSwiper = new Swiper($container, {
                    effect : 'fade', // 페이드 효과
                    loop: true, //반복
                    speed: 1200,//속도
                    autoplay: {
                        delay: 3500,
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
                            //console.log('setSlider222');
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
                                'animation-duration': '3s'
                            })
                        }
                    }
                })
                step2()
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
                        $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
                    }
                    else {
                        // console.log('Up');
                        $('.header').show().css({'position': 'fixed','top':'0'}).removeClass('header-white');
                    }
                    lastScroll = st;
                });
            }

        </script>
        
         <div class="bg-DNA"></div>
        
        <!-- e 메인비주얼 영역 -->
    </div>
    

    <div class="container">
        <div class="main-page">
            <!-- s  바로가기 -->
            <div class="section-define" data-aos="fade-up" data-aos-duration="2000">
                <div class="info-box">
                    <div class="title">
                        <span>Humanizing</span>
                        <span>Genomics</span>
                    </div>
                    <div class="desc">
                        <p>인간의 유전체 정보 및 데이터 분석 기술을 바탕으로 환자 개개인의 유전적 특성에 따른 맞춤의학으로 세계를 이끄는 생명공학기업 마크로젠 입니다</p>
                        <a href="/${rc.locale.language }/company/overview" class="btn-text">
                            <span>MORE</span><i class="icon ico-moveLong-black"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- e  바로가기 -->

            <!--s 바로가기 swiper-->
            <div class="define-box" data-aos="fade-up" data-aos-duration="2000">
                <div class="slider">
                    <div class="swiper-container _shortcutsSlider">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <video class="video" autoplay muted loop playsinline>
                                    <source src="/publishing/mobile-ko/dist/img/video/M_main_기업개요.mp4" type="video/mp4">
                                </video>
                                <div class="text-area">
                                    <div class="title">
                                        <span>기업개요</span>
                                    </div>
                                    <div class="desc">
                                        대한민국 바이오 벤처 대표기업<br/>마크로젠 입니다
                                    </div>
                                    <a href="/${rc.locale.language }/company/overview">
                                        <i class="icon-arrow-right-short"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <video class="video" autoplay muted loop playsinline>
                                    <source src="/publishing/mobile-ko/dist/img/video/M_main_글로벌마크로젠.mp4" type="video/mp4">
                                </video>
                                <div class="text-area">
                                    <div class="title">
                                        <span>글로벌 마크로젠</span>
                                    </div>
                                    <div class="desc">
                                        유전체 분석 연구를 이끄는<br/>글로벌 파트너와 함께 합니다
                                    </div>
                                    <a href="/${rc.locale.language }/company/global-network">
                                        <i class="icon-arrow-right-short"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <video class="video" autoplay muted loop playsinline>
                                    <source src="/publishing/mobile-ko/dist/img/video/M_main_ESG.mp4" type="video/mp4">
                                </video>
                                <div class="text-area">
                                    <div class="title">
                                        <span>ESG</span>
                                    </div>
                                    <div class="desc">
                                        인류의 건강한 미래가<br/>지속가능한 세계를 만들어갑니다
                                    </div>
                                    <a href="/${rc.locale.language }/company/esg-management">
                                        <i class="icon-arrow-right-short"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
                <script>
                    var swiperScrollbar = null

                    $(document).ready(function (){
                        /*slide 영역*/

                        swiperScrollbar = new Swiper ("._shortcutsSlider", {
                            effect : 'fade',
                            speed: 1000,
                            loop: true,
                            autoplayDisableOnInteraction: false,
                            slidesPerView: 1,
                            autoplay: {
                                delay: 3000,//animation과 시간 맞춰줘야함
                            },

                            pagination: {
                                el: '.swiper-pagination',
                                clickable: 'true',
                                type: 'bullets',
                                renderBullet: function (index, className) {
                                    return '<span class="' + className + '">' + '<i></i>' + '<b></b>'  + '</span>';
                                },

                            },
                        });
                    })
                </script>
            </div>
            <!--e swiper-->

            <!-- s  비즈니스 -->
            <div class="section-business" data-aos="fade-up" data-aos-duration="2000">
                <div class="info-box">
                    <div class="title">Our Business</div>
                    <div class="desc">
                        <p>유전체 정보, 의료 정보 및 생활 정보 통합 빅데이터를 구축하고 질병을 예측하여<br>
                            미래의학을 혁신하는 글로벌 정밀의학 선도기업으로서 인간 유전체 연구로 인류의 건강과 행복에 이바지합니다</p>
                    </div>
                </div>
            </div>
            <!-- e  비즈니스 -->

            <!--s 비즈니스 swiper-->
            <div class="business-box" data-aos="fade-up" data-aos-duration="2000">
                <div class="slider">
                    <div class="swiper-container _businessSlider">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide" style="background: url(/publishing/mobile-ko/dist/img/main/img-business_01.png) no-repeat center center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>퍼스널 헬스케어</span>
                                        <a href="/${rc.locale.language }/business/healthcare/personal-genetic">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        유전자 특성에 따라<br/>건강관리에 도움을 주는 개인 맞춤형<br/>헬스케어 솔루션입니다
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide" style="background: url(/publishing/mobile-ko/dist/img/main/img-business_02.png) no-repeat center center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>더바이옴</span>
                                        <a href="/${rc.locale.language }/business/healthcare/intestinal-microbiome">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        마이크로바이옴을 분석하여<br/>나에게 가장 잘 맞는<br/>맞춤형 솔루션을 제공합니다
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide" style="background: url(/publishing/mobile-ko/dist/img/main/img-business_03.png) no-repeat center center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>임상진단&#47;치료</span>
                                        <a href="/${rc.locale.language }/business/diagnosis/cancer">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        COVID19&#44; 암 유전체 검사 등<br/>질병 발생원인 연구로<br/>맞춤치료에 도움이 될 수 있습니다
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide" style="background: url(/publishing/mobile-ko/dist/img/main/img-business_04_v2.png) no-repeat top center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>반려동물</span>
                                        <a href="/${rc.locale.language }/business/healthcare/pet-genetic">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        소중한 가족인 반려동물의<br/>건강한 삶을 위해 유전질환예측&#44; 질병 예방 등<br/>맞춤 관리 솔루션을 제공합니다
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide" style="background: url(/publishing/mobile-ko/dist/img/main/img-business_05.png) no-repeat center center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>연구서비스</span>
                                        <a href="/${rc.locale.language }/business/research/ngs">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        글로벌 스탠다드 인프라 기반의<br/>빠른 염기서열 분석 연구데이터로<br/>경쟁력을 갖추고 있습니다
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
                <script>
                    var swiperScrollbar = null
                    $(document).ready(function (){
                        /*slide 영역*/
                        swiperScrollbar = new Swiper ("._businessSlider", {
                            slidesPerView: "auto",
                            effect : 'fade', // 페이드 효과 사용
                            centeredSlides: true,
                            loop: true,

                            pagination: {
                                el: '.swiper-pagination',
                                clickable: 'true',
                                type: 'bullets',
                                renderBullet: function (index, className) {
                                    return '<span class="' + className + '">' + '<i></i>' + '</span>';
                                },

                            },

                        });
                    })
                </script>
            </div>
            <!--e 비즈니스 swiper-->

            <script>
                $(document).ready(function(){
                    $('.business').css("cursor","url('/publishing/mobile-ko/dist/img/main/img-cursor_3.cur'), auto");
                });
            </script>

            <!-- s  news -->
            <div class="section-news" data-aos="fade-up" data-aos-duration="2000">

	            <c:if test="${ fn:length(newsList) gt 0 }">
	                <div class="board">
	                    <div class="info-box" >
	                        <div class="title">News</div>
	                        <div class="desc">전세계 모든 인류가 건강한 세상을 꿈꾸는<br>마크로젠의 새로운 소식을 알려드립니다</div>
	                    </div>
	                    <div class="text-list" data-aos="fade-up" data-aos-duration="2000">
	                        <ul class="category-list">

		                    	<c:forEach var="result" items="${ newsList }" varStatus="status">
	                            <li class="item">
	                                <a href="/${rc.locale.language }/newsroom/news/${result.nttSn}">
	                                    <span class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy.MM.dd" />.</span>
	                                    <span class="font-h7">${ result.nttSj }</span>
	                                </a>
	                            </li>
	                           	</c:forEach>

	                        </ul>
	                        <a href="/${rc.locale.language }/newsroom/news" class="btn-text" data-aos="fade-up" data-aos-duration="2000">
	                            <span>MORE</span><i class="icon ico-moveLong-black"></i>
	                        </a>
	                    </div>
	                </div>
	            </c:if>

                <div class="video-box" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="1000">
                    <div class="info-box">
                        <div class="title">도움이 필요하신가요?</div>
                        <div class="desc">전문가와 가장 적합한 솔루션을 확인해보세요</div>
                        <a href="/${rc.locale.language }/company/contact-us" target="_blank" class="btn_play">
                            <span>문의하기</span><i class="icon-arrow-right-short"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- e  news -->

            <!-- s  media -->
            <div class="section-media" data-aos="fade-left" data-aos-duration="2000" data-aos-delay="1000">
                <div class="info-box">
                    <div class="title">Social Media</div>
                    <div class="desc">다양한 채널을 통해<br>마크로젠의 소식을 만나실 수 있습니다</div>
                </div>

                <div class="media">
                    <div class="slider">
                        <div class="swiper-container _mediaSlider">
                            <div class="swiper-wrapper">

								<c:forEach var="result" items="${ mainSomlnkList }" varStatus="status">
	                                <div class="swiper-slide item">
	                                    <a href="${result.somlnkUrl }" target="_blank">
	                                        <div class="img">
	                                            <img src="${publicUrl}${result.imageFlpth}" alt="${result.somlnkSj }">
	                                            <span class="sns">${result['somlnkCtgryCodeNm'.concat(lang)] }</span>
	                                        </div>
	                                        <div class="content">${result.somlnkSj }</div>
	                                        <div class="date"><fmt:formatDate value="${result.postDt }" pattern="yyyy.MM.dd" /></div>
	                                    </a>
	                                </div>
								</c:forEach>

                            </div>
                            <div class="swiper-scrollbar"></div>
                        </div>
                    </div>
                    <script>
                        new Swiper("._mediaSlider", {
                            slidesPerView: "auto",
                            observer: true,
                            observeParents: true,
                            scrollbar: {
                                el: ".swiper-scrollbar",
                            }
                        });
                    </script>
                </div>

            </div>
            <!-- e  media -->

            <!-- s  global map -->
            <div class="section-map" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Global Macrogen</div>
                    <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                        국내 지사를 포함하여 세계 각지의<br/>글로벌 네트워크를 통해 현지 고객의 다양한<br/>요구에 부합하는 맞춤형 서비스를<br/>더욱 신속하고 체계적으로 제공합니다
                    </div>
                </div>
                <div class="inner">
                    <div class="map">
                    	<a class="pin amsterdam" onClick="location.href='/${rc.locale.language}/company/global-network2#amsterdam'"><i></i><span>Amsterdam, Netherlands</span></a>
	                    <a class="pin maastricht" onClick="location.href='/${rc.locale.language}/company/global-network2#maastricht'"><i></i><span>Maastricht, Netherlands</span></a>
	                    <a class="pin milan" onClick="location.href='/${rc.locale.language}/company/global-network2#italy'"><i></i><span>Milan, Italy</span></a>
	                    <a class="pin madrid" onClick="location.href='/${rc.locale.language}/company/global-network2#madrid'"><i></i><span>Madrid, Spain</span></a>
	                    <a class="pin seoul" onClick="location.href='/${rc.locale.language}/company/global-network#seoul'"><i></i><span>Seoul, Korea</span></a>
	                    <a class="pin songdo" onClick="location.href='/${rc.locale.language}/company/global-network#songdo'"><i></i><span>Songdo, Korea</span></a>
	                    <a class="pin daejeon" onClick="location.href='/${rc.locale.language}/company/global-network#daejeon'"><i></i><span>Daejeon, Korea</span></a>
	                    <a class="pin tokyo" onClick="location.href='/${rc.locale.language}/company/global-network2#tokyo'"><i></i><span>Tokyo, japan</span></a>
	                    <a class="pin synapse" onClick="location.href='/${rc.locale.language}/company/global-network2#synapse'"><i></i><span>Synapse, Singapore</span></a>
	                    <a class="pin boston" onClick="location.href='/${rc.locale.language}/company/global-network2#rockville'"><i></i><span>Boston, USA</span></a>
	                    <a class="pin newyork" onClick="location.href='/${rc.locale.language}/company/global-network2#rockville'"><i></i><span>New york, USA</span></a>
	                    <a class="pin rockville" onClick="location.href='/${rc.locale.language}/company/global-network2#rockville'"><i></i><span>Rockville, USA</span></a>
	                    <a class="pin virginia" onClick="location.href='/${rc.locale.language}/company/global-network2#rockville'"><i></i><span>Virginia, USA</span></a>
                    </div>
                </div>
            </div>
            <!-- e  global map -->

            <script>
                $('.section-map').ready(function(){
                    $('.inner').scrollLeft(400);
                });
            </script>
        </div>
    </div>

	<%-- 팝업 --%>
	<c:if test="${not empty popupList  }">
	<c:forEach var="popup" items="${popupList}" varStatus="status">
		<div class="modal fade modal-notice" tabindex="-1" id="modal${status.index }" data-bs-backdrop="static" aria-labelledby="modal"
		     aria-hidden="true">
		    <input type="hidden" value="${popupCnt}" id="popupCnt">
			<input type="hidden" value="${cookieChkList[status.index]}" id="cookieChkList${status.index }">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <div class="ico-notice icon"></div>
		            </div>
		            <div class="modal-body">
		                <div class="scroll">
		                    <div class="data-img">
		                        <%-- <img src="/publishing/mobile-ko/dist/img/@temp/newsroom/sample-2.png" alt=""> --%>
			                    <img src="${publicUrl}${popup.popupImageFlpth}" alt=""
			                    	onclick="onclickPopupImage('${popup.popupLinkUrl}', '${popup.popupLinkTrgtCode}')">
		                    </div>
		                    <%-- <div class="btn-wrapper">
		                        <a href="#" class="btn btn-light btn-round">버튼1</a>
		                        <a href="#" class="btn btn-light btn-round">버튼2</a>
		                    </div> --%>
		                </div>
		            </div>
		            <div class="modal-footer">
		                <a href="javascript:;" data-popup-sn="${popup.popupSn}" class="btn-footer close-box"  onclick="popupClose('${ popup.popupSn }')" data-bs-dismiss="modal" data-bs-target="#modal" aria-label="Close"><span>오늘은 그만 보기</span></a>
		                <a href="javascript:;" class="btn-footer" data-bs-dismiss="modal" data-bs-target="#modal" aria-label="Close"><span>닫기</span></a>
		            </div>
		        </div>
		    </div>
		</div>
		</c:forEach>
		<script>
		    /* var modalEl = document.getElementById('modal')
		    var modal = new bootstrap.Modal(modalEl)

		    modal.show(); */
		    
		    var popupCnt = $("#popupCnt").val();
			
			for(var i=0;i<popupCnt;i++){
				var modal = new bootstrap.Modal(document.getElementById('modal'+i));
				/* var modalEl = document.getElementById('modal'+i);
				var modal = new bootstrap.Modal(modalEl);  */
				var coockieChk = $("#cookieChkList"+i).val();

				if(coockieChk == 'true'){
					modal.hide();
				}else if(coockieChk =='false'){
					modal.show();
				}
			}

		   /*  $(document).ready(function () {
		        var modalHeight = $('.modal-notice .modal-content').outerHeight();
		        $('.modal-notice').css('top', 'calc(100% + 75px - ' + modalHeight + 'px)');
		    })

		    modalEl.addEventListener('shown.bs.modal', function () {
		        var modalHeight = $('.modal-notice .modal-content').outerHeight();
		        $('.modal-notice').css('top', 'calc(100% - ' + modalHeight + 'px)');
		    })

		    modalEl.addEventListener('hide.bs.modal', function () {
		        var modalHeight = $('.modal-notice .modal-content').outerHeight();
		        $('.modal-notice').css('top', 'calc(100% + ' + modalHeight + 'px)');
		    })  */
		</script>
		<script>
			/* $(function() {
				var $btnPopupClose = $('#modal .close-box');
				$btnPopupClose.on('click', function() {
					var sn = $(this).data('popup-sn');
					if (!sn) return;

					var snListStr = $.cookie('popup-sn-list');
					if (!snListStr) {
						snListStr = sn;
					} else if (snListStr.indexOf(sn) < 0) {
						snListStr += ',' + sn;
					}
					$.cookie('popup-sn-list', snListStr, { expires: 1, path: '/'});
					modal.hide();
				});
			});
 */
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
 
			 function popupClose(sn) {
				if (!sn) return;
				
				var snListStr = $.cookie('popup-sn-list');
				if (!snListStr) {
					snListStr = sn;
				} else if (snListStr.indexOf(sn) < 0) {
					snListStr += ',' + sn;
				}

				$.cookie('popup-sn-list', snListStr, { expires: 1, path: '/'});
				modal.hide();
			}
		</script>
	</c:if>

</body>
