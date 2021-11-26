<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/test-bg.png);">
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
            <div class="font-h1">Genetic Disorder</div>
            <div class="font-body-h">Prenatal testing and early screening for rare hereditary diseases</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <div class="subject-box">
                <p class="font-h4 title">We offer a wide range of genome sequencing to help people lead healthier and happier lives.</p>
                <!--10.25 html 추가-->
                <p class="subject font-body-h">The Clinical Diagnostics Division helps individuals lead healthy lives throughout their lifespan through prenatal and rare disease tests for fetuses.<br>
                    From disease prevention to personalized treatment, we provide various genome sequencing tests.</p>
            </div>
            <div class="info-box-wrap">
                <!--산전 염색체 이수성 검사-->
                <div class="info-box show subject-box">
                    <p class="font-h4 title">NIPS: Non-Invasive Prenatal Screening</p>
                    <p class="subject font-body-h img_bottom">NIPS is the test that screens for aneuploidy of chromosomes in a fetus using its cffDNA (cell-free fetal DNA). The test is performed for Down syndrome,<br>
                        Edwards syndrome and Patau syndrome, the most typical kinds of aneuploidy, and aneuploidy of gender chromosomes.</p>
                    <div class="img caption_bottom">
                        <img src="/publishing/mobile-en/dist/img/business/img-npis.png" alt="NIPS">
                        <span class="btnZoom-1">
                            <i class="icon ico-zoom-white"></i>
                        </span>
                    </div>
                    <div class="caption">※ This test has not established the clinical meaning of the test results, and there is still insufficient objective validity that the resulting health-related actions are useful.
                    </div>
                </div>
                <div class="info-box show subject-box no-line">
                    <p class="font-h4 title">Rare Disease Genome</p>
                    <p class="subject font-body-h desc img_bottom">There are more than 8,000 known rare diseases. Among them, 80% are hereditary diseases caused by gene mutation.  Even though the prevalence rate of each<br>
                        disease is very low, the risk is rather high around the world because there are so many types and symptoms of these diseases.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_raredisease.png" alt="희귀질환 유전체">
                        <span class="btnZoom-2">
                            <i class="icon ico-zoom-white"></i>
                        </span>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="toast-popup">
        <p>You can enlarge it by clicking on the image.</p>
    </div>
    <!--modalImageViewer1 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img-npis.png" alt="familyline"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modal1 = new bootstrap.Modal(document.getElementById('modalImageViewer1'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});


        // modal close
        $('.btn-close').on('click', function () {
            modal1.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-1').on('click', function () {
            modal1.show();
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
    <!--modalImageViewer1 e-->

    <!--modalImageViewer2 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer2" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_raredisease_view.png" alt="raredisease"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modal2 = new bootstrap.Modal(document.getElementById('modalImageViewer2'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});
        // modal close
        $('.btn-close').on('click', function () {
            modal2.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-2').on('click', function () {
            modal2.show();
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

</body>
