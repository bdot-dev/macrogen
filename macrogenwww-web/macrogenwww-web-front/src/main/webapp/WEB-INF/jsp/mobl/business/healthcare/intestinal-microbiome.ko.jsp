<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/bg_banner_pet.png);">
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
            <div class="font-h1">마이크로바이옴 분석 및 맞춤형 솔루션</div>
            <div class="font-body-h">더바이옴 프로</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business microbiome">
            <!--메인 컨텐츠-->
            <div class="subject-box no-line">
                <p class="title font-h4">빅데이터에 기반한 마이크로바이옴 분석을 통해 개인 맞춤형 건강관리 솔루션을 제공합니다 </p>
                <p class="subject font-body-h img_bottom">
                ‘마이크로바이옴’은 제2의 유전체라고도 불릴 만큼 중요한 존재로 주목 받고 있습니다. 신진대사, 소화능력, 질병 관리체계, 면역력 등 인체에 다양한 영향을 미치는 것으로 확인되면서, 질병의 90% 이상이 마이크로바이옴과 연관된 것으로도 나타났습니다.
               	<br><br>
               	특히 장내 마이크로바이옴은 개인의 유전체, 식/생활 습관 등에 따라 꾸준히 변화하며 잘못된 습관에 따라 장내 유해균은 증가하고 유익균은 감소하여 장 건강 밸런스가 깨질 수 있습니다. 때문에 장 건강을 위해서는 나의 장 속 마이크로 바이옴을 확인하고 유익균을 보충하여 관리하는 것이 중요합니다.
                </p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img_microbiome_intro.png" alt="마이지놈스토리인트로">
                </div>
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img_microbiome_test.png" alt="마이크로바이옴 검사">
                </div>
            </div>
            <div class="info-box-wrap" style="display:none;">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box show">
                    <p class="font-h4 sub-title" id="disease_title">더바이옴(the Biome)</p>
                    <p class="subject font-body-h img_bottom">나보다 날 더 잘 아는 ‘더바이옴’은 장내 마이크로바이옴 생태계를 확인하여 건강한 장을 만들어 갈 수 있도록 도와주는 ’나’를 위한 맞춤형 솔루션입니다. 장내 마이크로바이옴 테스트를 통해 나에게 부족한 장내 유익균을 더해주는 맞춤형 유산균을 제공합니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_microbiome_mo01.png" alt="더바이옴">
                    </div>
                    <p class="font-h5 sub-title">더바이옴 테스트의 특장점</p>
                    <p class="subject font-body-h img_bottom">더바이옴 테스트는 개인별 장내 마이크로바이옴 상태를 알아보는 검사입니다. 한 번의 신속, 간편한 검사를 통해 장내 환경 및 유익균 비중에 대한 자세한 정보를 확인할 수 있습니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_microbiome_mo02.png" alt="더바이옴 테스트의 특장점">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">더바이옴 장 유형</p>
                    <p class="subject font-body-h img_bottom">더바이옴 테스트 결과에 따라 장 유형을 4가지로 나누고, 각 유형별 부족한 프로바이오틱스와 부원료를 채워주는 균주 배합으로 최적의 맞춤형 유산균 솔루션을 제공합니다.</p>
                     <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-ko/dist/img/business/img_microbiome_mo03.png" alt="더바이옴 장 유형">
                                <span class="btnZoom-1"><i class="icon ico-zoom-white"></i></span>
                            </div>
                        </div>
                    <p class="font-h8 sub-title">락토바실러스 부족형</p>
                    <div class="list-area">
                         <ul class="list-circle-dot">
                             <li><p>비바 BiBa</p>
                             	<span>단백질 위주의 식습관을 가진 사람들에게서 많이 확인되는 유형으로, 장내에 비피도박테리움과 박테로이데스가 많고, 상대적으로 락토바실러스와 프레보텔라가 부족한 상태입니다. </span>
                             </li>
                             <li><p>비프레 BiPre</p>
                             	<span>식이섬유가 많은 채식 위주의 식습관을 가진 사람들에게서 많이 확인되는 유형으로, 장내에 비피도박테리움과 프레보텔라가 많고, 상대적으로 락토바실러스와 박테로이데스가 부족한 상태입니다.</span>
                             </li>
                         </ul>
                    </div>
                    <p class="font-h8 sub-title">비피도박테리움 부족형</p>
                    <div class="list-area">
                         <ul class="list-circle-dot">
                             <li><p>라바 LaBa</p>
                             	<span>단백질 위주의 식습관을 가진 사람들에게서 많이 확인되는 유형으로, 장내에 락토바실러스와 박테로이데스가 많고, 상대적으로 비피도박테리움과 프레보텔라가 부족한 상태입니다. </span>
                             </li>
                             <li><p>라프레 LaPre</p>
                           		<span>식이섬유가 많은 채식 위주의 식습관을 가진 사람들에게서 많이 확인되는 유형으로, 장내에 락토바실러스와 프레보텔라가 많고, 상대적으로 비피도박테리움과 박테로이데스가 부족한 상태입니다.</span>
                             </li>
                         </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">더바이옴 유산균</p>
                    <p class="subject font-body-h img_bottom">더바이옴은 장내 마이크로바이옴 검사 키트로 분석한 장 유형 결과에 따라, 유형별로 부족한 프로바이오틱스와 영양분을 더해주는 맞춤형 유산균을 제공합니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_microbiome_mo04.png" alt="더바이옴 유산균">
                    </div>
                    <div class="list-area">
                        <ul class="list-circle-dot txtcolor">
                            <li><p>비바(BiBa) 유형을 위한 더락토 장튼튼</p></li>
                            <li><p>비프레(BiPre) 유형을 위한 더락토 면역튼튼</p></li>
                            <li><p>라바(LaBa) 유형을 위한 더비피도 장튼튼</p></li>
                            <li><p>라프레(LaPre) 유형을 위한 더비피도 면역튼튼</p></li>
                        </ul>
                    </div>
                    <a class="csinfo" href="tel:1644-9599">더바이옴 고객센터 <span>1644-9599</span></a>
                    <div class="btn-area">
                        <a href="https://thebiome.life/" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                        <a href="https://smartstore.naver.com/thebiomelife" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	 <!--v0.7 tost-popup 추가-->
    <div class="toast-popup">
        <p>이미지를 확대할 수 있습니다</p>
    </div>
    <!--modalImageViewer1 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_microbiome_mo03.png" alt="줌이미지"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modalImageViewer1 = new bootstrap.Modal(document.getElementById('modalImageViewer1'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});
        // modal close
        $('.btn-close').on('click', function () {
            modalImageViewer1.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-1').on('click', function () {
            modalImageViewer1.show();
            showToastPopup();
        })

        // toast popup
        function showToastPopup() {
            $('.toast-popup').addClass('active');
            setTimeout(hideToastPopup, 2000);
        }

        function hideToastPopup() {
            $('.toast-popup').removeClass('active');
        }
    </script>
    <!--modalImageViewer1 s-->

</body>
