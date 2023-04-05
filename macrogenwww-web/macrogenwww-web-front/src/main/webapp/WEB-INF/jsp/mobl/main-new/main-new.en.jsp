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

		<script>
            var tag = document.createElement('script');
            tag.src = "https://www.youtube.com/iframe_api";
            var firstScriptTag = document.getElementsByTagName('script')[0];
            firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
            var player;
            function onYouTubeIframeAPIReady() {
                player = new YT.Player('player', {
                    videoId: 'PYVP4IpaeRo',
                    playerVars: {   
                    'playsinline': 1,
                    'autoplay': 1,   
                    'rel': 0,
                    'showinfo': 0,
                    'modestbranding': 1,
                    'playsinline': 1,
                    'showinfo': 0,
                    'rel': 0,
                    'controls': 0,
                    'color':'white',
                    'loop': 0,
                    'mute':1,
                    // 'origin': 'https://meeranblog24x7.blogspot.com/'
                    },
                    events: {
                    'onReady': onPlayerReady,
                    // 'onStateChange': onPlayerStateChange
                    }
                });
            }
            function onPlayerReady(event) {
                player.playVideo();
                player.mute();
            }
            var done = false;
            function onPlayerStateChange(event) {
                if (event.data == YT.PlayerState.PLAYING && !done) {
                    setTimeout(stopVideo, 6000);
                    done = true;
                }
            }
            function stopVideo() {
                player.stopVideo();
            }
        </script>

        <!-- s 메인비주얼 영역 -->
        <div class="swiper-container" id="key-swiper-container">
            <div class="swiper-wrapper" id="key-swiper-wrapper">
            	
                <c:forEach var="result" items="${ mainBannerList }" varStatus="status">
                    <c:if test="${result.expsrYn == 'Y'}">
                        <div class="swiper-slide"><!--20230404 수정-->
                            
                            <c:choose>
                                <c:when	test="${result.mediaUrlMo != null && result.mediaUrlMo != '' }">
                                     <!--20230404 수정-->
                                      <div id="ytbg" data-vbg="${result.mediaUrlMo}"></div>
                                      <div class="text-box">
                                          <p class="slogan-sub">${result.mainNttSjMo}</p>
                                         <p class="desc">${fn:replace(result.mainNttCnMo, newLine, "<br/>")}</p>
                                         <c:choose>
                                             <c:when test="${result.btYn != 0 && result.btYn == 1}">
                                                    <div class="btns">
                                                     <button type="button" onclick="location.href='${result.linkUrl1}'">${result.btSjMo1}</button>
                                                 </div>
                                             </c:when>
                                             <c:when test="${result.btYn != 0 && result.btYn == 2}">	                        	
                                                 <div class="btns">
                                                     <button type="button" onclick="location.href='${result.linkUrl1}' ">${result.btSjMo1}</button>
                                                     <button type="button" onclick="location.href='${result.linkUrl2}' ">${result.btSjMo2}</button>
                                                 </div>
                                             </c:when>	                        
                                         </c:choose>
                                        </div>	
                                    
                                </c:when>
                                
                                <c:otherwise>
                                    <div class="visual" style="background: url(${publicUrl}${result.imageFlpthMobl}) 
                                        no-repeat center center / cover">
                                    </div>
                                    <div class="text-box">
                                      <p class="slogan-sub">${result.mainNttSjMo}</p>
                                     <p class="desc">${fn:replace(result.mainNttCnMo, newLine, "<br/>")}</p>
                                     <c:choose>
                                         <c:when test="${result.btYn != 0 && result.btYn == 1}">
                                                <div class="btns">
                                                 <button type="button" onclick="location.href='${result.linkUrl1}'">${result.btSjMo1}</button>
                                             </div>
                                         </c:when>
                                         <c:when test="${result.btYn != 0 && result.btYn == 2}">	                        	
                                             <div class="btns">
                                                 <button type="button" onclick="location.href='${result.linkUrl1}' ">${result.btSjMo1}</button>
                                                 <button type="button" onclick="location.href='${result.linkUrl2}' ">${result.btSjMo2}</button>
                                             </div>
                                         </c:when>	                        
                                     </c:choose>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                            
                        </div>
                    </c:if>
                </c:forEach>  
                   
            </div>   	  	 
			<div class="scroll-wrap">
                <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
            </div>

            <!-- If we need pagination -->
            <div class="swiper-pagination" id="key-swiper-pagination"></div>
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
                        <p>We contribute to the health, happiness, and <br> well-being of humanity,<br>
                            leveraging DNA sequencing data analysis<br> technology</p>
                        <a href="#" class="btn-text">
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
                                        Macrogen is a global digital healthcare company<br>based on DNA sequencing and analysis.
                                    </div>
                                    <a href="#">
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
                                    <a href="#">
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
                                        <span>ESG</span>
                                    </div>
                                    <div class="desc">
                                        We are committed to creating<br>
                                        a sustainable future for human health.
                                    </div>
                                    <a href="#">
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
                    <div class="title">Our Services</div>
                    <div class="desc">
                        <p>From genomic research to personal<br> healthcare, we provide world-class<br>professional services to create a healthier
                            <br> and happier life</p>
                    </div>
                </div>
            </div>
            <!-- e  비즈니스 -->

            <!--s 비즈니스 swiper-->
            <div class="business-box" data-aos="fade-up" data-aos-duration="2000">
                <div class="slider">
                    <div class="swiper-container _businessSlider">
                       <div class="swiper-wrapper">
                       		
							<c:forEach var="result" items="${ mainBusinessList }" varStatus="status">
								<c:if test="${result.expsrYn == 'Y'}">
								
			                       <div class="swiper-slide" style="background: url(${publicUrl}${result.imageFlpthMobl}) no-repeat center center / cover">
			                           <div class="text-area">
			                               <div class="font-h3">
			                                   	<span>${result.mainNttSjMo}</span><a href="#">
				                                   <a href="${result.linkUrl1 }">
				                                        <i class="icon-arrow-right-short"></i>
				                                   </a>
				                           		</a>	        
			                               </div>
			                               <div class="desc">
			                               		${fn:replace(result.mainNttCnMo, newline, "<br/>")}
			                               </div>
			                           </div>
			                       </div>
			                       
		                    	</c:if>      
		               		</c:forEach>
		               		
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

            <!-- s  People :2023리뉴얼--> 

             <div class="section-people">
                <div class="info-box" data-aos="fade-up" data-aos-duration="500">
                    <div class="title">People</div>        
                    <div class="desc">
                        <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">
                            Meet macrogen team, global partners, and<br> customers from all around the world.
                        </p>
                    </div>            
                </div>
                <div class="people_swiper _peopleSlider" data-aos="fade-up" data-aos-duration="500" data-aos-delay="100">
                    <div class="swiper-wrapper">
                    
                        <c:forEach var="result" items="${ mainPeopleList }" varStatus="status">
                        	<c:if test="${ result.viewYn == 'Y' }">
                        		<div class="swiper-slide bg0${status.index % 5 + 1}">
                        			 <div class="flip">
                        			 	<div class="front">
                        			 		<span class="img"><img src="${publicUrl}${result.imageFlpthMo}"></span>
                        			 		<div class="info-area">
                        			 			<span class="name" data-aos="fade-up" data-aos-duration="900" data-aos-delay="100">
		                                            <strong>${ result.peopleNm }</strong><br>
		                                                ${ result.peopleDept }
		                                        </span> 
		                                        <p href="#" class="btn btn-text" data-aos="fade-up" data-aos-duration="900" data-aos-delay="100">
		                                        	<span>MORE</span><i class="icon icon-arrow-right-long"></i>
		                                        </p>                      
                        			 		</div>
                        			 		<div class="back">
			                                    <div  data-aos="fade-up" data-aos-duration="900" data-aos-delay="100">
			                                        <span class="name"><strong>${ result.peopleNm }</strong> ${ result.peopleDept }</span>
			                                        <p class="txt">${ result.cnMo }</p>
			                                    </div>
			                                </div>
                        			 	</div>
                        			 </div>
                        		</div>
                        	</c:if>
                        </c:forEach>
                                               
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            
            <script>
	            var swiperScrollbar = null
	            $(document).ready(function (){
	                /*slide 영역*/
	                
	                var pSwiper;
	                setSlider2();
	                function setSlider2() {      
	                    
	                    var $container = $('._peopleSlider');
	                    var $conLi = $container.find('.swiper-slide');                                
	                    var conCnt = $conLi.length;
	                    let options = {};
	
	                    if (pSwiper !== undefined) {
	                        console.log('pSwiper');
	                        return false
	                    }   
	                    options = {
	                        centeredSlides: true, 
	                        slidesPerView: "auto",
	                        slideToClickedSlide : true,
	                        loop:true,
	                        loopedSlides: conCnt,
	                        loopAdditionalSlides: 10,
	                        allowTouchMove : true,
	                        speed:1000,
	                        lazy:true,
	                        
	                        on: {
	                            slideChangeTransitionStart: function () {
	                            $('.flip .back').removeClass('aos-init').removeClass('aos-animate');
	                            },
	                            slideChangeTransitionEnd: function () {
	                                $('.flip .back').show(0);
	                                AOS.init();
	                            },
	                        },
	                        
	                        pagination: {
	                            el: '.swiper-pagination',
	                            clickable: 'true',
	                            type: 'bullets',
	                            renderBullet: function (index, className) {
	                            return '<span class="' + className + '">' + '<i></i>' + '</span>';
	                        },
	
	                      },                      
	                    }       
	                    pSwiper = new Swiper($container, options)                                         
	                }                      
	
	                $('._peopleSlider .swiper-slide').on('click',function (){                             
	                    var swiper = $(this);
	                        //var sub = setTimeout(function() {
	                        //if(swiper.hasClass('swiper-slide-active')) {
	                if(!swiper.hasClass('rotate') ) {
	                    swiper.addClass("rotate").siblings().removeClass("rotate");
	                }
	                else{
	                    swiper.removeClass("rotate");
	                }    
	      		})
	
	        
	            // 리사이즈 END체크
	           window.addEventListener('resize', function(){
	                $('._peopleSlider').addClass("resize");
	                pSwiper.update();
	
	           });
	        
	         ;})
                                
            </script>
            <!-- e People :2023리뉴얼-->
						
			<!-- s  news & event-->
            <div class="section-media">
	        	<div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="1000">News &amp; Events</div>  
                    <div class="desc">
                        <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">
                            Keep up with our latest news as we pave<br>the way to a brighter future.
                        </p>
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
				       		
				       			<c:forEach var="result" items="${ mainSomlnkList }" varStatus="status">
				       				<div class="swiper-slide">
				       					<a href="${ result.somlnkUrl }" target="_blank">
					       					<div class="img">
					                            <img src="${publicUrl}${result.imageFlpth}" alt="${result.somlnkSj }" >
					                            <span class="sns">${result['somlnkCtgryCodeNm'.concat(lang)] }</span>
					                        </div>
					                        <div class="content">
					                        	<strong class="title">${ result.somlnkSj }</strong>
					                            <p>${ result.somlnkDt }</p> 
					                        </div>
					                        <div class="date"><fmt:formatDate value="${result.postDt }" pattern="yyyy.MM.dd" /></div>
				                        </a>
				       				</div>
				       			</c:forEach>
				       			
				   			</div>
				       		<div class="swiper-pagination"></div>
		           		</div>
		            </div>
            	</div>   
            	     
            </div>
            
            <script>
            new Swiper("._mediaSlider", {
                spaceBetween: 1,
                slidesPerView: "auto",
                slidesPerGroup: 1,
                grabCursor: true,
                centeredSlides: true, 
                loopFillGroupWithBlank : true, // 그룹수가 맞지 않을 경우 빈칸으로 메우기(3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듦)
                /* loop : true, */
                navigation: {
                    nextEl: "._btnNext",
                    prevEl: "._btnPrev",
                },

                pagination: {
                    el: '.swiper-pagination',
                    clickable: 'true',
                    type: 'bullets',
                    renderBullet: function (index, className) {
                    return '<span class="' + className + '">' + '<i></i>' + '</span>';
                },

              },                      
            });
		    </script>
			<!-- e  news & event-->
			
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
            
            <script>
                $('.map .pin').on('click', function () {
                    $(this).addClass('active')
                        .siblings().removeClass('active')
                })
            </script>

            <script>
                $('.section-map').ready(function(){
                    $('.inner').scrollLeft(400);
                });
            </script>
            
            <!-- e  global map -->
			
			<!-- s  global partners -->

            <div class="section-partners" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Global Partners</div>     
                    <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                        Global partners are with Macrogen.
                    </div>               
                </div>
                <ul class="partners-list"  data-aos="fade-up" data-aos-duration="500" data-aos-delay="400">
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_01.png" alt="일루미나">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_02.png" alt="팩바이오">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_03.png" alt="써모피셔">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_04.png" alt="지노믹스">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_05.png" alt="올링크">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_06.png" alt="애질런트">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_07.png" alt="나노스트링">
                    </li>  
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_08.png" alt="마이크로소프트">
                    </li>   
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_09.png" alt="트위스트">
                    </li>   
                    <li>                                                
                        <img src="/publishing/mobile-en/dist/img/main/img-global_10.png" alt="나노포어">
                    </li>                     
                </ul> 
            </div>

            <!-- e  global partners -->
				
            <script>
                $('.section-map').ready(function(){
                    $('.inner').scrollLeft(400);
                });
            </script>
        </div>
    </div>

	
</body>
