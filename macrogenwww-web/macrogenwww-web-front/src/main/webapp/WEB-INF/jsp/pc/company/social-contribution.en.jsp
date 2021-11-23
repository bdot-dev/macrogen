<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-en/dist/img/macrogen/bg-ethical-management-2.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>
        <div class="frame">
            <div class="hero-title">Social Responsibility</div>
            <div class="slogan">We are committed to fulfilling <br/>our social responsibility<br/>  to promote shared growth</div>
            <div class= "slogan-sub">As part of our dedication to healthy human lives, we support Korean scientists.</div>
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">ESG</li>
			        <li class="breadcrumb-item">Social Responsibility</li>
			    </ol>
			</nav>

            <div class="scroll-wrap">
			    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
			</div>

        </div>
    </div>

    <div class="container container-fluid">
        <div class="macrogen ethical-management">
            <!-- s  문구 -->
            <div class="section-description">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="text-lg">Macrogen supports the future<br/>of Korea</div>
                    <div class="desc">With a strong sense of responsibility and calling, we will continue to fulfill our social responsibility as a committed supporter
                        for researchers in the field of biotechnology, as well as play a pivotal role in strengthening national technological competitiveness.</div>
                </div>
            </div>
            <!-- e  문구 -->

            <!-- s  하나 -->
            <div class="section-banner" style="background-image: url(/publishing/pc-en/dist/img/macrogen/bg-ethical-banner-1.png);">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-slogan color-white">First.</div>
                    <div class="desc color-white">Scientist Award Sponsored by Macrogen</div>
                </div>
            </div>
            <!-- e 하나 -->

            <!-- s 과학자 상 -->
            <div class="section-reward">
                <div class="inner">
                    <div class="list">
                        <!-- 마크로젠 과학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="title">Macrogen<br/>Scientist Award</div>
                                <div class="btn-wrap"><a href="#cl=msa" class="btn btn-sm btn-white"><span>Previous Winners</span></a></div>
                            </div>
                            <div class="list-body">
                                <div class="desc">
                                    Biotechnology has joined IT as the new growth engines for the national economy. In particular, biotechnology, as the applied science that develops new innovative technologies using living organisms, plays a vital role in the developing innovations in medicine, agriculture, energy and the environment and enables them to become high-value added industries. It is not an exaggeration to say that the future of our national economy lies in the hands of good biotechnology students. ‘Macrogen Scientist Award’ encourages and supports scientists in Korea who demonstrate excellence and promising accomplishments in basic biotechnology.
                                </div>
                                <div class="swiper reward _reward1">
                                    <div class="swiper-wrapper">

                                    	<c:forEach var="result" items="${ msaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                <div class="info">
	                                                    <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                    <div class="name">${ result.wnpzNm }</div>
	                                                    <div class="job">${ result.occp }</div>
	                                                    <div class="career">
	                                                        <div class="tit">Major Accomplishments in Research</div>
	                                                        <ul>
	                                                            <li>${ result.rm }</li>
	                                                        </ul>
	                                                    </div>
	                                                    <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=msa" class="btn btn-text"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a></div>
	                                                </div>
	                                            </div>
	                                        </div>
                                    	</c:forEach>


                                    </div>
                                </div>
                                <div class="pagination-wrap">
                                    <ul class="navigation">
                                        <li class="page-item prev">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">이전</span>
                                            </a>
                                        </li>
                                        <li class="page-item next">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">다음</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <script>
                                    var swiper = new Swiper("._reward1", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 0,
                                        grabCursor: true,
                                        navigation: {
                                            nextEl: '._reward1 + .pagination-wrap .page-item.next',
                                            prevEl: '._reward1 + .pagination-wrap .page-item.prev',
                                        },
                                    });
                                </script>
                            </div>
                        </div>

                        <!-- 마크로젠 여성과학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="title">Macrogen<br/>Woman<br/>Scientist Award</div>
                                <div class="btn-wrap"><a href="#cl=wsa" class="btn btn-sm btn-white"><span>Previous Winners</span></a></div>
                            </div>
                            <div class="list-body">
                                <div class="desc">
”Macrogen Women Scientist Award” raises the pride of women scientists and promotes support for outstanding and capable women scientists in basic biotechnology.<br/>
Women scientists in the biotechnology field of Korea have generated excellent research results through continuous research and development, thereby contributing to the advancement of science everywhere. The government established the “Act on Fostering and Supporting Women Scientists and Technicians” in 2002 and it currently supports policies that foster women scientists in research or technical posts in natural sciences and engineering by setting the goals and direction of mid- and long-term policies based on the Act.<br />
Macrogen roots for and supports women scientists, who have many merits such as strong passion for academia, attention to detail, and flexible leadership, so that they can give free reign to their unlimited talents and bigger possibilities.
                                </div>
                                <div class="swiper reward _reward2">
                                    <div class="swiper-wrapper">

                                    	<c:forEach var="result" items="${ wsaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                <div class="info">
	                                                    <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                    <div class="name">${ result.wnpzNm }</div>
	                                                    <div class="job">${ result.occp }</div>
	                                                    <div class="career">
	                                                        <div class="tit">Major Accomplishments in Research</div>
	                                                        <ul>
	                                                            <li>${ result.rm }</li>
	                                                        </ul>
	                                                    </div>
	                                                    <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=wsa" class="btn btn-text"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a></div>
	                                                </div>
	                                            </div>
	                                        </div>
                                    	</c:forEach>

                                    </div>
                                </div>
                                <div class="pagination-wrap">
                                    <ul class="navigation">
                                        <li class="page-item prev">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">이전</span>
                                            </a>
                                        </li>
                                        <li class="page-item next">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">다음</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <script>
                                    var swiper = new Swiper("._reward2", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 0,
                                        grabCursor: true,
                                        navigation: {
                                            nextEl: '._reward2 + .pagination-wrap .page-item.next',
                                            prevEl: '._reward2 + .pagination-wrap .page-item.prev',
                                        },
                                    });
                                </script>
                            </div>
                        </div>

                        <!-- 마크로젠 젊은 생명정보학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="title">Macrogen<br/>Young<br/>Bioinformatician Award</div>
                                <div class="btn-wrap"><a href="#cl=yba" class="btn btn-sm btn-white"><span>Previous Winners</span></a></div>
                            </div>
                            <div class="list-body">
                                <div class="desc">
