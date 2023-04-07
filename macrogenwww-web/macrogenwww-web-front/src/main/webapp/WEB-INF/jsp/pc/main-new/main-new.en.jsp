   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<script src="/publishing/pc-ko/dist/js/lib/jquery-ui.min.js"></script>
	<script type="text/javascript" src="https://unpkg.com/youtube-background/jquery.youtube-background.min.js"></script>
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
            
               	<c:forEach var="result" items="${ mainBannerList }" varStatus="status">     
	            	<c:if test="${result.expsrYn == 'Y'}">
		                <div class="swiper-slide">
		                	<c:choose>
		                		<c:when	test="${result.mediaUrlPc != null && result.mediaUrlPc != '' }">
			                		 <!-- <iframe class="visual" frameborder="0" height="100%" width="100%" src="${result.mediaUrlPc}" 
			                		 allow="autoplay; accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>			                		 
					                 </iframe>		
									  -->
									 	<div id="ytbg" data-vbg="${result.mediaUrlPc}"></div>
					                 	<div class="text-box">
				                        	<p class="slogan-sub">${result.mainNttSjPc}</p>
				                        	<p class="desc">${fn:replace(result.mainNttCnPc, newline, "<br/>")}</p>
				                        	<c:choose>
				                        		<c:when test="${result.btYn != 0 && result.btYn == 1}">
						                       		<div class="btns">
						                            	<button type="button" onclick="location.href='${result.linkUrl1}'">${result.btSjPc1}</button>
						                        	</div>
				                        		</c:when>
				                        		<c:when test="${result.btYn != 0 && result.btYn == 2}">	                        	
						                        	<div class="btns">
						                            	<button type="button" onclick="location.href='${result.linkUrl1}' ">${result.btSjPc1}</button>
						                            	<button type="button" onclick="location.href='${result.linkUrl2}' ">${result.btSjPc2}</button>
						                        	</div>
				                        		</c:when>	                        
				                        	</c:choose>
				                    	</div>			            	
		                		</c:when>
		                		<c:otherwise>
					            	<div class="visual" style="background: url(${publicUrl}${result.imageFlpthPc}) no-repeat center center / cover"></div>
					            		<div class="text-box">
				                        	<p class="slogan-sub">${result.mainNttSjPc}</p>
				                        	<p class="desc">${fn:replace(result.mainNttCnPc, newline, "<br/>")}</p>
				                        	<c:choose>
				                        		<c:when test="${result.btYn != 0 && result.btYn == 1}">
						                       		<div class="btns">
						                            	<button type="button" onclick="location.href='${result.linkUrl1}'">${result.btSjPc1}</button>
						                        	</div>
				                        		</c:when>
				                        		<c:when test="${result.btYn != 0 && result.btYn == 2}">	                        	
						                        	<div class="btns">
						                            	<button type="button" onclick="location.href='${result.linkUrl1}' ">${result.btSjPc1}</button>
						                            	<button type="button" onclick="location.href='${result.linkUrl2}' ">${result.btSjPc2}</button>
						                        	</div>
				                        		</c:when>	                        
				                        	</c:choose>
				               			</div>
		                		</c:otherwise>
		                	</c:choose>		                			                	
		                   
		                </div>               	
	             	</c:if>
	             	
		           <div class="scroll-wrap">
		               <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
		           </div>        
		                    
					<!-- If we need pagination -->
		  			<div class="swiper-pagination" id="key-swiper-pagination"></div>	
		  			        							
					<c:if test="${ result.expsrYn == 'Y' &&  mainBannerList.size() > 1 }">
						<!-- If we need navigation buttons -->
		           		<div class="swiper-button-prev swiper_btn"></div>
		            	<div class="swiper-button-next swiper_btn"></div>	  					
					</c:if>
               	</c:forEach>
               	
            </div>            
        </div>
        
        <script>        
            var $container = $('#key-swiper-container');
            var $conLi = $container.find('.swiper-slide');
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
                $('.stock_information').delay(1500).fadeIn()
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
                    }   
                    $('.swiper_btn').delay(1000).fadeIn()     
                }

                mainSwiper = new Swiper($container, options)
                step2()
				
                jQuery('[data-vbg]').youtube_background();
            }
        </script>
    </div>

	<!-- s Humanizing  -->
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
                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="400">We contribute to the health, happiness, and well-being of  </p>
                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="550"> humanity, leveraging DNA sequencing data analysis technology</p>
                           <!-- <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="700">human genome information and data analysis technology.</p>-->
                        </div>
                        <a href="#" class="btn btn-text" data-aos="fade-up" data-aos-duration="900"
                           data-aos-delay="1000"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a>
                    </div>
                </div>
                <div class="shortcuts-box" data-aos="fade-up" data-aos-duration="500">
                    <ul class="btn-list clearfix">
                        <li>
                            <a href="/${rc.locale.language }/company/overview">
                                <p>About Macrogen</p>
                                <p class="sub-text">Macrogen is a global digital healthcare company <br> based on DNA sequencing and analysis.</p><!--  People :2023리뉴얼 -->
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/${rc.locale.language }/company/global-network">
                                <p>Global Macrogen</p>
                                <p class="sub-text">We work with global leaders in <br>genetic analysis and research</p><!--  People :2023리뉴얼 -->
                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/${rc.locale.language }/company/esg-management">
                                <p>ESG</p>
                                <p class="sub-text">We are committed to creating<br>a sustainable future for human health</p><!--  People :2023리뉴얼 -->
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
            <!-- e  Humanizing -->

            <!-- s  business slide -->
            <div class="section-business">
            	<div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="500">OUR SERVICES</div>
                    <div class="desc">
                        <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">
                            From genomic research to personal healthcare,
                            <br>we provide world-class professional services to create a healthier and happier life
                        </p>
                    </div>
                </div> 	
  				<div class="business" data-aos="fade-left" data-aos-duration="500" data-aos-delay="200" >
					<div class="slider">	
						<div class="swiper-container _businessSlider">
							<div class="swiper-wrapper">
							
								<c:forEach var="result" items="${ mainBusinessList }" varStatus="status">
									<c:if test="${result.expsrYn == 'Y'}">
										<div class="swiper-slide" style="background: url(${publicUrl}${result.imageFlpthPc}) no-repeat center center / cover">
											<div class="text-area">
												<div class="title">
													<span>${ result.mainNttSjPc }</span><a href="${result.linkUrl1 }">
														<span class="btn btn-circle btn-white btn-md">
															<i class="icon icon-arrow-right-short"></i>
														</span>
													</a>  
												</div>
												<div class="desc">
													${fn:replace(result.mainNttCnPc, newline, "<br/>")}
												</div>	
											</div> 
										</div>	  
									</c:if>	        
								</c:forEach>	
				
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
					$('.business').css("cursor","url('/publishing/pc-ko/dist/img/main/img-cursor.cur'), auto");
				});
			</script>
			<!-- e  business slide -->	

            <!-- s  People :2023리뉴얼 -->
            
			<div class="section-people">
				<div class="info-box" data-aos="fade-up" data-aos-duration="500">
                    <div class="title">People</div>        
                    <div class="desc">
                        <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">
                            Meet macrogen team, global partners, and customers from all around the world.
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
		                                    <span class="img"><img src="${publicUrl}${result.imageFlpthPc}" alt="1"></span>      
		                                    <div class="info-area">
		                                        <span class="name" data-aos="fade-up" data-aos-duration="900" data-aos-delay="100">
		                                            <strong>${ result.peopleNm }</strong><br>
		                                                ${ result.peopleDept }
		                                        </span>                                            
		                                        <p href="#" class="btn btn-text" data-aos="fade-up" data-aos-duration="900" data-aos-delay="100"><span>MORE</span><i class="icon icon-arrow-right-long"></i></p>                      
		                                    </div>       
		                                </div>
		                                <div class="back">
		                                    <div  data-aos="fade-up" data-aos-duration="900" data-aos-delay="100">
		                                        <span class="name"><strong>${ result.peopleNm }</strong><p>${ result.peopleDept }</p></span>
		                                        <p class="txt">${ result.cnPc }</p>
		                                    </div>
		                                </div>
		                            </div>                            
		                        </div>    
		                	 </c:if>      			               
		               	</c:forEach>
		               	
					</div>
				</div>
			</div>
			
			<script>
                $(function(){                
                   var pSwiper;
                   setSlider2();
                   function setSlider2() {      
                       // var pSwiper;
                       var $container = $('._peopleSlider');
                       var $conLi = $container.find('.swiper-slide');                                
                       var conCnt = $conLi.length;
                       let options = {};

                       if (pSwiper !== undefined) {
                           console.log('pSwiper');
                           return false
                       }

                       var html = $("._peopleSlider .swiper-wrapper").html();                        
                       $("._peopleSlider .swiper-wrapper").append(html);                        
                       
                       if(conCnt < 4){
                           $container.addClass("sm");                               
                       }    
                       options = {
                           // observer: true,
                           // observeParents: true,
                           centeredSlides: true, 
                           slidesPerView: "auto",
                           slideToClickedSlide : true,
                           loop:true,
                           loopedSlides: conCnt,
                           loopAdditionalSlides: 10,
                           allowTouchMove : true,
                           speed: 1000,
                           lazy: true,
                           on: {
                               slideChangeTransitionStart: function () {
                               $('.flip .back').removeClass('aos-init').removeClass('aos-animate');
                               },
                               slideChangeTransitionEnd: function () {
                                   $('.flip .back').show(0);
                                   AOS.init();
                               },
                           }
                       }       
                       pSwiper = new Swiper($container, options)               
                   }          
                   
                   $('._peopleSlider .swiper-slide').on('click',function (){                             
                       var swiper = $(this);                        
                       if(!swiper.hasClass('rotate') ) {
                           swiper.addClass("rotate").siblings().removeClass("rotate");
                       }
                       else{
                           swiper.removeClass("rotate");
                       }                                                                
                   })    
                  
                   //resize
                   window.addEventListener('resize', function(){
                       $('._peopleSlider').addClass("resize");
                       pSwiper.update();
                   })
               });
           	</script>
            <!-- e  People :2023리뉴얼-->   
			
			<!-- s  news -->
			
			<div class="section-media">
            	<div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="1000">News &amp; Events</div>                    
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
						});
					</script>
				</div>
			</div>
			
			<!-- e  news -->
			
			
            <!-- s  global map -->
            <div class="section-map" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
	            <div class="inner">
	                <div class="info-box">
	                    <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Global Network</div>
	                    <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
	                        We provide personalized solutions to meet the diverse needs of local customers
	                            <br>around the world in a timely manner<!--  People :2023리뉴얼 -->
	                    </div>
	                </div>

	                <div class="map">
                        <a class="pin amsterdam" onClick="location.href='/${rc.locale.language}/company/global-network#amsterdam'"><i></i><span>Amsterdam, Netherlands</span></a>
                      	<a class="pin leuven" onClick="location.href='/${rc.locale.language}/company/global-network#leuven'"><i></i><span>Leuven, Belgium</span></a>
                      	<a class="pin paris" onClick="location.href='/${rc.locale.language}/company/global-network#paris'"><i></i><span>Paris, France</span></a>
                      	<a class="pin milan" onClick="location.href='/${rc.locale.language}/company/global-network#italy'"><i></i><span>Milan, Italy</span></a>
                      	<a class="pin poland" onClick="location.href='/${rc.locale.language}/company/global-network#poland'"><i></i><span>Szczecin, Poland</span></a>
                        <a class="pin madrid" onClick="location.href='/${rc.locale.language}/company/global-network#madrid'"><i></i><span>Madrid, Spain</span></a>
                        <a class="pin seoul" onClick="location.href='/${rc.locale.language}/company/global-network#seoul'"><i></i><span>Seoul, Korea</span></a>
                        <a class="pin songdo" onClick="location.href='/${rc.locale.language}/company/global-network#songdo'"><i></i><span>Songdo, Korea</span></a>
                        <a class="pin daejeon" onClick="location.href='/${rc.locale.language}/company/global-network#daejeon'"><i></i><span>Daejeon, Korea</span></a>
                        <a class="pin tokyo" onClick="location.href='/${rc.locale.language}/company/global-network#tokyo'"><i></i><span>Tokyo, japan</span></a>
                        <a class="pin biopolis" onClick="location.href='/${rc.locale.language}/company/global-network#biopolis'"><i></i><span>Biopolis, Singapore</span></a>
                        <a class="pin boston" onClick="location.href='/${rc.locale.language}/company/global-network#rockville'"><i></i><span>Boston, USA</span></a>
                        <a class="pin newyork" onClick="location.href='/${rc.locale.language}/company/global-network#rockville'"><i></i><span>New york, USA</span></a>
                        <a class="pin rockville" onClick="location.href='/${rc.locale.language}/company/global-network#rockville'"><i></i><span>Rockville, USA</span></a>
                        <a class="pin virginia" onClick="location.href='/${rc.locale.language}/company/global-network#rockville'"><i></i><span>Virginia, USA</span></a>
                        <a class="pin santiago" onClick="location.href='/${rc.locale.language}/company/global-network#santiago'"><i></i><span>Santiago, Chile</span></a>
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
                        <img src="/publishing/pc-ko/dist/img/main/img-global_01.png" alt="일루미나">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_02.png" alt="팩바이오">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_03.png" alt="써모피셔">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_04.png" alt="지노믹스">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_05.png" alt="올링크">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_06.png" alt="애질런트">
                    </li>                    
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_07.png" alt="나노스트링">
                    </li>  
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_08.png" alt="마이크로소프트">
                    </li>   
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_09.png" alt="트위스트">
                    </li>   
                    <li>                                                
                        <img src="/publishing/pc-ko/dist/img/main/img-global_10.png" alt="나노포어">
                    </li>                     
                </ul>
	        </div>
        	<!-- e  global partners -->
			

        </div>
    </div>

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

</body>
