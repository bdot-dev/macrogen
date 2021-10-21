<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/@temp/macrogen/macrogen_bg_1.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>

        <div class="frame">
            <div class="hero-title">연혁</div>
            <div class="slogan ko">유전체 분석 기술로<br>미래를 열어갑니다</div>
            <div class= "slogan-sub">마크로젠은 인류 건강의 새 역사를 만들고 있습니다</div>
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">MACROGEN</li>
			        <li class="breadcrumb-item">회사소개</li>
			        <li class="breadcrumb-item">연혁</li>
			    </ol>
			</nav>

            <div class="scroll-wrap">
			    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
			</div>

        </div>
    </div>

    <div class="container container-fluid">
    	<c:if test="${fn:length(resultList) gt 0 }">
	        <div class="macrogen macrogen-history">
	            <!-- s tab -->
	            <div class="slide-tab-wrap">
	                <div class="swiper-container tab-slide-box _swiperTab">
	                    <div class="swiper-wrapper _swiperTab">
	                    	<c:forEach var="result" items="${ resultList }" varStatus="status">
		                        <div class="swiper-slide ${ status.index eq 0 ? 'active' : '' }"><a
		                        	href="javascript:;" onclick="fnMove('group-${result.cmpnyhistGroupSn }')">${result.beginYear } - ${result.endYear eq 'present' ? '현재' : result.endYear }</a></div>
		                    </c:forEach>
	                    </div>
	                </div>
	            </div>
	            <script>
	                $('._swiperTab .swiper-slide').on('click', function(){
	                    $(this).addClass('active').siblings().removeClass('active');
	                });
	            </script>
	            <!-- e tab -->

	            <div class="section-wrap">
	               	<c:forEach var="result" items="${ resultList }" varStatus="status">
			            <!-- s 글로벌 유전체 정보 구축 -->
			            <div class="section _historySection" id="group-${result.cmpnyhistGroupSn }" data-aos="fade-up" data-aos-duration="2000">
			                <div class="inner">
			                    <div class="year">${result.beginYear } - ${result.endYear eq 'present' ? '현재' : result.endYear }</div>
			                    <div class="title">${result['groupnm'.concat(lang)] }</div>
			                </div>

			                <c:if test="${fn:length(result.cmpnyhistGroupPhotoList) gt 0 }">
				                <div class="history-slider ${fn:length(result.cmpnyhistGroupPhotoList)}" >
				                    <div class="swiper-container _historySlider${status.count }">
				                        <div class="swiper-wrapper">
				                        	<c:forEach var="photo" items="${result.cmpnyhistGroupPhotoList }" varStatus="photoStatus">
					                            <div class="swiper-slide">
					                                <img src="${publicUrl }${ photo.photoFlpth }" alt="${ photo['photoSj'.concat(lang)] }">
					                                <div class="inner">
					                                    <div class="year">${ photo.photoYear }</div>
					                                    <div class="desc">${ photo['photoSj'.concat(lang)] }</div>
					                                </div>
					                            </div>
					                        </c:forEach>

				                        </div>
				                    </div>
				                    <div class="inner">
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
				                        <div class="swiper-pagination"></div>
				                    </div>
				                    <script>
				                        var imageSwiper = new Swiper("._historySlider${status.count }", {
				                            pagination: {
				                                el: "._historySlider${status.count } + .inner .swiper-pagination",
				                                clickable : true,
				                            },
				                            navigation: {
				                                nextEl: '._historySlider${status.count } + .inner .page-item.next',
				                                prevEl: '._historySlider${status.count } + .inner .page-item.prev',
				                            },
				                            touchRatio: 0
				                        });
				                    </script>
				                </div>
			                </c:if>

			                <div class="inner">
			                	<c:if test="${fn:length(result.yearCmpnyhistList) gt 0 }">
				                    <div class="history-list">
				                        <div class="year-info" ${ status.index eq 0 ? 'id="informationYear"' : '' }>
				                            <ul>
				                            	<c:forEach var="yearCmpnyhist" items="${result.yearCmpnyhistList }" varStatus="yearCmpnyhistStatus">
				                                <li class="${ yearCmpnyhistStatus.index eq 0 ? 'active' : '' }"><span>${yearCmpnyhist.year }</span></li>
				                               	</c:forEach>
				                            </ul>
				                        </div>
				                        <div class="desc-info">
			                            	<c:forEach var="yearCmpnyhist" items="${result.yearCmpnyhistList}">
					                            <ul data-year="${yearCmpnyhist.year }">
					                            	<c:forEach var="cmpnyhist" items="${yearCmpnyhist.cmpnyhistList }">
						                                <li>
						                                    <span class="num">${cmpnyhist.mt }.</span>
						                                    <span class="desc">${cmpnyhist.cn }</span>
						                                </li>
					                            	</c:forEach>
					                            </ul>
				                            </c:forEach>
				                        </div>
				                    </div>
			                	</c:if>
			                </div>
			            </div>
			            <!-- e 글로벌 유전체 정보 구축 -->
			        </c:forEach>
	            </div>

	        </div>
    	</c:if>
    </div>
    <!--footer 수정사항 있을시 메인 footer 별도 확인-->

	<script>
	    $('#tab a').on('click', function (event) {
	        event.preventDefault()
	        $(this).tab('show')
	    })

	    function fnMove(seq){
	        var id = $('#'+ seq);
	        var offset = id.offset();
	        $('html, body').animate({scrollTop : offset.top - 95}, 400);
	    }

	    // 연혁 인터랙션
	    $(document).ready(function () {
	        var section = $('._historySection');
	        var sectionLength = section.length;

	        section.find('.desc-info').each(function (idx) {
	            var sectionHeight = section.eq(idx).find('.desc-info').height();
	            section.eq(idx).find('.year-info').css('height', sectionHeight + 'px')
	        })

	        $(window).on('resize scroll', _.throttle(function (){
	            var currentPosition = $(window).scrollTop();

	            for (var i = 0; i < sectionLength; i++) {
	                setHistoryScroll(section.eq(i));
	            }

	            if($(window).scrollTop() == $(document).height() - $(window).height()) {
	                $('.section .year-info').find('li').removeClass('active')
	                $('.section:last-child .year-info').find('li:last-child').addClass('active')
	            }
	            else {
	                $('.section:last-child .year-info').find('li:last-child').removeClass('active')
	            }
	        }, 100));

	        function setHistoryScroll($information) {
	            var gap = 0;/*50*/
	            var gapYear = 79;
	            var currentPosition = $(window).scrollTop() +95; /*+95 X*/
	            var sectionOffset = $information.find('.desc-info ul').eq(0).offset().top;
	            var scrollStart = currentPosition - sectionOffset + 123;
	            var size = $information.find('.year-info li').length;

	            $information.find('.year-info li').each(function (index) {
	                if (currentPosition < $information.find('.desc-info ul').eq(0).offset().top - gap) {
	                    //섹션 이전 화면에서는 absolute상태
	                    $information.find('.year-info').css({'top' : 'auto'}, {'position' : 'absolute'});
	                } else {
	                    //섹션 안으로 들어오면 fixed 상태
	                    if (size !== index + 1) {
	                        if (currentPosition > $information.find('.desc-info ul').eq(index).offset().top - gap && currentPosition < $information.find('.desc-info ul').eq(index + 1).offset().top - gap) {
	                            $information.find('.year-info').css({'top': scrollStart + gap - (gapYear * index)}, {'position': 'fixed'});
	                            $information.find('.year-info li').eq(index).addClass('active').siblings().removeClass('active');
	                        }
	                    } else {
	                        if (currentPosition > $information.find('.desc-info ul').eq(index).offset().top) {
	                            $information.find('.year-info').css({'top': scrollStart + gap - (gapYear * index)}, {'position': 'fixed'});
	                            $information.find('.year-info li').eq(index).addClass('active').siblings().removeClass('active');
	                        }
	                    }
	                }
	            })
	        }
	    })
	</script>


</body>