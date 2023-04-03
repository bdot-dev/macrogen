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
           				<div class="swiper-slide visual" data-swiper-autoplay="8000">
           					
           					<c:choose>
		               			<c:when	test="${result.mediaUrlMo != null && result.mediaUrlMo != '' }">
	               					<div class="visual visual_00">
	               						<div id="player"></div>
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
	               					</div>
		               			</c:when>
		               			
		               			<c:otherwise>
		               				<div class="visual" style="background: url(http://www.macrogen.eluocnc.com:9001/${publicUrl}${result.imageFlpthMobl}) 
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
        
        <script>
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
                    }   
                    //$('.swiper_btn').delay(1000).fadeIn()     
                }

                mainSwiper = new Swiper($container, options)
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
                        <p>유전체 정보 및 데이터 분석 기술을 바탕으로<br>인류의 건강과 행복에 이바지합니다</p>
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
                                    <source src="/publishing/mobile-ko/dist/img/video/M_main_기업개요.mp4" type="video/mp4">
                                </video>
                                <div class="text-area">
                                    <div class="title">
                                        <span>기업개요</span>
                                    </div>
                                    <div class="desc">
                                        대한민국 바이오 벤처 대표기업<br/>마크로젠 입니다
                                    </div>
                                    <a href="#">
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
                                    <a href="#">
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
                        <p>연구 분석에서 퍼스널 헬스케어까지<br>세계적 수준의 전문 서비스를 제공하여<br>더 건강하고 행복한 삶을 만들어갑니다.</p>
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
			                       <div class="swiper-slide" style="background: url(http://www.macrogen.eluocnc.com:9001/${publicUrl}${result.imageFlpthMobl}) no-repeat center center / cover">
			                           <div class="text-area">
			                               <div class="font-h3">
			                                   <span>${result.mainNttSjMo}</span>
			                                   <a href="${result.linkUrl1 }">
			                                        <i class="icon-arrow-right-short"></i>
			                                   </a>
			                               </div>
			                               <div class="desc">${fn:replace(result.mainNttCnMo, newline, "<br/>")}</div>
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
                    $('.business').css("cursor","url('/publishing/mobile-ko/dist/img/main/img-cursor_3.cur'), auto");
                });
            </script>
			
			<!-- s  People :2023리뉴얼--> 

             <div class="section-people">
                <div class="info-box" data-aos="fade-up" data-aos-duration="500">
                    <div class="title">People</div>        
                    <div class="desc">
                        <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">
                            전세계 곳곳에 위치한 마크로젠 팀, 글로벌 파트너, <br>고객들을 만나보세요
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
                        			 		<span class="img"><img src="http://www.macrogen.eluocnc.com:9001/${publicUrl}${result.imageFlpthMo}"></span>
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
               var pSwiper;
               var resizeCheck;
               $(document).ready(function (){
                   /*slide 영역*/
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
                           loopedSlides: 30,
                           loopAdditionalSlides: 10,
                           allowTouchMove : true,
                           spaceBetween: 70,
                           
                          
                           // autoplay: {
                           //     delay: 1000,
                           //     disableOnInteraction: false,
                           // },
                           speed: 1000,
                           lazy: true,      
                           
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

                   
		                //}
		            //}, 300);     
		            console.log("resizeEnd");
		            // 리사이즈 END체크
		            $(window).resize(function(){
		                if(resizeCheck){ //계속 리사이즈중이면 clear
		                    clearTimeout(resizeCheck); 
		                };
		        
		                //0.5초이상 리사이즈 지속하지않으면 실행
		                    resizeCheck = setTimeout(function(){
		                    console.log("resizeEnd");
		                    pSwiper.update(); //스와이퍼 업데이트
		                    
		                },500);
		            });
		      
		        })
		
		      
		    ;})
			                    
            </script>
            <!-- e People :2023리뉴얼--> 

			<!-- s  news & event-->
            <div class="section-media">
	        	<div class="info-box">
                   <div class="title" data-aos="fade-up" data-aos-duration="1000">News &amp; Events</div>  
                   <div class="desc">
                       <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">
                          다양한 채널을 통해<br>마크로젠의 소식을 만나실 수 있습니다
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
					                            <img src="http://www.macrogen.eluocnc.com:9001/${publicUrl}${result.imageFlpth}" alt="${result.somlnkSj }" >
					                            <span class="sns">${result['somlnkCtgryCodeNm'.concat(lang)] }</span>
					                        </div>
					                        <div class="content">
					                        	<strong class="title">${ result.somlnkSj }</strong>
					                            ${ result.somlnkDt }
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
		            spaceBetween: 52,
		            slidesPerView: "auto",
		            slidesPerGroup: 3,
		            grabCursor: true,
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
            
            <!-- s  global map -->
            <div class="section-map" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <div class="inner">
                    <div class="info-box">
                        <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Global Network</div>
                        <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                           
                            국내 지사를 포함하여 세계 각지의 글로벌 네트워크를<br> 통해 현지 고객의다양한 요구에 부합하는 맞춤형<br>
                            서비스를 더욱  신속하고 체계적으로 제공합니다
                           
                           
                           
                            <!--  People :2023리뉴얼 -->
                        </div>
                    </div>
                    <!-- <div class="map">
                        <a class="pin amsterdam" onClick="location.href='01Macrogen_06글로벌네트워크.html#amsterdam'"><i></i><span>Amsterdam, The Netherlands</span></a>
                        <a class="pin seoul" onClick="location.href='01Macrogen_06글로벌네트워크.html#seoul'"><i></i><span>Seoul, Korea</span></a>
                        <a class="pin boston" onClick="location.href='01Macrogen_06글로벌네트워크.html#rockville'"><i></i><span>Boston, USA</span></a>
                        <a class="pin tokyo" onClick="location.href='01Macrogen_06글로벌네트워크.html#tokyo'"><i></i><span>Tokyo, japan</span></a>
                        <a class="pin virginia" onClick="location.href='01Macrogen_06글로벌네트워크.html#rockville'"><i></i><span>Virginia, USA</span></a>
                        <a class="pin madrid" onClick="location.href='01Macrogen_06글로벌네트워크.html#madrid'"><i></i><span>Madrid, Spain</span></a>
                        <a class="pin kyoto" onClick="location.href='01Macrogen_06글로벌네트워크.html#tokyo'"><i></i><span>Kyoto, japan</span></a>
                        <a class="pin newyork" onClick="location.href='01Macrogen_06글로벌네트워크.html#rockville'"><i></i><span>New york, USA</span></a>
                        <a class="pin synapse" onClick="location.href='01Macrogen_06글로벌네트워크.html#synapse'"><i></i><span>Synapse, Singapore</span></a>
                        <a class="pin rockville" onClick="location.href='01Macrogen_06글로벌네트워크.html#rockville'"><i></i><span>Rockville, USA</span></a>
                    </div> -->
                    <div class="map">
                        <a class="pin amsterdam" onclick="location.href='01Macrogen_06글로벌네트워크.html#amsterdam'"><i></i><span>Amsterdam, Netherlands</span></a>
                      	<a class="pin leuven" onclick="location.href='01Macrogen_06글로벌네트워크.html#leuven'"><i></i><span>Leuven, Belgium</span></a>
                      	<a class="pin paris" onclick="location.href='01Macrogen_06글로벌네트워크.html#paris'"><i></i><span>Paris, France</span></a>
                      	<a class="pin milan" onclick="location.href='01Macrogen_06글로벌네트워크.html#italy'"><i></i><span>Milan, Italy</span></a>
                      	<a class="pin poland" onclick="location.href='01Macrogen_06글로벌네트워크.html#poland'"><i></i><span>Szczecin, Poland</span></a>
                        <a class="pin madrid" onclick="location.href='01Macrogen_06글로벌네트워크.html#madrid'"><i></i><span>Madrid, Spain</span></a>
                        <a class="pin seoul" onclick="location.href='01Macrogen_06글로벌네트워크.html#seoul'"><i></i><span>Seoul, Korea</span></a>
                        <a class="pin songdo" onclick="location.href='01Macrogen_06글로벌네트워크.html#songdo'"><i></i><span>Songdo, Korea</span></a>
                        <a class="pin daejeon" onclick="location.href='01Macrogen_06글로벌네트워크.html#daejeon'"><i></i><span>Daejeon, Korea</span></a>
                        <a class="pin tokyo" onclick="location.href='01Macrogen_06글로벌네트워크.html#tokyo'"><i></i><span>Tokyo, japan</span></a>
                        <a class="pin biopolis" onclick="location.href='01Macrogen_06글로벌네트워크.html#biopolis'"><i></i><span>Biopolis, Singapore</span></a>
                        <a class="pin boston" onclick="location.href='01Macrogen_06글로벌네트워크.html#rockville'"><i></i><span>Boston, USA</span></a>
                        <a class="pin newyork" onclick="location.href='01Macrogen_06글로벌네트워크.html#rockville'"><i></i><span>New york, USA</span></a>
                        <a class="pin rockville" onclick="location.href='01Macrogen_06글로벌네트워크.html#rockville'"><i></i><span>Rockville, USA</span></a>
                        <a class="pin virginia" onclick="location.href='01Macrogen_06글로벌네트워크.html#rockville'"><i></i><span>Virginia, USA</span></a>
                        <a class="pin santiago" onclick="location.href='01Macrogen_06글로벌네트워크.html#santiago'"><i></i><span>Santiago, Chile</span></a>
                    </div>
                    <script>
                        $('.map .pin').on('click', function () {
                            $(this).addClass('active')
                                .siblings().removeClass('active')
                        })
                    </script>
                </div>
            </div>
            
            <script>
                $('.section-map').ready(function(){
                    $('.inner').scrollLeft(400);
                });
            </script>
            <!--global map -->
            
            
            <!-- s  global partners -->

            <div class="section-partners" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Global Partners</div>     
                    <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                       세계적인 파트너들이 마크로젠과 함께 합니다
                    </div>               
                </div>
                <ul class="partners-list"  data-aos="fade-up" data-aos-duration="500" data-aos-delay="400">
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_01.png" alt="일루미나"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_02.png" alt="팩바이오"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_03.png" alt="써모피셔"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_04.png" alt="지노믹스"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_05.png" alt="올링크"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_06.png" alt="애질런트"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_07.png" alt="나노스트링"></a>
                    </li>  
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_08.png" alt="마이크로소프트"></a>
                    </li>   
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_09.png" alt="트위스트"></a>
                    </li>   
                    <li>                                                
                        <a href=""><img src="/publishing/pc-ko/dist/img/main/img-global_10.png" alt="나노포어"></a>
                    </li>                     
                </ul> 
            </div>

          <!-- e  global partners -->
        </div>
    </div>


</body>
