<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg" style="background-image: url(/publishing/mobile-en/dist/img/esg/bg-ethical-management-2.png);">
        <header class="header header-white">
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
                $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
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
            <h2 class="font-h4">Social Responsibility</h2>
            <div class="font-slogan en ft39">We fulfill our<br> social responsibility for a<br> better world</div> <!-- 번역 변경 -- 2021.11.23 -->
            <div class="font-h7-r">We support Korean scientists as part of our dedication to healthier living</div>
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
                    <div class="font-h3">Macrogen supports the future of Korea</div>
                    <div class="font-body-h">In pursuit of our calling, we will continue to fulfill our social responsibility as a committed supporter for researchers in the field of biotechnology, as well as play a pivotal role in strengthening national technological competitiveness</div>
                </div>
            </div>
            <!-- e  문구 -->

            <!-- s  하나 -->
            <div class="section-heading" data-aos="fade-up" data-aos-duration="2000" style="background-image: url(/publishing/mobile-en/dist/img/esg/bg-ethical-banner-1.png);"></div>
            <!-- e 하나 -->

            <!-- s 과학자 상 -->
            <div class="section-reward">
                <div class="inner">
                    <div class="list">
                        <!-- 마크로젠 과학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="font-h3">Macrogen Scientist Award</div>
                            </div>
                            <div class="list-body">
                                <div class="desc">Biotechnology has joined IT as the new growth engine for the national economy.<br/>
                                    In particular, biotechnology, as the applied science that develops new innovative technologies using living organisms, plays a vital role in developing innovations in medicine, agriculture, energy, and the environment and enables them to become high-value-added industries. Therefore, the future of our national economy lies in the hands of aspiring biotechnologists.<br/>
                                    The Macrogen Scientist Award was established to encourage and support scientists in Korea who demonstrate excellence and promising accomplishments in the field of basic biotechnology.</div>
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
	                                                    <div class="tit">Major Accomplishments in Research</div>
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
                            <div class="btn-wrap"><a href="#cl=msa" class="btn btn-light btn-round"><span>Previous Winners</span></a></div>
                        </div>

                        <!-- 마크로젠 여성과학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="font-h3">Macrogen Woman Scientist Award</div>
                            </div>
                            <div class="list-body">
                                <div class="desc">
                                    The Macrogen Women Scientist Award recognizes the commitment and dedication of female scientists and supports their contribution in the field of biotechnology.<br/>
                                    Women scientists in the biotechnology field of Korea have generated excellent research results through continuous research and development, thereby contributing to the advancement of science everywhere.<br/>
                                    The government established the "Act on Fostering and Supporting Women Scientists and Technicians" in 2002, and it currently supports policies that foster women scientists in research or technical posts in natural sciences and engineering by setting the goals and direction of mid and long-term policies based on the Act.<br/>
                                    Macrogen supports women scientists, who have a passion for academic excellence, attention to detail, and flexible leadership so that they can reach their full potential.
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
	                                                    <div class="tit">Major Accomplishments in Research</div>
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
                            <div class="btn-wrap"><a href="#cl=wsa" class="btn btn-light btn-round"><span>Previous Winners</span></a></div>
                        </div>

                        <!-- 마크로젠 젊은 생명정보학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="font-h3">Macrogen Young Bioinformatician Award</div>
                            </div>
                            <div class="list-body">
                                <div class="desc">The Macrogen Young Bioinformatician Award supports the outstanding young scientists in the field of bioinformatics<br/>
                                    Established in 2019 to recognize outstanding early-career scientists who have made significant contributions to the field of bioinformatics, the award is hosted by the Korea Society for Bioinformatics (KSB) and sponsored by Macrogen. We continue to support young scientists with strong potential in the field of bioinformatics to strengthen the competitiveness of our nation's science and technology.</div>
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
	                                                    <div class="tit">Major Accomplishments in Research</div>
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
                            <div class="btn-wrap"><a href="#cl=yba" class="btn btn-light btn-round"><span>Previous Winners</span></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 과학자 상 -->

            <!-- s 둘 -->
            <div class="section-heading" data-aos="fade-up" data-aos-duration="2000" style="background-image: url(/publishing/mobile-en/dist/img/esg/bg-ethical-banner-2.png);"></div>
            <!-- e 둘 -->

            <div class="section-activity">
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">Sponsor of MDA Korea</div>
                    <div class="desc">MDA Korea is a non-profit private organization established in November 1999 for patients suffering from muscular dystrophy caused by genetic abnormalities.</div>
                </div>
                <div class="desc-box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="img img-right"><img src="/publishing/mobile-en/dist/img/esg/ethical-activity-thumb-1.png" alt="Sponsor of MDA Korea"></div>
                    <div class="text-box">
                        <div class="font-body-h-b">Macrogen supports the activities of MDA Korea.</div>
                        <div class="font-body">MDA Korea engages in various activities to find a cure for muscular dystrophy as well as activities to share information on muscular dystrophy,
                            including providing benefits for patients belonging to MDA Korea, regular offline gatherings, and consulting service for the diagnosis and care of patients
                            with muscular dystrophy.
                            We help researchers to study muscular dystrophy, and support their studies on rare diseases, and create opportunities to socialize and interact by organizing
                            an annual spring outing with patients, executives, and employees of Macrogen and mini-concerts.
	                    </div>
	                    <div class="img img-center"><img src="/publishing/mobile-en/dist/img/esg/ethical-activity-thumb-2.png" alt="Macrogen supports the activities of MDA Korea."></div>
	                    <div class="text-box">
	                        <div class="font-body-h-b">What Is Muscular Dystrophy?</div>
	                        <div class="font-body">Muscular dystrophy is a degenerative muscle disease that shows progressive degeneration of muscle strength.
	                            This disease has the pathological characteristics of necrosis and regeneration of muscle fiber due to genetic factors.
	                            A specific protein that is lost by mutation of genes such as the dystrophin gene, goes through muscle fiber necrosis and degeneration caused
	                            by damage to muscle cell membranes, resulting in degeneration of muscle strength and muscle dystrophy. It occurs in 50 - 60% of the cases caused
	                            by deletion of genes and the other 40 - 50% is known to be caused by mutation, microdeletion, and duplication of genes.</div>
	                    </div>
	                    <div class="img img-center"><img src="/publishing/mobile-en/dist/img/esg/ethical-activity-thumb-3.png" alt="What Is Muscular Dystrophy?"></div>
	                </div>
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