<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<script src="/publishing/pc-ko/dist/js/lib/jquery-ui.min.js"></script>
</head>
<body>

<div class="wrap main-wrap">


    <div class="full-bg main-bg">

        <header class="header header-bg-white header-main" id="header">
			<c:import url="/inc/header-inner-gnb" />
        </header>
        <script>
            var gnb2depth = $('#gnb2Depth .box')
            gnbIndex = $('#gnb li')

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
       <!--  <div class="intro">
            <div class="box">
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="500">유전체 맞춤 의학으로</p>
                <p class="text" data-aos="fade-left" data-aos-duration="600" data-aos-delay="1000">
                    <img src="../../img/main/txt-intro.png" alt="78억 인류와 세상을 향합니다."></p>
            </div>
        </div> -->
		
		<!-- s 메인비주얼 영역 -->
		
		<!-- 유튜브 링크 넣어서 테스트  -->
        <div class="swiper-container" id="key-swiper-container">
            <div class="swiper-wrapper" id="key-swiper-wrapper">
            	<!-- mp4일때 -->
               <!-- <div class="swiper-slide visual_00" data-swiper-autoplay="8000">
                	<video class="video" autoplay muted loop playsinline><source src="https://www.youtube.com/embed/PYVP4IpaeRo?controls=0&autoplay=1&mute=1" type="video/mp4"></video>
                    <div class="text-box">
                        <p class="text-gradient">최첨단 유전체 분석 시스템 세계 최초 도입</p>
                        <p class="slogan-sub">NovaSeq X Plus & PacBio Revio</p>
                        <p class="desc">일루미나와 팩바이오의 글로벌 론칭 파트너로서 <br>최신 시퀀싱 기술을 가장 빠르게 선보이며 $100 개인 유전체 시대를 이끌어갑니다</p>
                        <div class="btns">
                            <button type="button" onclick="location.href='https://www.macrogen.com/ko/newsroom/news/20000000215?pageIndex=1&searchKeyword'">NovaSeq X Plus</button>
                            <button type="button" onclick="location.href='https://www.macrogen.com/ko/newsroom/news/20000000225?pageIndex=1&searchKeyword='">Revio</button>
                        </div>
                    </div>
                </div> -->
               	<c:forEach var="result" items="${ mainBannerList }" varStatus="status">     
	            	<c:if test="${result.expsrYn == 'Y'}">
		                <div class="swiper-slide visual" data-swiper-autoplay="8000">
		                	<c:choose>
		                		<c:when	test="${result.mediaUrlPc != null && result.mediaUrlPc != '' }">
			                		 <iframe frameborder="0" height="100%" width="100%" src="https://www.youtube.com/embed/eUzXNxvAsgg?controls=0&mute=1&autoplay=1&modestbranding=1" 
			                		 allow="autoplay; accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>			                		 
					                 </iframe>		
					                 	<div class="text-box">
				                        	<p class="slogan-sub">${result.mainNttSjPc}</p>
				                        	<p class="desc">${fn:replace(result.mainNttCnPc, newLine, "<br/>")}</p>
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
					            	<div class="visual" style="background: url(http://www.macrogen.eluocnc.com:9001/${publicUrl}${result.imageFlpthPc}) no-repeat center center / cover"></div>
					            		<div class="text-box">
				                        	<p class="slogan-sub">${result.mainNttSjPc}</p>
				                        	<p class="desc">${fn:replace(result.mainNttCnPc, newLine, "<br/>")}</p>
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
               	</c:forEach>
               	
            </div>
            
            <div class="scroll-wrap">
               <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
           </div>        
                    
			<!-- If we need pagination -->
  			<div class="swiper-pagination" id="key-swiper-pagination"></div>
  			
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev swiper_btn"></div>
            <div class="swiper-button-next swiper_btn"></div>	
            							
			<%-- <c:if test="${ result.expsrYn == 'Y' }">			
				<c:choose>
					<c:when test="${ mainBannerList.size() < 1 }">			
	     				     					
					</c:when>
				</c:choose>
			</c:if> --%>
           
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
                            delay: 4700,
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
            }
        </script>
       	</div>
        
		<!-- s Humanizing 영역 -->
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
	                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="400">유전체 정보 및 데이터 분석 기술을 바탕으로
	                            </p>
	                            <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="550">인류의 건강과 행복에 이바지합니다
	                            </p>
	                            <!-- <p data-aos="fade-up" data-aos-duration="600" data-aos-delay="700">생명공학기업 마크로젠 입니다</p> -->
	                        </div>
	                        <a href="#" class="btn btn-text" data-aos="fade-up" data-aos-duration="900"
	                           data-aos-delay="1000"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a>
	                    </div>
	                </div>
	                <div class="shortcuts-box" data-aos="fade-up" data-aos-duration="500">
	                    <ul class="btn-list clearfix">
	                        <li>
	                            <a href="#">
	                                <p>기업개요</p>
	                                <p class="sub-text">유전체 분석 기반 글로벌 디지털 <br> 헬스케어 기업 마크로젠입니다</p><!--  People :2023리뉴얼 -->
	                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
	                                </p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#">
	                                <p>글로벌 마크로젠</p>
	                                <p class="sub-text">전세계 유전체 분석 연구를 이끄는 <br>글로벌 파트너와 함께 합니다</p><!--  People :2023리뉴얼 -->
	                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
	                                </p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#">
	                                <p>ESG</p>
	                                <p class="sub-text">지속가능한 미래를 위해 노력합니다</p><!--  People :2023리뉴얼 -->
	                                <p class="btn btn-circle btn-white btn-md"><i class="icon icon-arrow-right-short"></i>
	                                </p>
	                            </a>
	                        </li>
	                    </ul>
	                    <div class="bg_section bg0"></div>
	
	                    <div class="bg_section bg1 active">
	                        <video class="video" autoplay muted loop>
	                            <source src="../../img/video/main_기업개요.mp4" type="video/mp4">
	                        </video>
	                    </div>
	                    <div class="bg_section bg2">
	                        <video class="video" autoplay muted loop>
	                            <source src="../../img/video/main_글로벌마크로젠.mp4" type="video/mp4">
	                        </video>
	                    </div>
	                    <div class="bg_section bg3">
	                        <video class="video" autoplay muted loop>
	                            <source src="../../img/video/main_ESG.mp4" type="video/mp4">
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
				<!-- s  business  slide -->
				<div class="section-business">
					<div class="info-box">
						<div class="title" data-aos="fade-up" data-aos-duration="500">Our Business</div>
						<div class="desc">
							<p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">연구 분석에서 퍼스널 헬스케어까지 세계적 수준의 전문 서비스를 제공하여
								<br>더 건강하고 행복한 삶을 만들어갑니다.</p> <!--  People :2023리뉴얼 -->
						</div>
					</div>
					<div class="business" data-aos="fade-left" data-aos-duration="500" data-aos-delay="200" >
					<div class="slider">	
						<div class="swiper-container _businessSlider">
							<div class="swiper-wrapper">
							
								<c:forEach var="result" items="${ mainBusinessList }" varStatus="status">
									<c:if test="${result.expsrYn == 'Y'}">
										<div class="swiper-slide" style="background: url(http://cms.macrogen.eluocnc.com:9001/${publicUrl}${result.imageFlpthPc}) no-repeat center center / cover">
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
				
				<!-- e  business  slide -->
				
				<!-- s  People :2023리뉴얼 -->
	            <div class="section-people">
	                <div class="info-box" data-aos="fade-up" data-aos-duration="500">
	                    <div class="title">People</div>        
	                    <div class="desc">
	                        <p data-aos="fade-up" data-aos-duration="500" data-aos-delay="200">
	                            전세계 곳곳에 위치한 마크로젠 팀, 글로벌 파트너, 고객들을 만나보세요
	                        </p>
	                    </div>            
	                </div>               

	                <div class="people_swiper _peopleSlider" data-aos="fade-up" data-aos-duration="500" data-aos-delay="100">
	                    <div class="swiper-wrapper">
		                	<c:forEach var="result" items="${ mainPeopleList }" varStatus="status">
		                		<c:if test="${ result.viewYn == 'Y' }">
			                        <div class="swiper-slide bg0${status.index % 5 +1}">
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
			                                        <span class="name"><strong>${ result.peopleNm }</strong> ${ result.peopleDept }</span>
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
	                    setSlider2();
	                    function setSlider2() {      
	                        var pSwiper;
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
	                            // on: {
	                            //     slideChangeTransitionEnd: function() {
	                            //         var $slides = $container.find('.swiper-slide');
	                            //         $slides.removeClass('rotate');
	                            //         var $activeSlide = $container.find('.swiper-slide-active');
	                            //         $activeSlide.addClass('rotate');
	                            //     }
	                            // }                   
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
	                });
            	</script>
            <!-- e  People :2023리뉴얼-->    	
			
			 <!-- s  media -->
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
										<div class="content">${result.somlnkSj }</div>
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
	
			<!-- s  global map -->
            <div class="section-map" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <div class="inner">
                    <div class="info-box">
                        <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Global Network</div>
                        <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                            국내 지사를 포함하여 세계 각지의 글로벌 네트워크를 통해<br>현지 고객의 다양한 요구에 부합하는 맞춤형 서비스를 신속하고 체계적으로 제공합니다.<!--  People :2023리뉴얼 -->
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
            <!-- e  global map -->
            
            <!-- s  People :2023리뉴얼 -->
            <div class="section-partners" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <div class="info-box">
                    <div class="title" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">Global Partners</div>     
                    <div class="desc" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                       세계적인 파트너들이 마크로젠과 함께 합니다
                    </div>               
                </div>
                <ul class="partners-list"  data-aos="fade-up" data-aos-duration="500" data-aos-delay="400">
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_01.png" alt="일루미나"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_02.png" alt="팩바이오"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_03.png" alt="써모피셔"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_04.png" alt="지노믹스"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_05.png" alt="올링크"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_06.png" alt="애질런트"></a>
                    </li>                    
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_07.png" alt="나노스트링"></a>
                    </li>  
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_08.png" alt="마이크로소프트"></a>
                    </li>   
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_09.png" alt="트위스트"></a>
                    </li>   
                    <li>                                                
                        <a href=""><img src="../../img/main/img-global_10.png" alt="나노포어"></a>
                    </li>                     
                </ul> 
            </div>
            <!-- e  People :2023리뉴얼--> 
		</div>
	</div>        
	
	<c:import url="/inc/footer" />
    <a href="#" class="btn btn-text btn-totop">
    <i class="icon icon-arrow-top-long"></i> 
    <span>TOP</span>
	
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

</div><!-- 첫시작 -->
 
</body>
