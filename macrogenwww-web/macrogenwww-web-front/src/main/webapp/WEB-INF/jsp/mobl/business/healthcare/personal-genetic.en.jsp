<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/bg_banner_pet.png);">
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
            <div class="font-h1">Personal Genome Analysis</div>
            <div class="font-body-h">My Genome Story</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--개인유전체분석 공통 s-->
            <div class="subject-box">
                <p class="title font-h4">My Genomestory is a personalized health care solution that helps people manage
                    their health according to their unique genetic characteristics.
                </p>
                <p class="subject font-body-h img_bottom">In addition to predicting the risk of disease, My Genomestory
                    helps anyone to enjoy healthier living by understanding their unique characteristics based on their
                    genetic data and improving their overall lifestyle.</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-en/dist/img/business/img_health_intro.png" alt="마이지놈스토리인트로">
                </div>
            </div>
            <!--개인유전체분석 공통 e-->

            <!--네비게이션 s-->
            <div class="select-nav-box _content-anchor">
                <p class="title font-h4">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">Disease Prediction & Wellness Genetic Test</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Disease Prediction & Wellness Genetic Test</a></li>
                        <li class="option-value"><a href="#">Health & Beauty Genetic Testing</a></li>
                        <li class="option-value"><a href="#">Drug Response Genetic Test</a></li>
                    </ul>
                </div>

            </div>
            <!--네비게이션 e-->


            <div class="info-box-wrap">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Disease Prediction & Wellness Genetic Test</p>
                    <p class="subject font-body-h">My Genomestory Blue (Disease Prediction), Green (Wellness), and Gold
                        (Total Care), not only predict disease, but also provide a variety of test items required to
                        maintain health and establish a balanced lifestyle based on nutrition and diet for various
                        benefits, including improved skin and hair.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_disease.png" alt="질병예측 & 웰니스 유전자검사">
                    </div>
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">My Genomestory Blue (Disease Prediction)</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">My Genomestory Blue (Disease Prediction)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">My Genomestory Green (Wellness)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">My Genomestory Gold (Total Care)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">GenTok (Disease Prediction)</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target1">My Genomestory Blue (Disease Prediction)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_mygenomeblue.png" alt="마이지놈스토리블루">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">As a predictive genetic testing service for diseases
                                            including major cancers and common diseases, this provides advance knowledge
                                            on
                                            genetic risks of disease to help relieve the anxiety over any disease and
                                            maintain a healthy lifestyle.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Cancers (13 major cancers including lung cancer, stomach cancer,
                                                    and
                                                    colorectal cancer)</p></li>
                                                <li><p>Common diseases (23 major common diseases including hypertension,
                                                    stroke, and type 2 diabetes)</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="https://www.my-genomestory.com/service_detail?service_code=blue&selectLang=ko"
                                               target="_blank" class="btn btn-sm btn-light"><span>View Detail</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target2">My Genomestory Green (Wellness)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_mygenomegreen.png" alt="마이지놈스토리그린">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">My Genomestory Green provides genetic information for
                                            diet
                                            and nutrition in order for healthy diet and effective weight management
                                            based on
                                            the individual’s genetic information. The most effective way to prevent
                                            disease
                                            is a healthy lifestyle.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Diet (17 items including obesity potential, appetite, and weight
                                                    loss
                                                    response to exercise)</p></li>
                                                <li><p>Nutrition (16 items including vitamins, calcium, and omega-3)</p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="https://www.my-genomestory.com/service_detail?service_code=green&selectLang=ko"
                                               target="_blank" class="btn btn-sm btn-light"><span>View Detail</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target3">My Genomestory Gold (Total Care)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_mygenomegold.png" alt="마이지놈스토리골드">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">This is our comprehensive genetic testing service that
                                            enables inclusion of major optional items required to build a healthy life
                                            including diseases (Blue) and wellness (Green).</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target4">GenTok (Disease Prediction)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_mygenomegentok.png" alt="젠톡">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">As the first genetic test service that combines a
                                            health
                                            survey and EMR data, the “GenTok” mobile app allows clients to check their
                                            test
                                            results and receive health information on a regular basis. When it comes to
                                            the
                                            Master test, it provides superior predictive test results by analyzing
                                            pathogenic mutations, which are strong genetic mutations related to
                                            diseases.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Standard (12 types of cancers for men, 14 types of cancer for
                                                    women,
                                                    6 types of cardiovascular disease)</p></li>
                                                <li><p>Grand (17 (19) types of cancer and disease, 6 types of
                                                    cardiovascular
                                                    disease)</p></li>
                                                <li><p>Master (17 (19) types of cancer and disease, 6 types of
                                                    cardiovascular disease)</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="mailto:gentok@macrogen.com" class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--헬스&뷰티 유전자 검사-->
                <div class="info-box">
                    <p class="font-h4 main-title" id="anchor2">Health & Beauty Genetic Testing</p>
                    <p class="subject font-body-h">“My Genomestory The Plus” is a DTC (Direct-To-Customer) genetic
                        testing service that allows clients to check their genetic characteristics or health-related
                        wellness categories without visiting a medical institute. These categories consist of nutrients,
                        exercise, skin/hair, diet, personal characteristics (e.g., alcohol flush reaction, nicotine
                        dependence), and health care (e.g., obesity, blood sugar, blood pressure). Our solution analyzes
                        genetic characteristics, based on which we provide a personalized lifestyle guide, not only
                        helping people to lead healthier and more beautiful lives but also providing opportunity to find
                        their true selves.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_healthbeauthintro.png" alt="헬스&뷰티 유전자 검사">
                    </div>
                    <hr class="divider">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">My Genomestory The Plus All-in-One 69 (73 subcategories)</span>
                        </div>
                        <!--v0.11 줄바꿈이슈-->
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target5')"><a href="#">My Genomestory The Plus All-in-One 69 (73 subcategories)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target6')"><a href="#">My Genomestory The Plus Skin & Care 44 (48 subcategories)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target7')"><a href="#">My Genomestory The Plus 41 (43 subcategories)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target8')"><a href="#">My Genomestory The Plus 12 (13 Subcategories)</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <div class="list-gallery">
                        <!--v0.11 section-anchor 추가-->
                        <div class="section-anchor">
                            <div class="list">
                                <!--v0.11 줄바꿈이슈 // title > .sub-title-->
                                <p class="sub-title font-h5" id="target5">My Genomestory The Plus All-in-One 69 (73 subcategories)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_allinone69.png" alt="마이지놈스토리더플러스올인원69">
                                    </div>

                                    <div class="cont">
                                        <p class="desc font-body caption_bottom">In addition to personal health and
                                            beauty
                                            management solutions, Macrogen helps you to get to know yourself by
                                            analyzing
                                            the genetic characteristics you want to know. The All-in-One solution covers
                                            the
                                            most areas in Korea and is a premium service that offers total health care.
                                            The
                                            number of categories will be continuously updated, and we are the first
                                            certification body to be expanding DTC categories.</p>
                                        <p class="caption">※ The service is not available to persons under 19 years of
                                            age.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Nutrients: 20 subcategories including vitamin C concentration,
                                                    vitamin D concentration, coenzyme Q10, and magnesium
                                                    concentration</p>
                                                </li>
                                                <li><p>Exercise: 8 subcategories including fitness for strength
                                                    exercise,
                                                    fitness for endurance exercise, and recovery after exercise.</p>
                                                </li>
                                                <li><p>Skin/Hair: 13 subcategories including pigmentation, aging skin,
                                                    and
                                                    male pattern hair loss</p></li>
                                                <li><p>Diet: 5 subcategories including appetite, satiety, and
                                                    sensitivity to
                                                    bitter taste</p></li>
                                                <li><p>Personal Characteristics: 12 subcategories including alcohol
                                                    flush,
                                                    nicotine dependence, and caffeine metabolism</p></li>
                                                <li><p>Health Care: 15 subcategories including obesity, tendency to
                                                    yo-yo
                                                    effect, abdominal obesity, and triglyceride concentration</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <div class="btn-wrapper"><a href="mailto:mygenomestory@macrogen.com"
                                                                        class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/5372235474"
                                                   target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <!--v0.11 section-anchor 추가-->
                        <div class="section-anchor">
                            <div class="list">
                                <!--v0.11 줄바꿈이슈 // title > .sub-title-->
                                <p class="sub-title font-h5" id="target6">My Genomestory The Plus Skin & Care 44 (48 subcategories)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_theplus_care44.png" alt="마이지놈스토리더플러스스킨&케어44">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">In addition to personal health and beauty management
                                            solutions, Macrogen helps you to get to know yourself by analyzing the
                                            genetic
                                            characteristics you want to know. The All-in-One solution covers the most
                                            areas
                                            in Korea and is a premium service that offers total health care. The number
                                            of
                                            categories will be continuously updated, and we are the first certification
                                            body
                                            to be expanding DTC categories.</p>
                                        <p class="caption">※ The service is not available to persons under 19 years of
                                            age.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Skin/Hair: 13 subcategories including pigmentation, aging skin,
                                                    and
                                                    male pattern hair loss</p></li>
                                                <li><p>Nutrients: 20 subcategories including vitamin C concentration,
                                                    vitamin D concentration, coenzyme Q10, and magnesium
                                                    concentration</p>
                                                </li>
                                                <li><p>Health Care: 15 subcategories including obesity, tendency to
                                                    yo-yo
                                                    effect, abdominal obesity, and triglyceride concentration</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <div class="btn-wrapper"><a href="mailto:mygenomestory@macrogen.com"
                                                                        class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4840761209"
                                                   target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <!--v0.11 section-anchor 추가-->
                        <div class="section-anchor">
                            <!--v0.11 줄바꿈이슈 // title > .sub-title-->
                            <div class="list">
                                <p class="sub-title font-h5" id="target7">My Genomestory The Plus 41 (43 subcategories)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_theplus_fit41.png" alt="마이지놈스토리더플러스피트니스41">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">The analysis for nutrients and exercise patterns
                                            allows
                                            you to plan your health care. The number of categories will be continuously
                                            updated, and we are the first certification body to be expanding DTC
                                            categories.</p>
                                        <p class="caption">※ The service is not available to persons under 19 years of
                                            age.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Exercise: 8 subcategories including fitness for strength
                                                    exercise,
                                                    fitness for endurance exercise, and recovery after exercise</p></li>
                                                <li><p>Nutrients: 20 subcategories including vitamin C concentration,
                                                    vitamin D concentration, coenzyme Q10, and magnesium
                                                    concentration</p>
                                                </li>
                                                <li><p>Health Care: 15 subcategories including obesity, tendency to
                                                    yo-yo
                                                    effect, abdominal obesity, and triglyceride concentration</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <!--09.29 버튼명 변경 (자세히 보기 -> 서비스 문의)-->
                                            <div class="btn-wrapper"><a href="mailto:mygenomestory@macrogen.com"
                                                                        class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4840761209"
                                                   target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <!--v0.11 section-anchor 추가-->
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target8">My Genomestory The Plus 12 (13 Subcategories)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_theplus12.png" alt="마이지놈스토리더플러스12">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">This is the only test solution that is available to
                                            persons under the age of 19, and consists of only the key services essential
                                            for
                                            easy and
                                            efficient health and beauty management.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Health: 6 subcategories including body mass index, HDL
                                                    cholesterol,
                                                    LDL cholesterol, and triglyceride concentration</p></li>
                                                <li><p>Skin: 4 subcategories including pigmentation, aging skin, and
                                                    caffeine metabolism</p></li>
                                                <li><p>Hair: 3 subcategories including male pattern hair loss and
                                                    alopecia
                                                    areata</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <div class="btn-wrapper"><a href="mailto:mygenomestory@macrogen.com"
                                                                        class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4150226329"
                                                   target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--약물 반응성 분석 서비스-->
                <div class="info-box">
                    <p class="font-h4 main-title" id="anchor3">Drug Response Genetic Test</p>
                    <p class="subject font-body-h">The drug response genetic test helps to establish the optimal
                        personalized drug treatment plan such as drug dose control and prescription of alternative drug
                        therapies by predicting the drug reaction (curative effect, metabolism and adverse effect)
                        according to the individual’s genotype.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img caption_bottom">
                        <img src="/publishing/mobile-en/dist/img/business/img_druganalysis.png" alt="약물반응성분석서비스">
                    </div>
                    <p class="caption btn-wrap_bottom">※ This service will be available in the future.</p>
                    <div class="btn-wrap">
                        <a href="mailto:mygenomestory@macrogen.com"
                           class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--v0.11 mo-ko랑 싱크 비즈니스 스크립트 추가-->
    <!--비즈니스 스크립트 리펙토링 s-->
