<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg">
        <header class="header">
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
                // $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
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
            <h2 class="font-h4">사회공헌</h2>
            <div class="font-slogan">함께하는 미래를 위해 사회적 책임을 실천합니다</div>
            <!-- <div class="font-h7-r">지구와 인류의 건강한 삶을 위해<br>노력합니다 </div> -->
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen ethical-management">
            <!-- s  문구 -->
            <div class="section-description">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h3">마크로젠人은 지속가능한 지구를 생각합니다</div>
                    <div class="font-body-h">마크로젠 임직원은 생활 속 환경 보호, 사회적 책임 활동 등 자발적으로 ESG 캠페인에 참여하며 친환경적인 사내 문화를 조성하고 있습니다. 더 나은 세상을 만들어 나가기 위해 마크로젠 임직원은 적극적으로 ESG 활동을 실천하고 있습니다.</div>
                </div>
            </div>
            <!-- e  문구 -->
            
            
			<!-- s  하나 -->
            <div class="section-heading" data-aos="fade-up" data-aos-duration="2000" style="background-image: url(/publishing/mobile-ko/dist/img/esg/bg-ethical-banner-3.png);"></div>
            <!-- e 하나 -->
            
             <div class="esgtitle" data-aos="fade-up" data-aos-duration="2000">
                <div class="list-header">
                    <div class="font-h3">ESG 서포터즈</div>
                </div>
                <div class="list-body">
                    <div class="desc">임직원들의 자발적 참여로 구성된 ESG 서포터즈는 지속가능한 지구를 위한 공동의 목표를 가지고 있으며 1년의 임기로 활동합니다. 환경 보호, 사회적 책임 활동 등 캠페인을 직접 기획하며 많은 임직원들이 ESG 활동에 동참 할 수 있도록 다양한 프로그램을 만들고 있습니다.</div>
            	</div>            	         
             </div>           
             <div class="esgslide" data-aos="fade-up" data-aos-duration="2000">
                <div class="slider">
                    <div class="swiper-container _supporterSlider">
                        <div class="swiper-wrapper">
							<c:forEach var="result" items="${ esgList }" varStatus="status">
	                             <div class="swiper-slide item">	                              
                                     <div class="img">
                                         <img src="${publicUrl}${result.imageFlpth}" alt="${result.cntntsSj }">	                                        
                                     </div>
                                     <div class="content">${result.cntntsSj }</div>
                                     <div class="date"><fmt:formatDate value="${result.postDt }" pattern="yyyy.MM" /></div>	                               
	                             </div>
							</c:forEach>
						</div>
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <script>
                    new Swiper("._supporterSlider", {
                        slidesPerView: "auto",
                        observer: true,
                        observeParents: true,
                        scrollbar: {
                            el: ".swiper-scrollbar",
                        }
                    });
                </script>
           	</div>  
           	
           	<div class="esgsubtitle" data-aos="fade-up" data-aos-duration="2000">
                <div class="list-header">
                    <div class="font-h3">마크로젠은 사회적 책임을 위해 다양한 파트너와 동행합니다</div>
                </div>
                <div class="list-body">
                    <div class="desc">마크로젠은 유전체 분석 분야의 인재 양성 및 유전체 분석 기술을 활용하여 사회적 책임을 다하려 합니다. 비영리기관, 지자체 및 대학 등 다양한 파트너와 협업하며 지속가능한 사회적 발전에 도움이 되도록 최선을 다하겠습니다.</div>
            	</div>            	         
             </div>  
            
            <!-- s  둘 -->
            <div class="section-heading" data-aos="fade-up" data-aos-duration="2000" style="background-image: url(/publishing/mobile-ko/dist/img/esg/bg-ethical-banner-4.png);"></div>
            <!-- e 둘 -->
            
            <div class="esgtitle" data-aos="fade-up" data-aos-duration="2000">
                <div class="list-header">
                    <div class="font-h3">지역 사회 프로그램</div>
                </div>
                <div class="list-body">
                    <div class="desc">마크로젠은 유전체 분야 전문기술인력 양성, 소외계층 유전자 검사 지원 및 인류의 건강한 삶을 위하여 다양한 분야의 공익 활동을 추진해 나가고 있습니다.</div>
            	</div>            	         
             </div>           
             <div class="esgslide" data-aos="fade-up" data-aos-duration="2000">
                <div class="slider">
                    <div class="swiper-container _communitySlider">
                        <div class="swiper-wrapper">
							<c:forEach var="result" items="${ communityList }" varStatus="status">
	                             <div class="swiper-slide item">	                              
                                     <div class="img">
                                         <img src="${publicUrl}${result.imageFlpth}" alt="${result.cntntsSj }">	                                        
                                     </div>
                                     <div class="content">${result.cntntsSj }</div>
                                     <div class="date"><fmt:formatDate value="${result.postDt }" pattern="yyyy.MM" /></div>	                               
	                             </div>
							</c:forEach>
						</div>
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <script>
                    new Swiper("._communitySlider", {
                        slidesPerView: "auto",
                        observer: true,
                        observeParents: true,
                        scrollbar: {
                            el: ".swiper-scrollbar",
                        }
                    });
                </script>
           	</div>  
           	
           	<div class="esgsubtitle" data-aos="fade-up" data-aos-duration="2000">
                <div class="list-header">
                    <div class="font-h3">마크로젠은 대한민국의 미래를 응원하고 지원합니다</div>
                </div>
                <div class="list-body">
                    <div class="desc">강한 책임감과 소명의식을 지닌 마크로젠은 앞으로 생명공학 분야의 연구자들을 위한 든든한 후원자이자 국가 기술경쟁력 강화의 중심축 역할로서 맡은바 사회적 책임을 다할 것입니다.</div>
            	</div>            	         
             </div>             
            
            <!-- s  셋 -->
            <div class="section-heading" data-aos="fade-up" data-aos-duration="2000" style="background-image: url(/publishing/mobile-ko/dist/img/esg/bg-ethical-banner-1.png);"></div>
            <!-- e 셋 -->

            <!-- s 과학자 상 -->
            <div class="section-reward">
                <div class="inner">
                    <div class="list">
                        <!-- 마크로젠 과학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="font-h3">마크로젠 과학자상</div>
                            </div>
                            <div class="list-body">
                                <div class="desc">현재 생명공학은 IT분야와 함께 미래 국가경제를 견인할 신성장동력으로 새롭게 자리매김하고 있습니다.
                                    특히 생명공학은 생물체를 이용하여 새로운 혁신기술을 개발하는 응용과학으로서 의약, 농업, 에너지, 환경 등 다양한 산업 분야에 활용되어 향후 미래의 고부가가치 산업으로 성장하는 데 없어서는 안될 중요한 역할을 담당하고 있습니다. 앞으로 우리 국가경제의 미래는 자신의 분야에서 끊임없이 정진하고 있는 우수한 생명과학도의 손에 달려 있다고 해도 과언이 아닙니다.
                                    마크로젠 과학자상은 기초 생명공학 분야에서 탁월한 업적을 이룬 국내 과학자를 격려하고 지원하기 위해 마련된 상입니다.</div>
                                <div class="swiper reward _reward1">
                                    <div class="swiper-wrapper">

                                    	<c:forEach var="result" items="${ msaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="box-heading">
	                                                    <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                    <div class="info">
	                                                        <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                        <div class="name">${ result.wnpzNm }</div>
	                                                        <div class="job">${ result.occp }</div>
	                                                    </div>
	                                                </div>
	                                                <div class="career">
	                                                    <div class="tit">주요 연구 업적</div>
	                                                    <ul>
	                                                        <li>${ result.rm }</li>
	                                                    </ul>
	                                                </div>
	                                                <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=msa"><span class="font-body-b">MORE</span><i class="icon ico-moveLong-black"></i></a></div>
	                                            </div>
	                                        </div>
                                    	</c:forEach>

                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                                <script>
                                    new Swiper("._reward1", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 10,
                                        pagination: {
                                            el: "._reward1 .swiper-pagination",
                                            clickable : true,
                                        },
                                    });
                                </script>
                            </div>
                            <div class="btn-wrap"><a href="#cl=msa" class="btn btn-light btn-round"><span>역대 수상자 전체보기</span></a></div>
                        </div>

                        <!-- 마크로젠 여성과학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="font-h3">마크로젠 여성과학자상</div>
                            </div>
                            <div class="list-body">
                                <div class="desc">
                                    ‘마크로젠 여성과학자상’ 은 기초생명과학 분야에서  높은 역량을 지닌 여성과학자들에 대한 지원이 활발히 이루어질 수 있도록 마련된 상입니다.
                                    대한민국 생명공학분야의 여성과학자들은 학문에 대한 강한 사명감과 끊임없는 연구개발을 바탕으로 우수한 연구성과들을 창출함으로써 국가를 넘어 세계 과학발전에 기여해왔습니다.
                                    이러한 흐름을 반영하듯 정부는 2002년 ‘여성과학기술인 육성 및 지원에 관한 법률’을 제정하였으며, 해당 법률에 의거하여 중장기 정책목표와 방향을 설정함으로써 이공계 연구직·기술직에 종사하는 여성과학자를 육성하기 위한 다양한 정책들을 지원하고 있습니다.
                                    마크로젠은 학문에 대한 강한 열정과 섬세함, 그리고 유연한 리더십 등 다양한 장점을 겸비한 여성과학자들이 무한한 재능과 더 큰 가능성을 펼쳐나갈 수 있도록 함께 응원하고 지지합니다.
                                </div>
                                <div class="swiper reward _reward2">
                                    <div class="swiper-wrapper">

                                    	<c:forEach var="result" items="${ wsaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="box-heading">
	                                                    <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                    <div class="info">
	                                                        <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                        <div class="name">${ result.wnpzNm }</div>
	                                                        <div class="job">${ result.occp }</div>
	                                                    </div>
	                                                </div>
	                                                <div class="career">
	                                                    <div class="tit">주요 연구 업적</div>
	                                                    <ul>
	                                                        <li>${ result.rm }</li>
	                                                    </ul>
	                                                </div>
	                                                <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=wsa"><span class="font-body-b">MORE</span><i class="icon ico-moveLong-black"></i></a></div>
	                                            </div>
	                                        </div>
                                    	</c:forEach>

                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                                <script>
                                    new Swiper("._reward2", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 10,
                                        grabCursor: true,
                                        pagination: {
                                            el: "._reward2 .swiper-pagination",
                                            clickable : true,
                                        },
                                    });
                                </script>
                            </div>
                            <div class="btn-wrap"><a href="#cl=wsa" class="btn btn-light btn-round"><span>역대 수상자 전체보기</span></a></div>
                        </div>

                        <!-- 마크로젠 젊은 생명정보학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="font-h3">마크로젠 젊은 생명정보 학자상</div>
                            </div>
                            <div class="list-body">
                                <div class="desc">‘마크로젠 젊은 생명정보학자상’은 생명정보학 분야에서 전도유망한 국내 신진 과학자를 지원합니다.
                                    마크로젠이 지원하고 한국생명정보학회가 주최하는 ‘마크로젠 젊은 생명정보학자상’은 2019년에 제정되었으며, 과학 분야에서 탁월한 연구실적을 달성한 신진 과학자를 발굴하고 격려하기 위해 마련되었습니다. 마크로젠은 앞으로 생명정보학 분야의 높은 잠재력을 지닌 신진 과학자를 후원하여 국내 과학기술의 경쟁력을 강화하고 생명과학 발전을 위해 아낌없이 지원하겠습니다.</div>
                                <div class="swiper reward _reward3">
                                    <div class="swiper-wrapper">
                                    	<c:forEach var="result" items="${ ybaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="box-heading">
	                                                    <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                    <div class="info">
	                                                        <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                        <div class="name">${ result.wnpzNm }</div>
	                                                        <div class="job">${ result.occp }</div>
	                                                    </div>
	                                                </div>
	                                                <div class="career">
	                                                    <div class="tit">주요 연구 업적</div>
	                                                    <ul>
	                                                        <li>${ result.rm }</li>
	                                                    </ul>
	                                                </div>
	                                                <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=yba"><span class="font-body-b">MORE</span><i class="icon ico-moveLong-black"></i></a></div>
	                                            </div>
	                                        </div>
                                    	</c:forEach>

                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                                <script>
                                    new Swiper("._reward3", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 10,
                                        pagination: {
                                            el: "._reward3 .swiper-pagination",
                                            clickable : true,
                                        },
                                    });
                                </script>
                            </div>
                            <div class="btn-wrap"><a href="#cl=yba" class="btn btn-light btn-round"><span>역대 수상자 전체보기</span></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 과학자 상 -->

            <!-- s 넷 -->
            <div class="section-heading" data-aos="fade-up" data-aos-duration="2000" style="background-image: url(/publishing/mobile-ko/dist/img/esg/bg-ethical-banner-2.png);"></div>
            <!-- e 넷 -->

            <div class="section-activity">
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">근보회 활동후원</div>
                    <div class="desc">‘근보회’는 유전자 이상에 의해 발생하는 근육질환인 근이영양증을 앓고 있는 환우와 가족들의 모임으로서 1999년 11월 발족한 비영리 민간단체입니다.</div>
                </div>
                <div class="desc-box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="img img-right"><img src="/publishing/mobile-ko/dist/img/esg/ethical-activity-thumb-1.png" alt="근보회 활동후원"></div>
                    <div class="text-box">
                        <div class="font-body-h-b">마크로젠은 근보회 활동을 후원합니다</div>
                        <div class="font-body">근보회는 근보회 환우를 위한 복지혜택, 오프라인 정기모임, 근이영양증 환우 진단 및 간병을 위한 상담서비스 제공 등 근이영양증을 알리는 활동과 함께 그 치료법 등을 찾는 데 도움을 줄 수 있도록 다양한 활동들을 지속하고 있습니다.<br/>마크로젠은 근이영양증 연구자들을 물색하여 이들이 희귀질환을 연구할 수 있도록 지원하고 있으며 환우들과 회사임직원이 함께하는 봄나들이, 작은 음악회 등 정기적인 근보회 활동을 통해 친목 도모 및 상호교류의 장을 만들어 가고 있습니다.</div>
                    </div>
                    <div class="img img-center"><img src="/publishing/mobile-ko/dist/img/esg/ethical-activity-thumb-2.png" alt="마크로젠은 근보회 활동을 후원합니다"></div>
                    <div class="text-box">
                        <div class="font-body-h-b">근이영양증 (Muscular dystrophy)이란?</div>
                        <div class="font-body">유전적인 요인으로 진행성 근력저하 및 위축을 보이고 병리학적으로 근육섬유의 괴사 및 재생을 특징으로 하는 퇴행성 근육병증을 말합니다. 이는 디스트로핀(dystrophin) 유전자 등 유전자 돌연변이에 의해 특정 단백이 소실되어 근세포막의 손상으로 근육섬유의 괴사와 퇴행 과정을 거쳐 결국 근력저하 및 위축이 발생하게 되는 질환입니다. 해당 질환이 발생하는 유전적 원인으로는 50-60%가 유전자 결실에 의하여 발생하며 나머지 40-50%는 점 돌연변이, 미세 결손, 중복 등이 그 원인으로 알려져 있습니다.</div>
                    </div>
                    <div class="img img-center"><img src="/publishing/mobile-ko/dist/img/esg/ethical-activity-thumb-3.png" alt="근이영양증 (Muscular dystrophy)이란?"></div>
                </div>
            </div>
        </div>
    </div>

	<%-- 수상자목록/상세 모달 --%>
	<div class="modal macrogen" tabindex="-1" id="modal" data-bs-backdrop="static">
	    <div class="modal-dialog">
	        <div class="modal-content"></div>
	    </div>
	    <a href="#" class="btn-totop"></a>
	</div>
	<script>
	    var modal = new bootstrap.Modal(document.getElementById('modal'));

	    $(document).ready(function(){
	        $('.modal .btn-totop').click(function(){
	            $('.modal').animate( { scrollTop:0 },{duration : 100});
	            return false;
	        });

	        $('.modal').on('scroll', function (){
	            var scrollTop = $('.modal').scrollTop()
	            if (scrollTop > 150) {
	                $('.btn-totop').css({'opacity' : 1})
	            } else {
	                $('.btn-totop').css({'opacity' : 0})
	            }
	        })

	        $('.btn-close').on('click', function () {
	            modal.hide();
	        })
	    });
	</script>

	<script src="/js/util/Hash.js"></script>
    <script>
    	$(function() {
    		$(window).on('hashchange', function() {
    			console.log(location.hash);
    		    var wnpzClCode = Hash.getParam('cl');
    		    var sn = Hash.getParam('sn');
    		    console.log('wnpzClCode:', wnpzClCode);
    		    console.log('sn:', sn);

    		    if (!wnpzClCode) return;

    		    var $modalContent = $('#modal .modal-content');
    		    if (sn) {
        		    <%-- 수상자 상세 --%>
        		    console.log('winner detail');
        			$.ajax({
        				dataType: 'html', type : 'post',
        				url: '/${rc.locale.language}/company/winner/viewAjaxHtml/' + sn,
        				data: { wnpzClCode: wnpzClCode },
        			}).done(function(html) {
        				$modalContent.empty().html(html);
    				    console.log('modal.show', modal);
    				    modal.show();
        			});

    		    } else {
    		    	<%-- 수상자 목록 --%>
        		    console.log('winner list');
    				$.ajax({
    					dataType: 'html', type : 'post',
    					url: '/${rc.locale.language}/company/winner/listAjaxHtml',
        				data: { wnpzClCode: wnpzClCode },
    				}).done(function(html) {
    					$modalContent.empty().html(html);
    				    console.log('modal.show', modal);
    				    modal.show();
    				});

    		    }
    		});

    		$(window).trigger('hashchange');
    	});
    </script>


</body>