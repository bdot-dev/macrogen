<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/RD/bg-visual.png);">
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
            <h2 class="font-h1">정밀의학연구소</h2>
            <div class="font-body-h">Precision Medicine Institute</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="font-h3">환자 맞춤형 정밀의료 기반의 개인별 맞춤의학을 선도합니다</div>
                <div class="desc">다양한 데이터를 수집 및 분석해 개인에 맞도록 질병 예방과 치료에 대한 연구를 진행합니다&#46;</div>
            </div>
            <div class="img img-person_research"></div>
        </div>
        <div class="section_info_list">
            <div class="box">
                <div class="font-h7">정밀의학 연구활성화를 위해 설립했습니다</div>
                <div class="font-body">
                    <p>마크로젠은 2016년 정밀의학 연구 활성화를 위해 &#39;정밀의학연구소&#39;를 설립했습니다&#46;<br>
                        국내외 최고 수준의 의료진 및 연구진과 파트너십을 강화하고&#44; 첨단 유전체 분석 기술 및 병원 임상 연구 체계를 활용하여 환자에게 필요한 맞춤 의학 서비스 개발과 기초 연구에
                        전념하고 있습니다&#46;<br>
                        Next Generation Sequencing&#40;NGS&#41; 기반의 항암 진단 시스템 개발&#44; circulating tumor DNA 분석 등 연구에 박차를 가하고 있으며
                        정확하고 신속한 정밀의학 검사서비스를 개발해 임상 현장에 제공할 예정입니다&#46;</p>
                    <img src="/publishing/mobile-ko/dist/img/RD/img-research_activation.png" alt="정밀의학 연구활성화 스포이드 사진">
                </div>
            </div>

            <hr class="M-divider"/>

            <div class="box">
                <div class="font-h7">정밀의학은 미래형 의료 패러다임입니다</div>
                <div class="font-body">
                    <p>정밀의학&#40;Precision medicine&#41;은 개인의 유전체 정보&#44; 생활습관&#44; 의료 정보 등 데이터를 기반으로 개인별 특성에 따라 질병 예측 및 예방&#44; 맞춤 진단&#44; 치료법을
                        제공하는 미래형 의료 패러다임입니다&#46;<br>
                        특히 유전체 분석을 통해 개인의 유전적 차이점을 정확히 인식하고&#44; 이를 개인별 맞춤 진단 및 치료에 활용합니다&#46;<br>
                        향후 마크로젠 정밀의학연구소는 대규모 유전체 분석을 통해 얻은 아시아인의 유전적 변이 DB를 활용해 한국과 아시아 정밀의학 실현에 기여할 예정입니다&#46;</p>
                    <img src="/publishing/mobile-ko/dist/img/RD/img-medical_paradigm.png" alt="정밀의학 의료 패러다임 모니터 만지는 사람 사진 ">
                </div>
            </div>
        </div>
        <div class="section_status" id="section_status">
            <div class="font-h4">연구성과 및 현황</div>
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