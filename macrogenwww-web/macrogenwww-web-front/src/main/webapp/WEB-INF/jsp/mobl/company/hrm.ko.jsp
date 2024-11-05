<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg" style="background-image: url(/publishing/mobile-ko/dist/img/macrogen/bg-macrogen-human-resource.png);">
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
            <h2 class="font-h4">인사제도</h2>
            <div class="font-slogan">더 나은 미래를 위해<br/>함께 성장해갑니다</div>
            <div class="font-h7-r">직원들의 더 나은<br/>미래를 위해 노력합니다</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen macrogen-human-resource">
            <!-- s  인사관리 -->
            <div class="section-management" data-aos="fade-up" data-aos-duration="2000">
                <div class="inner">
                    <div class="font-h7">인사관리</div>
                    <div class="font-h3">성과에 대한  체계적인 평가와 교육을 실시합니다</div>
                    <div class="step">
                        <div class="swiper-container _slider">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide item-1">
                                    <div class="item">
                                        <div class="font-h5">모집/선발</div>
                                        <div class="font-body">마크로젠의 인재상에 부합하는<br/>우수인력 모집 및 선발 프로세스</div>
                                    </div>
                                </div>
                                <div class="swiper-slide item-2">
                                    <div class="item">
                                        <div class="font-h5">인사평가/보상체계</div>
                                        <div class="font-body">MBO 식 성과평가를 반영한<br/>승진 및 보상(호봉+연봉) 시스템</div>
                                    </div>
                                </div>
                                <div class="swiper-slide item-3">
                                    <div class="item">
                                        <div class="font-h5">교육훈련/경력개발</div>
                                        <div class="font-body">직무 위주 교육훈련 실시 및 <br/>체계적인 경력개발 프로그램</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pagination-wrap">
                    <ul class="navigation">
                        <li class="page-item prev">
                            <a class="page-link _slidePrev" href="#">
                                <span class="sr-only">이전</span>
                            </a>
                        </li>
                        <li class="page-item next">
                            <a class="page-link _slideNext" href="#">
                                <span class="sr-only">다음</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <script>
                var swiper = new Swiper("._slider", {
                    slidesPerView: "auto",
                    spaceBetween: 0,
                    centeredSlides: false,
                    watchActiveIndex: true,
                    slideToClickedSlide: true,
                    pagination: {
                        el: " .swiper-pagination",
                        clickable : true,
                    },
                    navigation: {
                        nextEl: "._slideNext",
                        prevEl: " ._slidePrev",
                    },
                });
            </script>
            <!-- e  인사관리 -->

            <!-- s  직급체계 -->
            <div class="section-rank-system">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h7">직급체계</div>
                    <div class="font-h3">직원들의 잠재력을 끌어올려 함께 성장해갑니다</div>
                    <div class="flow-bg"></div>
                </div>
            </div>
            <!-- e  직급체계 -->

            <!-- s  복리후생 -->
            <div class="section-welfare">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h7">복리후생</div>
                    <div class="font-h3">마크로젠은 직원들의<br/>일도 생활도 소중히<br/> 여깁니다</div>
                    <div class="click-area">
                        <div class="font-body-h">모두가 일과 일상에서 안정과 성장을 누릴 수 있도록<br/>다양한 복지혜택을 제공합니다.</div>
                        <div class="btn-wrap"><a class="font-body-b" href="/${rc.locale.language }/company/recruit"><span>채용안내</span><i class="icon ico-moveLong-black"></i></a></div>
                    </div>
                </div>
                <div class="item item-1">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h5">일과 삶의 즐거움</div>
                        <ul class="row">
                            <li class="col col-6">정기<br/>건강검진</li>
                            <li class="col col-6">명절상여/선물<br>지급</li>
                            <li class="col col-6">사내동호회<br/>지원</li>
                            <li class="col col-6">부서회식비<br/>지원</li>
                            <li class="col col-6">사내휴게실<br/>운영</li>
                        </ul>
                    </div>
                </div>
                <div class="item item-2">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h5">일에 대한 보상</div>
                        <ul class="row">
                            <li class="col col-6">인센티브제<br/>운영</li>
                            <li class="col col-6">우리사주조합<br/>운영</li>
                            <li class="col col-6">주식매수선택권<br/>부여</li>
                            <li class="col col-6">생활안정자금<br/>대출</li>
                            <li class="col col-6">장기근속/우수사원<br/>포상</li>
                        </ul>
                    </div>
                </div>
                <div class="item item-3">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h5">일과 삶의 조화</div>
                        <ul class="row">
                            <li class="col col-6">주 5일<br/>근무제</li>
                            <li class="col col-6">대체휴무<br>제도</li>
                            <li class="col col-6">시차<br>출퇴근제</li>
                            <li class="col col-6">경조휴가/경조금<br/>지급</li>
                            <li class="col col-6">Family-day제도<br/>운영</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- e  복리후생 -->
        </div>
    </div>

</body>
