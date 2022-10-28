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
            <div class="font-h1">COVID-19</div>
            <div class="font-body-h">Tests for Diagnosis of Infectious Diseases</div>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">service</span></a></div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--covid19 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">We provide molecular diagnostic solutions to diagnose infectious diseases.</p>
                <p class="desc font-body">
                    Rapid and accurate diagnoses made in the optimal testing environment are a must in today's world. Macrogen proposes integrated diagnostic solutions easy-to-use for both patients and medical professionals by supplying highly accurate testing kits and building the point-of-care diagnosis system marked by mobility, safety, and convenience.
                </p>

            </div>
            <!--covid19 공통 e -->

            <!--covid19 탭 네비 s-->
            <div class="select-nav-box _content-anchor">
                <p class="title font-h4" id="tab_anchor">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">Axen™ COVID-19 Testing Kits</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Axen™ COVID-19 Testing Kits</a></li>
                        <li class="option-value"><a href="#">Macrogen Smart Mobile Lab</a></li>
                    </ul>
                </div>

            </div>
            <!--covid19 탭 네비 e-->

            <!--covid19 탭 메뉴 s-->
            <div class="info-box-wrap tab-content">
                <!--Axen™ COVID-19 RT 진단키트-->
                <div class="info-box info-covid19 show">
                    <p class="font-h4 main-title">Axen™ COVID-19 Ag RAPID</p>
                   <!-- <p class="subject font-body-h">An in vitro diagnostic kit for confirming the infection of COVID-19 in just two hours.</p> -->
                    <p class="desc img_bottom font-body">
						Axen™ COVID-19 Ag RAPID is Macrogen's rapid antigen self-test kit with a high sensitivity of 97%. It can rapidly confirm COVID-19 infection within 15 minutes by qualitatively detecting the SARS-CoV-2 specific antigen in specimens from saliva, nasal swabs, or nasopharyngeal swabs.
					</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_coronamedical1.png" alt="Axen™ COVID-19 Ag RAPID">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title figure_bottom">Specifications</p>
                            <div class="table-scroll">
                             <table class="table">
                                <colgroup>
                                    <col style="width:50%;">
                                    <col style="width:50%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th>Product Type</th>
                                    <td>Qualitative Rapid Testing Kit<br> (ImmunoChromatography)</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">Specimen<br> & Test Volume</th>
                                    <td>saliva, nasal swabs, or nasopharyngeal swabs</td>
                                </tr>
                                <tr>
                                    <td>4 drops(190 ㎕)</td>
                                </tr>
                                <tr>
                                    <th>Reading Time</th>
                                    <td>15 minutes</td>
                                </tr>
                                <tr>
                                    <th>Shelf-life</th>
                                    <td>24 months</td>
                                </tr>
                                <tr>
                                    <th>Storage Temp</th>
                                    <td>Room Temperature (1~30℃)</td>
                                </tr>
                                <tr>
                                    <th>Package</th>
                                    <td>30 T/Box</td>
                                </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h title img">Features</p>
                            <ul class="list-circle-dot features">
                                <li><span>Rapid:</span><p> Result reading possible within 15 minutes</p></li>
                                <li><span>Accurate:</span><p> high sensitivity (96.9%, 126/130) and high specificity (97.3%, 146/150)</p></li>
                                <li><span>Simple:</span><p> Optimized point-of-care testing enabled by the test kit easy and simple to use</p></li>
                            </ul>
                        </div>
                        <div class="list-area last-list-area">
                            <p class="font-body-h title img">Certification</p>
                            <ul class="list-circle-dot">
                                <li><p>CE-IVD</p></li>
                                <li><p>CFS, Certificate of Free Sales</p></li>
                            </ul>
                        </div>                        
                    </div>
                    <p class="font-h4 main-title">Axen™ COVID-19 lg RAPID</p>
                    <p class="desc img_bottom font-body">Axen™ COVID-19 lg RAPID is Macrogen's rapid antibody testing kit with a high accuracy of 97% or more. It is an in vitro diagnostic device that qualitatively
						detects the IgM / IgG antibodies to SARS-CoV-2 in serum, plasma, and whole blood. With a minimal amount of blood sample, it can diagnose COVID-19
						infection within 15 minutes.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_coronamedical2.png" alt="Axen™ COVID-19 lg RAPID">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title figure_bottom">Specifications</p>
                            <div class="table-scroll">
                             <table class="table">
                                <colgroup>
                                    <col style="width:50%;">
                                    <col style="width:50%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th>Product Type</th>
                                    <td>Qualitative Rapid Testing Kit<br/>(ImmunoChromatography)</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">Specimen<br> & Test Volume</th>
                                    <td>serum, plasma, and whole blood</td>
                                </tr>
                                <tr>
                                    <td>3㎕</td>
                                </tr>
                                <tr>
                                    <th>Sample Diluent<br> Buffer Volume</th>
                                    <td>4 drops(180 ㎕)</td>
                                </tr>
                                <tr>
                                    <th>Reading Time</th>
                                    <td>15 minutes</td>
                                </tr>
                                <tr>
                                    <th>Shelf-life</th>
                                    <td>24 months</td>
                                </tr>
                                <tr>
                                    <th>Storage Temp</th>
                                    <td>Room Temperature (1~30℃)</td>
                                </tr>
                                <tr>
                                    <th>Package</th>
                                    <td>30 T/Box</td>
                                </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h title img">Features</p>
                            <ul class="list-circle-dot features">
                                <li><span>Rapid:</span><p> Result reading possible within 15 minutes</p></li>
                                <li><span>Accurate:</span><p> high sensitivity (97.7%, 127/130) and high specificity (97.3%, 146/150)</p></li>
                                <li><span>Simple:</span><p> Optimized point-of-care testing enabled by the test kit easy and simple to use</p></li>
                            </ul>
                        </div>
                        <div class="list-area last-list-area2">
                            <p class="font-body-h title img">Certification</p>
                            <ul class="list-circle-dot">
                                <li><p>CE-IVD</p></li>
                                <li><p>CFS, Certificate of Free Sales</p></li>
                            </ul>
                        </div>                        
                    </div>
                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--스마트 모바일 랩-->
                <div class="info-box">
                    <p class="font-h4 main-title">Macrogen Smart Mobile Lab</p>
                    <p class="subject font-body-h">Smart Mobile Lab is the first-ever on-site COVID 19 testing system developed in Korea.</p>
                    <p class="desc img_bottom font-body">This is a small mobile lab for on-site testing of the virus, and it is composed of an all-in-one system that can perform the entire process, starting from the extraction of virus nucleic acid, followed by genetic testing, and then the analysis results.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-smartmobile-intro.png" alt="스마트모바일랩">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h title img">Specifications</p>
                            <ul class="list-circle-dot">
                                <li><p>K-Quarantine model</p></li>
                                <li><p>Equipment options available depending on budget or preference</p></li>
                                <li><p>Power supply options available (External Power/Solar Power System)</p></li>
                                <li><p>Maintenance and repair service provided</p></li>
                                <li><p>Training for lab technicians provided (online/offline)</p></li>
                                <li><p>Easy installation/relocation</p></li>
                                <li><p>Collaboration with a company specialized in mobile labs and negative pressure wards</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h title figure_bottom">Ordering Information for Relative Product</p>
                            <div class="table-scroll">
                                <table class="table">
                                    <colgroup>
                                        <col style="width:33.3333%;">
                                        <col style="width:33.3333%;">
                                        <col style="width:33.3333%;">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>Name of Kit</th>
                                        <th>Cat.No.</th>
                                        <th>BSL-Level</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Smart Mobile Lab(40ft)</td>
                                        <td>SML01-100</td>
                                        <td>BSL- 2 Level</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="list-area mb-0">
                            <p class="font-body-h title img_bottom">Process</p>
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img_workflow-level7.png" alt="workflow">
                            </div>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)">
                                    <i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--covid19 탭 메뉴 e-->
        </div>
    </div>
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

