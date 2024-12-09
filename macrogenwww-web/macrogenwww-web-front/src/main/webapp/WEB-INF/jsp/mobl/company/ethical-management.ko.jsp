<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
    <div class="full-bg">
        <header class="header">
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
                // $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
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
            <h2 class="font-h4">윤리경영</h2>
            <div class="font-slogan">공정하고 투명한<br/>기업을 만들어갑니다</div>
            <!-- <div class="font-h7-r">글로벌 선도기업으로서<br/> 사회적 책임을 다하고자 합니다</div> -->
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
                    <div class="font-h3">공정하고 투명한 기업경영을 위해 최선을 다하고 있습니다</div>
                    <div class="font-body-h">윤리경영 원칙 아래 더욱 신뢰받는 기업이 되도록 항상 노력하겠습니다.</div>
                </div>
            </div>
            <!-- e  문구 -->

            <!-- s  윤리경영 원칙 -->
            <div class="section-bg">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h3">윤리경영 원칙</div>
                    <div class="font-body-h">고객, 근로자, 주주, 협력회사, 국가 및 지역사회 등에 대한 윤리적 책임을 자각하고<br/>기업활동의 중요한 원칙으로서 지키고 실천하겠습니다</div>
                    <div class="content">
                        <div class="swiper-container _slider">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <ul>
                                        <li>
                                            <div class="tit">고객 우선</div>
                                            <div class="desc">우리는 고객의 권리를 보호하고,
                                                고객의 개인정보를
                                                최우선 순위로 보호한다.</div>
                                        </li>
                                        <li>
                                            <div class="tit">주주 보호</div>
                                            <div class="desc">우리는 윤리경영의 효율적 실현을 통해
                                                재무구조를 건실하게 개선함으로써
                                                주주의 자산을 보전하고 이익을 보호하도록
                                                최선의 노력을 한다.</div>
                                        </li>
                                        <li>
                                            <div class="tit">협력회사 상생</div>
                                            <div class="desc">우리는 협력회사와 상호 보완하며
                                                균형 있게 발전할 수 있도록
                                                공정한 관계를 유지하며,
                                                불공정한 행위를 강요하지 않는다.</div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="swiper-slide">
                                    <ul>
                                        <li>
                                            <div class="tit">임직원 존중</div>
                                            <div class="desc">우리는 이해와 신뢰를 바탕으로 한
                                                성숙한 윤리문화를 이룩하고,
                                                임직원간 서로 존경하며
                                                성희롱 예방에 최선을 다한다.</div>
                                        </li>
                                        <li>
                                            <div class="tit">사회 발전</div>
                                            <div class="desc">우리는 준법성, 투명성, 공정성을
                                                준수하고 사회에 공헌하여
                                                국민에게 신뢰받는
                                                정직한 기업문화를 정착한다.</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="pagination-wrap">
                            <ul class="navigation">
                                <li class="page-item white prev">
                                    <a class="page-link _slidePrev2" href="#">
                                        <span class="sr-only">이전</span>
                                    </a>
                                </li>
                                <li class="page-item white next">
                                    <a class="page-link _slideNext2" href="#">
                                        <span class="sr-only">다음</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-pagination _pagination"></div>
                    </div>
                </div>
            </div>
            <script>
                var swiper = new Swiper("._slider", {
                    slidesPerView: "auto",
                    spaceBetween: 0,
                    centeredSlides: false,
                    watchActiveIndex: true,
                    slideToClickedSlide: true,
                    pagination: {
                        el: "._pagination",
                        clickable : true,
                    },
                    navigation: {
                        nextEl: "._slideNext",
                        prevEl: "._slidePrev",
                    },
                });
            </script>
            <!-- e  윤리경영 원칙 -->

            <!-- s  제보 -->
            <div class="section-tip">
                <div class="inner">
                    <div data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h4">마크로젠은 헬프라인을 통해 윤리경영 원칙에 배치되는 행위에 관한 신고를 받고 있습니다.</div>
                        <div class="font-body-h">임직원의 부정행위에 관한 제보 및 건의사항이 있으시면 헬프라인으로 접수해 주시기 바랍니다.</div>
                    </div>
                    <div class="subject-to-report" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h7">제보대상</div>
                        <ul class="list">
                            <li>마크로젠 임직원에 의한 고객 권리 침해 행위</li>
                            <li>불공정 거래, 부당 선정, 관계사 정보 유출 등 관계사 상대 갑질</li>
                            <li>협력회사에 대한 부당지분 참여, 겸직 등 기회 유용</li>
                            <li>공금위반, 금전 기타 이익수수 등 비위 행위</li>
                            <li>부정 보고, 문서 조작 또는 회사 정보 유출 행위</li>
                            <li>성희롱, 직원간 차별/강압 행위</li>
                            <li>기타 법률 위반 행위</li>
                        </ul>
                    </div>
                    <div class="subject-to-report-step" data-aos="fade-up" data-aos-duration="2000">
                        <div class="swiper-container _slider2">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="img">
                                            <img src="/publishing/mobile-ko/dist/img/esg/ethical-thumb-1.png" alt="제보 접수">
                                        </div>
                                        <div class="info">
                                            <span class="font-body-h-b">윤리경영에 배치되는 행위 등 내용을 상세히 기재하여 메일 발송해 주시기 바랍니다.</span>
                                            <a href="mailto:report@mghelpline.com" class="link">report@mghelpline.com</a>
                                            <span class="tip">제보 접수 메일 계정은 사내 계정과 별도로 운영 · 관리되는 계정으로, 최소한의 보안 관리자에 한해 접근 가능한 계정입니다.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="img">
                                            <img src="/publishing/mobile-ko/dist/img/esg/ethical-thumb-2.png" alt="제보 접수">
                                        </div>
                                        <div class="info">
                                            <span class="font-body-h-b">메일로 접수된 내용을 담당자가 확인하며, 제보자 신분을 보호하기 위하여 제한된 극소수의 인원이 관련 내용의 처리를 진행합니다.</span>
                                            <span class="font-body-h-b">제보자 보호에 책임을 다하겠습니다.</span>
                                            <span class="desc-xs">마크로젠은 제보자 또는 신고자의 개인정보보호 및 비밀유지를 철저히 하며, 제보 또는 신고로 인한 불이익이 발생하지 않도록 철저히 관리하고  있습니다.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="img">
                                            <img src="/publishing/mobile-ko/dist/img/esg/ethical-thumb-3.png" alt="조사 개시">
                                        </div>
                                        <div class="info">
                                            <span class="font-body-h-b">조사는 제보 접수 순서 및 우선 순위에 따라 진행되며,  조사 대상 및 범위에 따라 기간이 달라질 수 있습니다.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="img">
                                            <img src="/publishing/mobile-ko/dist/img/esg/ethical-thumb-4.png" alt="조사 완료">
                                        </div>
                                        <div class="info">
                                            <span class="font-body-h-b">제보 내용에 대한 사실 확인 후 아래와 같이 처리하며, 그 결과를 신속히 알려 드립니다.</span>
                                            <ul>
                                                <li><span>건의 및 요청사항</span><span>유관부서 협의 후 제안 사항에 관한 처리 결과를 신속히 답변</span></li>
                                                <li><span>중대 위반사항</span><span>내부 조사 후 처리 결과를 신속히 답변. 필요에 따라 특별 감사 또는 사법기관 고발 등 후속 조치 시행</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pagination-wrap">
                            <ul class="navigation">
                                <li class="page-item prev">
                                    <a class="page-link _slidePrev2" href="#">
                                        <span class="sr-only">이전</span>
                                    </a>
                                </li>
                                <li class="page-item next">
                                    <a class="page-link _slideNext2" href="#">
                                        <span class="sr-only">다음</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-pagination _pagination2"></div>
                    </div>
                </div>
            </div>
            <script>
                var swiper2 = new Swiper("._slider2", {
                    slidesPerView: "auto",
                    spaceBetween: 0,
                    centeredSlides: false,
                    watchActiveIndex: true,
                    slideToClickedSlide: true,
                    pagination: {
                        el: "._pagination2",
                        clickable : true,
                    },
                    navigation: {
                        nextEl: "._slideNext2",
                        prevEl: "._slidePrev2",
                    },
                });
            </script>
            <!-- e  제보 -->
        </div>
    </div>


</body>
