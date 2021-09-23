<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/@temp/macrogen/macrogen_bg_1.png);">
        <!--
<header class="header" id="header">
    <div class="inner">
        <div class="section_gnb">
            <h1 class="logo"><a href="#">마크로젠 로고</a></h1>
            <nav>
                <ul id="gnb">
                    <li><a href="#" class="font-bold">macrogen</a></li> &lt;!&ndash; active 시, 활성화 &ndash;&gt;
                    <li><a href="#" class="font-bold">business</a></li>
                    <li><a href="#" class="font-bold">r&d</a></li>
                    <li><a href="#" class="font-bold">newsroom</a></li>
                    <li><a href="#" class="font-bold">ir</a></li>
                    <li><a href="#" class="font-bold">esg</a></li>
                </ul>
            </nav>
        </div>
        <div class="section_btn">
            <ul class="sns">
                <li><a href="#"><i class="icon icon-facebook-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-youtube-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-blog-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-linkedin-circle-white"></i></a></li>
            </ul>
            <div class="btn_eng">
                <a href="#" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
            </div>
        </div>
    </div>
    <div class="gnb-2depth" id="gnb2Depth">
        <div class="box">
            <div class="item">
                <div class="title"><a href="#">회사소개</a></div>
                <ul>
                    <li><a href="#">기업개요</a></li>
                    <li><a href="#">경영진</a></li>
                    <li><a href="#">연혁</a></li>
                    <li><a href="#">비전</a></li>
                    <li><a href="#">마크로젠 CI</a></li>
                    <li><a href="#">인증</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="title"><a href="#">글로벌 네트워크</a></div>
            </div>
            <div class="item">
                <div class="title"><a href="#">지속가능경영</a></div>
                <ul>
                    <li><a href="#">ESG경영</a></li>
                    <li><a href="#">윤리경영</a></li>
                    <li><a href="#">사회공헌</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="title"><a href="#">채용</a></div>
                <ul>
                    <li><a href="#">인재상</a></li>
                    <li><a href="#">직무소개</a></li>
                    <li><a href="#">채용안내</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<script>
    $('#gnb2Depth').hide();
    $('#gnb li a').on({
        "mouseenter focusin" : function () {
            $('#header').addClass('active header-bg-white');
            $('#gnb2Depth').slideDown('500','linear');
            $('body, html').scroll(function(){
                $('#header').removeClass('active');
                $('#gnb2Depth').slideUp('500','linear');
            });
        },
    })
    $('#header').on({
        "mouseleave focusout" : function () {
            setTimeout(function() {
                $('#header').removeClass('active header-bg-white');
                }, 300);
            $('#gnb2Depth').slideUp('400','linear');
        }
    })
</script>
-->


			<header class="header">
			   	<c:import url="/inc/header-inner-gnb" />
			</header>

			        <div class="frame">
			            <div class="hero-title">연혁</div>
			            <div class="slogan ko">슬로건정리필요</div>
			            <div class= "slogan-sub">‘홍익인간’의 가치를 실현하기 위해 오늘도 밤을 밝힙니다</div>
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

</body>