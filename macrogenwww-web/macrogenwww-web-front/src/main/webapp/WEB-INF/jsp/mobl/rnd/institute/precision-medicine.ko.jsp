<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="full-bg research_bg">
        <header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">R&D</li>
        <li class="breadcrumb-item">정밀의학연구소</li>
    </ol>
</nav>

            <div class="hero-title">정밀의학연구소</div>
            <div class="slogan-sub">환자 맞춤형 정밀의료 실현을 위한 선도 연구</div>
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_customMedicine">
            <div class="info-box">
                <div class="title">환자 맞춤형 정밀의료 기반의<br>개인별 맞춤의학을 선도합니다</div>
                <div class="desc">다양한 데이터를 수집 및 분석해 개인에 맞도록 질병 예방과 치료에 대한 연구를 진행합니다&#46;</div>
            </div>
        </div>
        <div class="section_info_list">
            <div class="box clearfix">
                <div class="sub_title">정밀의학 연구활성화를 위해<br>설립했습니다</div>
                <div class="sub_desc">
                    <p>마크로젠은 2016년 정밀의학 연구 활성화를 위해 &#39;정밀의학연구소&#39;를 설립했습니다&#46;<br>
                        국내외 최고 수준의 의료진 및 연구진과 파트너십을 강화하고&#44; 첨단 유전체 분석 기술 및 병원 임상 연구 체계를 활용하여 환자에게 필요한 맞춤 의학 서비스 개발과 기초 연구에
                        전념하고 있습니다&#46;<br>
                        Next Generation Sequencing&#40;NGS&#41; 기반의 항암 진단 시스템 개발&#44; circulating tumor DNA 분석 등 연구에 박차를 가하고 있으며
                        정확하고 신속한 정밀의학 검사서비스를 개발해 임상 현장에 제공할 예정입니다&#46;</p>
                    <img src="/publishing/pc-ko/dist/img/RD/img-research_activation.png" alt="정밀의학 연구활성화 스포이드 사진">
                </div>
            </div>

            <div class="box clearfix">
                <div class="sub_title">정밀의학은 미래형<br>의료 패러다임입니다</div>
                <div class="sub_desc">
                    <p>정밀의학&#40;Precision medicine&#41;은 개인의 유전체 정보&#44; 생활습관&#44; 의료 정보 등 데이터를 기반으로 개인별 특성에 따라 질병 예측 및 예방&#44; 맞춤 진단&#44; 치료법을
                        제공하는 미래형 의료 패러다임입니다&#46;<br>
                        특히 유전체 분석을 통해 개인의 유전적 차이점을 정확히 인식하고&#44; 이를 개인별 맞춤 진단 및 치료에 활용합니다&#46;<br>
                        향후 마크로젠 정밀의학연구소는 대규모 유전체 분석을 통해 얻은 아시아인의 유전적 변이 DB를 활용해 한국과 아시아 정밀의학 실현에 기여할 예정입니다&#46;</p>
                    <img src="/publishing/pc-ko/dist/img/RD/img-medical_paradigm.png" alt="정밀의학 의료 패러다임 모니터 만지는 사람 사진 ">
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
	                            </div>
	                            <div class="slider-navigation">
	                                <a href="#" class="btn btn-circle btn-black btn-md _btnPrev swiper-button-disabled"
	                                   tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"><i
	                                        class="icon icon-arrow-left-md-white"></i></a>
	                                <a href="#" class="btn btn-circle btn-black btn-md _btnNext" tabindex="0"
	                                   role="button" aria-label="Next slide" aria-disabled="false"><i
	                                        class="icon icon-arrow-right-md-white"></i></a>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- e  연구진행 -->
	                </div>
               	</c:forEach>
            </div>

        </div>

    </div>

    <!--10.07 스크립트 변경-->
    <script>
        //슬라이드 함수
        function setSlider(){
            new Swiper('._Slider', {
                slidesPerView: 4,
                spaceBetween: 20,
                slidesPerGroup: 4,
                loopFillGroupWithBlank: true,
                grabCursor: true,
                observer: true,
                observeParents: true,
                navigation: {
                    nextEl: "._btnNext",
                    prevEl: "._btnPrev",
                },
            });
        }
        //슬라이드 함수 실행
        setSlider();


        function setTabContent (idx){
            //탭메뉴 변경후 슬라이드 초기화를 위한 함수 실행
            setSlider();

            var tab = $(".tab-content > .tab-pane").eq(idx)
            $('.tab-list > .nav-link').eq(idx).addClass('active').siblings().removeClass('active');

            tab.addClass('show').siblings().removeClass('show');
            tab.addClass('active').siblings().removeClass('active');
        }



        $('.tab-list .nav-link').on('click', function(){
            var idx = $(this).index();
            setTabContent(idx);
        });
     </script>

    <!--footer 수정시 메인 footer 같이 수정해주세요-->

	<script>
	    $(function (){
	        $(".swiper-container ._popupOpen").click(function () {
	        	console.log('_popupOpen click');
	            const idx = $(this).index();
	            $('.modal').eq(idx).modal('show')
	        })
	    })
	</script>

	<script src="/js/util/Hash.js"></script>
    <script>
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