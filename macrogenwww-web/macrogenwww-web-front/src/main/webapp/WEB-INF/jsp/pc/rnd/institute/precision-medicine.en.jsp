<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap en">

    <div class="full-bg research_bg">
        <header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">MACROGEN</li>
        <li class="breadcrumb-item">R&D</li>
        <li class="breadcrumb-item">Precision Medicine Institute</li>
    </ol>
</nav>

            <div class="hero-title">Precision Medicine Institute</div>
<!--            <div class="slogan-sub">Leading R&D for personalized precision medicine</div>-->
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_customMedicine">
            <div class="info-box">
                <div class="font-h3">Personalized medicine<br/>
                    based on precision medicine </div>
                <div class="desc">Based on extensive data that we've collected and analyzed,<br/>
                    we conduct research for personalized disease prevention and treatment. </div>
            </div>
            <div class="img"></div>
        </div>
        <div class="section_info_list">
            <div class="box clearfix">
                <div class="font-h7">Established to promote the development of precision medicine.</div>
                <div class="font-body">
                    <p>Macrogen established the Precision Medicine Institute in 2016 to promote research in the field of precision medicine.
                        The institute has enhanced partnerships with top-tier medical professionals and scientists around the world. It leverages the company’s cutting-edge genomic analysis technologies and the hospital’s excellent clinical research systems to develop various personalized medicine services while pursuing its dedication to achieving research progress with regard to basic medical science.
                        These R&D efforts are intended to help develop NGS-based companion diagnostic systems, circulating tumor DNA analysis, and circulating tumor cell analysis, through which Macrogen expects to be able to develop more accurate and faster testing services for precision medicine.</p>
                    <img src="/publishing/pc-en/dist/img/RD/img-research_activation.png" alt="정밀의학 연구활성화 스포이드 사진">
                </div>
            </div>

            <div class="box clearfix">
                <div class="font-h7">Precision medicine is a new medical paradigm for the future.</div>
                <div class="font-body">
                    <p>Precision medicine is a new medical paradigm for the future, providing personalized disease prediction and prevention, as well as personalized diagnosis and treatment services based on genomic data, lifestyle habits, and medical history. Notably, it accurately recognizes individuals' genetic differences through genomic analysis and utilizes this information for personalized diagnosis and treatment. Going forward, Macrogen Precision Medicine Institute will contribute to the realization of precision medicine in Korea and Asia based on the genetic mutation DB obtained from Asians through large-scale genome analysis.</p>
                    <img src="/publishing/pc-en/dist/img/RD/img-medical_paradigm.png" alt="정밀의학 의료 패러다임 모니터 만지는 사람 사진 ">
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