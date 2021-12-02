<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/RD/bg-visual.png);">
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
            <div class="font-h1">Precision Medicine Institute</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="font-h3">Personalized medicine based on precision medicine</div>
                <div class="desc">Based on extensive data that we've collected and analyzed,
                    we conduct research for personalized disease prevention and treatment.</div>
            </div>
            <div class="img img-person_research"></div>
        </div>
        <div class="section_info_list">
            <div class="box">
                <div class="font-h7">Established to promote the development of precision medicine.</div>
                <div class="font-body">
                    <p>Macrogen established the Precision Medicine Institute in 2016 to promote research in the field of precision medicine. The institute has enhanced partnerships with top-tier medical professionals and scientists around the world. It leverages the company’s cutting-edge genomic analysis technologies and the hospital’s excellent clinical research systems to develop various personalized medicine services while pursuing its dedication to achieving research progress with regard to basic medical science. These R&D efforts are intended to help develop NGS-based companion diagnostic systems, circulating tumor DNA analysis, and circulating tumor cell analysis, through which Macrogen expects to be able to develop more accurate and faster testing services for precision medicine.</p>
                    <img src="/publishing/mobile-en/dist/img/RD/img-research_activation.png" alt="정밀의학 연구활성화 스포이드 사진">
                </div>
            </div>

            <hr class="M-divider"/>

            <div class="box">
                <div class="font-h7">Precision medicine is a new medical paradigm for the future.</div>
                <div class="font-body">
                    <p>Precision medicine is a new medical paradigm for the future, providing personalized disease prediction and prevention, as well as personalized diagnosis and treatment services based on genomic data, lifestyle habits, and medical history. Notably, it accurately recognizes individuals' genetic differences through genomic analysis and utilizes this information for personalized diagnosis and treatment. Going forward, Macrogen Precision Medicine Institute will contribute to the realization of precision medicine in Korea and Asia based on the genetic mutation DB obtained from Asians through large-scale genome analysis.</p>
                    <img src="/publishing/mobile-en/dist/img/RD/img-medical_paradigm.png" alt="정밀의학 의료 패러다임 모니터 만지는 사람 사진 ">
                </div>
            </div>
        </div>
        <div class="section_status" id="section_status">
            <div class="font-h4">Research Achievements & Status</div>
            <nav class="tab-basic">
                <div class="nav tab-list" id="tab" role="tablist">
                	<c:forEach var="result" items="${resultList }" varStatus="status">
	                    <a class="nav-link ${ status.index eq 0 ? 'active' : '' }" id="nav-tab-${status.count }" data-toggle="tab" href="#section_status" role="tab"
	                    	aria-controls="nav-${status.count }" aria-selected="${ status.index eq 0 ? 'true' : 'false' }">
	                        <span>${result['bbsCtgryNm'.concat(lang)] }</span>
	                    </a>
                	</c:forEach>

					<%--
                    <a class="nav-link active" id="nav-tab-1" data-toggle="tab" href="#section_status" role="tab"
                       aria-controls="nav-1" aria-selected="true">
                        <span>연구진행</span>
                    </a>
                    <a class="nav-link" id="nav-tab-2" data-toggle="tab" href="#section_status" role="tab" aria-controls="nav-2"
                       aria-selected="false">
                        <span>플랫폼 구축</span>
                    </a>
                    <a class="nav-link" id="nav-tab-3" data-toggle="tab" href="#section_status" role="tab" aria-controls="nav-3"
                       aria-selected="false">
                        <span>개발</span>
                    </a>
					 --%>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
               	<c:forEach var="result" items="${resultList }" varStatus="status">
	                <div class="tab-pane fade ${ status.index eq 0 ? 'show active' : '' }" id="nav-${status.count }" role="tabpanel" aria-labelledby="nav-tab-${status.count }">
	                    <!-- s  연구진행 -->
	                    <div class="slide-box">
	                        <div class="slider">
	                            <!--10.07 _Slider00 -> _Slider로 변경-->
	                            <div class="swiper-container _Slider">
	                                <div class="swiper-wrapper">

	                                	<c:forEach var="subresult" items="${result.nttList }" varStatus="substatus">
		                                    <div class="swiper-slide item">
		                                        <a href="#ct=${subresult.bbsCtgrySn }&sn=${subresult.nttSn }" class="_popupOpen">
		                                            <span class="img">
		                                                <img src="${publicUrl }${subresult.thumbFlpth }" alt="${subresult.nttSj }">
		                                            </span>
		                                            <span class="txt"><span>${subresult.nttSj }</span></span>
		                                        </a>
		                                    </div>
	                                	</c:forEach>

	                                </div>
	                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	                                <div class="swiper-scrollbar"></div>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- e  연구진행 -->
	                </div>
				</c:forEach>

                <script>
                    //슬라이드 함수
                    function setSlider(){
                        new Swiper('._Slider', {
                            loopFillGroupWithBlank: true,
                            observer: true,
                            observeParents: true,
                            scrollbar: {
                                el: ".swiper-scrollbar",
                            }
                        });
                    }
                    //슬라이드 함수 실행
                    setSlider();


                    function setTabContent (idx){
                        //탭메뉴 변경후 슬라이드 초기화를 위한 함수 실행
                        setSlider();

                        var tab = $(".tab-content > .tab-pane").eq(idx)
                        $('.tab-list > .nav-link').eq(idx).addClass('active').siblings().removeClass('active');

                        <!--탭메뉴 클릭시 페이지 변경-->
                        tab.addClass('show').siblings().removeClass('show');
                        tab.addClass('active').siblings().removeClass('active');
                    }



                    $('.tab-list .nav-link').on('click', function(){
                        var idx = $(this).index();
                        setTabContent(idx);
                    });
                </script>


            </div>
        </div>
    </div>

	<%-- 연구성과 및 현황 레이어팝업 --%>
	<div class="modal fade" tabindex="-1" id="Institute_01" data-bs-backdrop="static">
	    <div class="modal-dialog modal-dialog-centered modal-lg research">
	        <div class="modal-content"></div>
	        <a href="#" class="btn-totop"></a>
	    </div>
	</div>
	<script>
	    $(function (){
	        $(".swiper-container ._popupOpen").click(function (){
	            const idx = $(this).index();
	            $('.modal').eq(idx).modal('show')
	        })
	    })
	</script>

	<script src="/js/util/Hash.js"></script>
    <script>
	    var modalResearchResult = new bootstrap.Modal(document.getElementById('Institute_01'));

	    $(function() {
    		$(window).on('hashchange', function() {
    			console.log(location.hash);
    		    var bbsCtgrySn = Hash.getParam('ct');
    		    var sn = Hash.getParam('sn');
    		    console.log('bbsCtgrySn:', bbsCtgrySn);
    		    console.log('sn:', sn);

    		    if (!bbsCtgrySn || !sn) return;

    		    var $modalContent = $('#Institute_01 .modal-content');
       			$.ajax({
       				dataType: 'html', type : 'post',
       				url: '/${rc.locale.language}/rnd/research-result/viewAjaxHtml/' + sn,
       				data: { bbsCtgrySn: bbsCtgrySn },
       			}).done(function(html) {
       				$modalContent.empty().html(html);
   				    console.log('modalResearchResult.show', modalResearchResult);
   				 	modalResearchResult.show();
       			});

    		});

    		$(window).trigger('hashchange');
    	});
    </script>

</body>