<script>
    /*변수*/
    var selectBox = $(".select-box");
    var option = $(".option-value");

    var contentAnchor = $(".content-anchor");
    var anchorOption = $(".anchor-value");
    var anchor = $("._anchor");
    var offset = anchor.offset();
    var infoSectionList = [];


    function onClickSelectBox() {
        // console.log('onClickSelectBox');
        /*드롭다운 클릭시 이벤트*/
        selectBox.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.select-option').slideDown(200).addClass("open");

            }
        });
    }

    function onClickSelectOption() {
        // console.log('onClickSelectOption');
        /*클릭시 탭메뉴 변경*/
        option.on('click', function () {
            $(this).addClass('active').siblings().removeClass('active')
            var idx = $(this).index();
            var $info = $(".info-box-wrap > div");
            $info.addClass('show').siblings().removeClass('show');
            $info.eq(idx).addClass('show').siblings().removeClass('show');
            textChange($(this));
            setInfoSectionList($(this).text())
        })
    }

    function onClickBody() {
        $('body').on('click', function (e) {
            if (selectBox.hasClass('open')) {
                if (!selectBox.has(e.target).length) {
                    selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                }
            }
            if (!selectBox.has(e.target).length) {
                selectBox.removeClass("open").children('.select-option').slideUp(200);
            }
        })
    }

    /*클릭시 텍스트 변경*/
    function textChange(target) {
        var select = target.find('a').text();
        $('._selected-value').find('span').text(select);
    }

    /*이전 다음 이동*/
    function setTabContent(idx) {
        var $Select = $('._select-option li');
        var $Selected = $('._selected-value');
        var $info = $(".info-box-wrap > div");
        var change = $(".option-value");

        console.log(change);
        <!--탭메뉴 클릭시 페이지 변경-->
        $Selected.text($Select.eq(idx).text());
        $info.addClass('show').siblings().removeClass('show');
        $info.eq(idx).addClass('show').siblings().removeClass('show');

        change.eq(idx).addClass('active').siblings().removeClass('active');

        setInfoSectionList($Select.eq(idx).text())
        /*페이지 변경후 상단 이동*/
        fnMove();

    }

    /*탭메뉴 상단으로 이동*/
    function fnMove() {
        var offset = $("._content-anchor").offset();
        $('html, body').animate({scrollTop: offset.top - 95}, 100);
    }

    /*특정위치 show & hide*/
    function fnMousewheel() {
        var lastScroll = 0;
        var listPos = $('.info-box').offset().top;
        $(window).on('scroll', function (e) {
            let offset = $(this).scrollTop();
            console.log(offset);

            if (offset > lastScroll){
                // console.log('down')
                if (offset > listPos) {
                    contentAnchor.show().css({'position': 'fixed','top':'0px'});
                }
                else {
                    contentAnchor.hide();
                }
            } else {
                // console.log('up')
                if (offset > listPos) {
                    contentAnchor.show().css({'position': 'fixed','top':'70px'});
                }
                else {
                    contentAnchor.hide();
                }
            }
            lastScroll = offset;



            /*v0.10 스크립트 변경 s*/

            /*스크롤 변경시 텍스트 변경 및 칼러값 추가 */
            var title;
            for (
                let i = 0; i < infoSectionList.list.length; i++) {
                var item = infoSectionList.list[i]
                var title = item.title
                writeText(title)
                ChangeColor(title)

                if (offset > item.offset) {
                    // console.log(i);
                    title = item.title

                    break
                }
            }
            writeText(title)
            ChangeColor(title)
        });

        /*v0.10 스크립트 변경 e*/
    }


    /**
     * Anchor 글씨 쓰기
     * @param text
     */
    function writeText(text) {
        $('._anchor-value .text').text(text)
    }

    function ChangeColor(title){
        console.log(title);
        $(".anchor-value a").css({
            'color' : '#454545',
            'font-weight' : 'normal'
        });
        $(".anchor-value a:contains(" + title + ")").css({
            'color' : '#2E87EF',
            'font-weight' : 'bold'
        });
    }







    function setInfoSectionList(tit) {

        writeText(tit);

        infoSectionList = {
            title: tit,
            list: [],
        }
        $('.info-box.show').find('.section-anchor').each(function (index) {
            // console.log(i)
            let top = $(this).offset().top - 75;
            // console.log(top);
            let title = $(this).find('.sub-title').text();
            infoSectionList.list.unshift({
                index: index,
                offset: top,
                title: title
            })

        })
        // console.log(infoSectionList);
    }

    /*드롭다운 클릭시 이벤트*/
    function onClickFixedAnchor() {
        contentAnchor.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.anchor-option').slideDown(200).addClass("open");

            }
        });
        $('body').on('click', function (e) {
            if (contentAnchor.hasClass('open')) {
                if (!contentAnchor.has(e.target).length) {
                    contentAnchor.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
                }
            }
        })
        /*클릭시 텍스트 변경*/
        anchorOption.on('click', function () {
            var select = $(this).find('a').text();
            writeText(select)
        });
    }

    /*클릭시 페이지 이동 이동*/
    function TitleMove(target) {
        var id = $('#' + target);
        var offset = id.offset();
        $('html, body').animate({scrollTop: offset.top - 60}, 300);
    }


    function init() {
        onClickSelectBox();
        onClickSelectOption();
        onClickBody();
        onClickFixedAnchor();
        fnMousewheel();
        setInfoSectionList($('._selected-value span').text())
    }

    init()


</script>
<!--비즈니스 스크립트 리펙토링 e-->

<!--1번이미지 모달 s-->
<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
            <div class="parent">
                <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_data_graph1.png" alt="게시물 제목"></div>
            </div>
        </div>
    </div>
</div>
<div class="toast-popup">
    <p>You can enlarge it by clicking on the image.</p>
</div>
<script>
    // modal show
    var modal = new bootstrap.Modal(document.getElementById('modalImageViewer1'));
    // zoom
    var el = document.querySelector('.panzoom');
    new PinchZoom.default(el, {});

    // modal close
    $('.btn-close').on('click', function () {
        modal.hide();
        hideToastPopup();
    })

    // modal open
    $('._btnZoom-1').on('click', function () {
        modal.show();
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
<!--1번이미지 모달 e-->

</body>