<div class="toast-popup">
    <p>You can enlarge it by clicking on the image.</p>
</div>
<!--modalImageViewer1 s-->
<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
            <div class="parent">
                <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_data_graph1.png" alt="graph1"></div>
            </div>
        </div>
    </div>
</div>
<script>
    // modal show
    var modalImageViewer1 = new bootstrap.Modal(document.getElementById('modalImageViewer1'))

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

    // show toast popup
    function showToastPopup() {
        $('.toast-popup').addClass('active');
        setTimeout(hideToastPopup, 2000);
    }

    // hide toast popup
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
                <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_data_graph2.png" alt="graph2"></div>
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
<!--modalImageViewer2 e-->
<!--modalImageViewer3 s-->
<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer3" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
            <div class="parent">
                <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_clinicaltrialtest.png" alt="clinicaltrialtest"></div>
            </div>
        </div>
    </div>
</div>
<script>
    // modal show
    var modal3 = new bootstrap.Modal(document.getElementById('modalImageViewer3'));
    // zoom
    var el = document.querySelector('.panzoom');
    // new PinchZoom.default(el, {});
    // modal close
    $('.btn-close').on('click', function () {
        modal3.hide();
        hideToastPopup();
    })

    // modal open
    $('.btnZoom-3').on('click', function () {
        modal3.show();
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