‘Macrogen Young Bioinformatician Award’ supports the outstanding young scientists in the field of bioinformatics.<br/>
Korea Society for Bioinformatics(KSB) has established “Macrogen Young Bioinformatician Award” in 2019 to recognize outstanding early-career scientists who have made significant contributions to the field of bioinformatics. Macrogen will support young scientists with high potential in the field of bioinformatics to strengthen the competitiveness of Korea science and technology.                                </div>
                                <div class="swiper reward _reward3">
                                    <div class="swiper-wrapper">

                                    	<c:forEach var="result" items="${ ybaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                <div class="info">
	                                                    <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                    <div class="name">${ result.wnpzNm }</div>
	                                                    <div class="job">${ result.occp }</div>
	                                                    <div class="career">
	                                                        <div class="tit">Major Accomplishments in Research</div>
	                                                        <ul>
	                                                            <li>${ result.rm }</li>
	                                                        </ul>
	                                                    </div>
	                                                    <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=yba" class="btn btn-text"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a></div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </c:forEach>
                                    </div>
                                </div>
                                <div class="pagination-wrap">
                                    <ul class="navigation">
                                        <li class="page-item prev">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">이전</span>
                                            </a>
                                        </li>
                                        <li class="page-item next">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">다음</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <script>
                                    var swiper = new Swiper("._reward3", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 0,
                                        grabCursor: true,
                                        navigation: {
                                            nextEl: '._reward3 + .pagination-wrap .page-item.next',
                                            prevEl: '._reward3 + .pagination-wrap .page-item.prev',
                                        },
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 과학자 상 -->

            <!-- s 둘 -->
            <div class="section-banner" style="background-image: url(/publishing/pc-en/dist/img/macrogen/bg-ethical-banner-2.png);">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-slogan color-white">Second.</div>
                    <div class="desc color-white">Social Sponsorship</div>
                </div>
            </div>
            <!-- e 둘 -->

            <div class="section-activity">
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">Sponsor of MDA Korea</div>
                    <div class="desc">MDA Korea is a non-profit private organization established in November 1999 for patients suffering from muscular dystrophy caused by genetic abnormalities.</div>
                </div>
                <div class="main-img" data-aos="fade-up" data-aos-duration="2000">
                	<img src="/publishing/pc-en/dist/img/macrogen/ethical-activity-thumb-1.png" alt="근보회 활동후원">
                </div>
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="multi-stage">
                        <div class="row">
                            <div class="col">
                                <div class="item item-txt">
                                    <div class="tit">Macrogen supports the activities of MDA Korea.</div>
                                    <div class="desc">MDA Korea engages in various activities to find a cure for muscular dystrophy as well as activities to share information on muscular dystrophy,
                                        including providing benefits for patients belonging to MDA Korea, regular offline gatherings, and consulting service for the diagnosis and care of patients
                                        with muscular dystrophy.<br/>
                                        We help researchers to study muscular dystrophy, and support their studies on rare diseases, and create opportunities to socialize and interact by organizing
                                        an annual spring outing with patients, executives, and employees of Macrogen and mini-concerts.</div>
                                </div>
                                <div class="item item-img"><img src="/publishing/pc-en/dist/img/macrogen/ethical-activity-thumb-2.png" alt="마크로젠은 근보회 활동을 후원합니다"></div>
                            </div>
                            <div class="col">
                                <div class="item item-img"><img src="/publishing/pc-en/dist/img/macrogen/ethical-activity-thumb-3.png" alt="근이영양증 (Muscular dystrophy)이란?"></div>
                                <div class="item item-txt">
                                    <div class="tit">What Is Muscular Dystrophy?</div>
                                    <div class="desc">Muscular dystrophy is a degenerative muscle disease that shows progressive degeneration of muscle strength.
                                        This disease has the pathological characteristics of necrosis and regeneration of muscle fiber due to genetic factors.
                                        A specific protein that is lost by mutation of genes such as the dystrophin gene, goes through muscle fiber necrosis and degeneration caused
                                        by damage to muscle cell membranes, resulting in degeneration of muscle strength and muscle dystrophy. It occurs in 50 - 60% of the cases caused
                                        by deletion of genes and the other 40 - 50% is known to be caused by mutation, microdeletion, and duplication of genes.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

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

    		    var $modalContent = $('#modalListOfWinners .modal-content');
    		    if (sn) {
        		    <%-- 수상자 상세 --%>
        		    console.log('winner detail');
        			$.ajax({
        				dataType: 'html', type : 'post',
        				url: '/${rc.locale.language}/company/winner/viewAjaxHtml/' + sn,
        				data: { wnpzClCode: wnpzClCode },
        			}).done(function(html) {
        				$modalContent.empty().html(html);
    				    console.log('modalListOfWinners.show', modalListOfWinners);
        			    modalListOfWinners.show();
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
    				    console.log('modalListOfWinners.show', modalListOfWinners);
        			    modalListOfWinners.show();
    				});

    		    }
    		});

    		$(window).trigger('hashchange');
    	});
    </script>

</body>