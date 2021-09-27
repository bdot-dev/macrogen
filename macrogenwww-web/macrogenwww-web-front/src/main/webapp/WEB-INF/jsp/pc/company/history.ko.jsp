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
		                        	href="#group-${result.cmpnyhistGroupSn }">${result.beginYear } - ${result.endYear eq 'present' ? 'TODAY' : result.endYear }</a></div>
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

               	<c:forEach var="result" items="${ resultList }" varStatus="status">
		            <!-- s 글로벌 유전체 정보 구축 -->
		            <div class="section" id="group-${result.cmpnyhistGroupSn }" data-aos="fade-up" data-aos-duration="2000">
		                <div class="inner">
		                    <div class="year">${result.beginYear } - ${result.endYear eq 'present' ? 'TODAY' : result.endYear }</div>
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
			                        <div class="year-info">
			                            <ul>
			                            	<c:forEach var="yearCmpnyhist" items="${result.yearCmpnyhistList }" varStatus="yearCmpnyhistStatus">
			                                <li><span>${yearCmpnyhist.year }</span></li>
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
    	</c:if>
    </div>
    <!--footer 수정사항 있을시 메인 footer 별도 확인-->

<script>
    $(document).ready(function(){
        $('.btn-totop').click(function(){
            $('html,body').animate( { scrollTop:0 },{duration : 100});
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

</body>