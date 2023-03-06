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
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="500">Personalized genomic medicine</p>
                <p data-aos="fade-left" data-aos-duration="600" data-aos-delay="1000">
                    <span class="text-gradient" >for 7.8 billion people.</span>
                </p>
            </div>
        </div> -->
        <!-- e intro -->

        <!-- s 메인비주얼 영역 -->
        <div class="swiper-container" id="key-swiper-container">
            <div class="swiper-wrapper" id="key-swiper-wrapper">
                <div class="swiper-slide" data-swiper-autoplay="8000">
                    <div class="visual visual_00">
                        <div class="text-box">
                            <p class="slogan-sub">NovaSeq X Plus & PacBio Revio, <br>the latest systems in genome <br>sequencing, will be adopted for <br>the first time in the world</p>
                            <p class="desc">As the global launching partner of Illumina and <br>PacBio, Macrogen is one of the first companies <br>to bring the most revolutionary sequencing <br>technology to the market, helping to open up <br>an era of $100 personal genomes.</p>
                            <div class="btns">
                                <button type="button" onclick="location.href='https://www.macrogen.com/en/newsroom/news/20000000244?pageIndex=1&searchKeyword='">NovaSeq X Plus</button>
                                <button type="button" onclick="location.href='https://www.macrogen.com/en/newsroom/news/20000000238?pageIndex=1&searchKeyword='">Revio</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="visual visual_01">
                        <div class="text-box">
                           <p class="slogan-sub">Personalized genomic</p>
                           <p class="slogan-sub">medicine for all</p>
                            <p class="slogan-sub">7.8 billion people</p>
                            <p class="desc">Building a healthier future with <br>innovative genome analysis technology</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="visual visual_03">
                        <div class="text-box">
                            <p><span class="text-gradient">Creating a healthier future</span></p>
                            <p class="slogan-sub">for humanity</p>
                            <p class="desc">Macrogen opens the door to the future using <br>body designs for human health</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="visual visual_04">
                        <div class="text-box phrase">
                            <p>DNA holds</br>
							   our past and</br>
							   future</p>
                            <span class="name">Founder/Chairman of Macrogen<br><span>Jeong-Sun Seo</span></span>
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
                    speed: 0,//속도
                    autoplay: {
                        delay: 4700,
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
        <!-- e 메인비주얼 영역 -->
       <div class="bg-DNA"></div>
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
                        <p>As a biotechnology company, Macrogen leads personalized medicine based on individual
                            patients' human genome information and data analysis technology.</p>
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
                                    <source src="/publishing/mobile-en/dist/img/video/M_main_기업개요.mp4" type="video/mp4">
                                </video>
                                <div class="text-area">
                                    <div class="title">
                                        <span>About MACROGEN</span>
                                    </div>
                                    <div class="desc">
                                        Macrogen is a leading<br>
                                        bio venture in Korea.
                                    </div>
                                    <a href="/${rc.locale.language }/company/overview">
                                        <i class="icon-arrow-right-short"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <video class="video" autoplay muted loop playsinline>
                                    <source src="/publishing/mobile-en/dist/img/video/M_main_글로벌마크로젠.mp4" type="video/mp4">
                                </video>
                                <div class="text-area">
                                    <div class="title">
                                        <span>Global Network</span>
                                    </div>
                                    <div class="desc">
                                        We work with global leaders in<br>
                                        genetic analysis and research.
                                    </div>
                                    <a href="/${rc.locale.language }/company/global-network">
                                        <i class="icon-arrow-right-short"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <video class="video" autoplay muted loop playsinline>
                                    <source src="/publishing/mobile-en/dist/img/video/M_main_ESG.mp4" type="video/mp4">
                                </video>
                                <div class="text-area">
                                    <div class="title">
                                        <span>ESG Management</span>
                                    </div>
                                    <div class="desc">
                                        We are committed to creating<br>
                                        a sustainable future for human health.
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
                    <div class="title">Business</div>
                    <div class="desc">
                        <p>As a global leader in precision medicine that drives innovation by building integrated big data of genomic and medical information, predicting diseases and conducting human genome research projects, we contribute to the health and happiness of mankind.</p>
                    </div>
                </div>
            </div>
            <!-- e  비즈니스 -->

            <!--s 비즈니스 swiper-->
            <div class="business-box" data-aos="fade-up" data-aos-duration="2000">
                <div class="slider">
                    <div class="swiper-container _businessSlider">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide" style="background: url(/publishing/mobile-en/dist/img/main/img-business_01.png) no-repeat center center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>Personal Healthcare</span>
                                        <a href="/${rc.locale.language }/business/healthcare/personal-genetic">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        Personalized healthcare solutions for managing people's health according to their genetic characteristics.
                                    </div>
                                </div>
                            </div>
                           <!-- <div class="swiper-slide" style="background: url(/publishing/mobile-en/dist/img/main/img-business_02.png) no-repeat center center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>The Biome</span>
                                        <a href="/${rc.locale.language }/business/healthcare/intestinal-microbiome">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        Solutions are personalized by analyzing one's microbiome.
                                    </div>
                                </div>
                            </div>  -->
                            <div class="swiper-slide" style="background: url(/publishing/mobile-en/dist/img/main/img-business_03.png) no-repeat center center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>Clinical Diagnostics/Treatment</span>
                                        <a href="/${rc.locale.language }/business/diagnosis/cancer">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        Research on the cause of disease, e.g., COVID19 and cancer genomic testing for personalized treatment.
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide" style="background: url(/publishing/mobile-en/dist/img/main/img-business_04_v2.png) no-repeat top center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>Pets</span>
                                        <a href="/${rc.locale.language }/business/healthcare/pet-genetic">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        Personalized management solutions, e.g., prediction and prevention of genetic diseases for  your beloved pets.
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide" style="background: url(/publishing/mobile-en/dist/img/main/img-business_05.png) no-repeat center center / cover">
                                <div class="text-area">
                                    <div class="font-h3">
                                        <span>Research Services</span>
                                        <a href="/${rc.locale.language }/business/research/ngs">
                                            <i class="icon-arrow-right-short"></i>
                                        </a>
                                    </div>
                                    <div class="desc">
                                        Competitive research and analysis for fast sequencing based on global standard infrastructure.
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
                    $('.business').css("cursor","url('/publishing/mobile-en/dist/img/main/img-cursor_3.cur'), auto");
                });
            </script>

            <!-- s  news -->
            <div class="section-news" data-aos="fade-up" data-aos-duration="2000">

	            <c:if test="${ fn:length(newsList) gt 0 }">
	                <div class="board">
	                    <div class="info-box" >
	                        <div class="title">NEWSROOM</div>
	                        <div class="desc">Keep up with our latest news as we pave the way to a brighter future</div>
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
                        <div class="title">How Can We Help You?</div>
                        <div class="desc">Our team of experts will help you find<br>
							the most appropriate solutions to all your needs.
						</div>
                        <a href="/${rc.locale.language }/company/contact-us" target="_blank" class="btn_play">
                            <span>Contact us</span><i class="icon-arrow-right-short"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- e  news -->

            <!-- s  media -->
            <div class="section-media" data-aos="fade-left" data-aos-duration="2000" data-aos-delay="1000">
                <div class="info-box">
                    <div class="title">Social Media</div>
                    <div class="desc">Get our latest news via social media channels. </div>
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
                        We provide personalized solutions To meet the diverse needs of local customers around the world in a timely manner.
                    </div>
                </div>
                <div class="inner">
                    <div class="map">
                        <a class="pin amsterdam" onClick="location.href='/${rc.locale.language}/company/global-network2#amsterdam'"><i></i><span>Amsterdam, Netherlands</span></a>
	                    <a class="pin leuven" onClick="location.href='/${rc.locale.language}/company/global-network2#leuven'"><i></i><span>Leuven, Belgium</span></a>
	                    <a class="pin paris" onClick="location.href='/${rc.locale.language}/company/global-network2#paris'"><i></i><span>Paris, France</span></a>
	                    <a class="pin milan" onClick="location.href='/${rc.locale.language}/company/global-network2#italy'"><i></i><span>Milan, Italy</span></a>
	                    <a class="pin poland" onClick="location.href='/${rc.locale.language}/company/global-network2#poland'"><i></i><span>Szczecin, Poland</span></a>
	                    <a class="pin madrid" onClick="location.href='/${rc.locale.language}/company/global-network2#madrid'"><i></i><span>Madrid, Spain</span></a>
	                    <a class="pin seoul" onClick="location.href='/${rc.locale.language}/company/global-network#seoul'"><i></i><span>Seoul, Korea</span></a>
	                    <a class="pin songdo" onClick="location.href='/${rc.locale.language}/company/global-network#songdo'"><i></i><span>Songdo, Korea</span></a>
	                    <a class="pin daejeon" onClick="location.href='/${rc.locale.language}/company/global-network#daejeon'"><i></i><span>Daejeon, Korea</span></a>
	                    <a class="pin tokyo" onClick="location.href='/${rc.locale.language}/company/global-network2#tokyo'"><i></i><span>Tokyo, japan</span></a>
	                    <a class="pin biopolis" onClick="location.href='/${rc.locale.language}/company/global-network2#biopolis'"><i></i><span>Biopolis, Singapore</span></a>
	                    <a class="pin boston" onClick="location.href='/${rc.locale.language}/company/global-network2#rockville'"><i></i><span>Boston, USA</span></a>
	                    <a class="pin newyork" onClick="location.href='/${rc.locale.language}/company/global-network2#rockville'"><i></i><span>New york, USA</span></a>
	                    <a class="pin rockville" onClick="location.href='/${rc.locale.language}/company/global-network2#rockville'"><i></i><span>Rockville, USA</span></a>
	                    <a class="pin virginia" onClick="location.href='/${rc.locale.language}/company/global-network2#rockville'"><i></i><span>Virginia, USA</span></a>
	                     <a class="pin santiago" onClick="location.href='/${rc.locale.language}/company/global-network2#santiago'"><i></i><span>Santiago, Chile</span></a>
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
	<c:if test="${not empty popupList }">
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
		                <a href="#" data-popup-sn="${popup.popupSn}" class="btn-footer close-box" onclick="popupClose('${ popup.popupSn }')" data-bs-dismiss="modal" data-bs-target="#modal" aria-label="Close"><span>Stop watching today</span></a>
		                <a href="javascript:;" class="btn-footer" data-bs-dismiss="modal" data-bs-target="#modal" aria-label="Close"><span>Close</span></a>
		            </div>
		        </div>
		    </div>
		</div>
		</c:forEach>
		<script>
		   /*  var modalEl = document.getElementById('modal')
		    var modal = new bootstrap.Modal(modalEl)

		    modal.show();

		    $(document).ready(function () {
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
		    }) */
		    
			var popupCnt = $("#popupCnt").val();
			
			for(var i=0;i<popupCnt;i++){
				var modal = new bootstrap.Modal(document.getElementById('modal'+i));
				
				var coockieChk = $("#cookieChkList"+i).val();

				if(coockieChk == 'true'){
					modal.hide();
				}else if(coockieChk =='false'){
					modal.show();
				}
			}
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
			}); */

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
