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
            <div class="font-h1">Cancer Genome Testing</div>
            <div class="font-body-h">Using FFPE, tissue, and liquid biopsy</div>
            <div class="btn-wrap"><a href="#tabAncher" class="btn-service"><span class="sr-only">service</span></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <div class="subject-box">
                <p class="font-h4 title">We provide personalized solutions for a healthy life by analyzing your genomic
                    features.</p>
                <p class="subject font-body">Based on genetic factors identified through your personal genome sequence,
                    we predict the risk of cancer and provide personalized treatment information by analyzing mutations
                    in oncogenes.</p>
            </div>
            <!--암 유전체 검사 탭 네비 s-->
            <div class="select-nav-box _content-anchor">
                <p class="title font-h4" id="tabAncher">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">Cancer risk prediction</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Cancer risk prediction</a></li>
                        <li class="option-value"><a href="#">Analysis of causes of cancer</a></li>
                        <li class="option-value"><a href="#">Cancer Occurrence Monitoring</a></li>
                    </ul>
                </div>

            </div>

            <!--암 유전체 검사 탭 네비 e-->
            <div class="info-box-wrap tab-content">
                <!--암 발생 위험 예측-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Cancer risk prediction</p>
                    <p class="subject font-body-h-b">Cancers occur due to various causes, but some cancers are caused by
                        genetic mutations of specific inherited genes.</p>
                    <p class="desc font-body img_bottom">People who have such cancer-related mutations are exposed to
                        far more risk of cancer than others. Hereditary cancers are caused by gene abnormalities
                        inherited from parents, and the incidence of cancer in the same family is high. Thus, early
                        detection and identification of the exact cause through gene diagnosis is required. The most
                        commonly known hereditary cancers are breast cancer, ovarian cancer, and colon cancer. In regard
                        to incidence of breast cancer, 5% - 10% is known to be genetically caused, and about more than
                        half are caused by abnormalities in genes called BRCA1 and BRCA2. In addition, having genes that
                        cause various cancers will dramatically increase the incidence of cancer.</p>
                    <div class="border-gray-box">
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_familyline.png" alt="암 발생 위험 예측">
                            <span class="btnZoom-1"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <hr class="divider">

                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">Hereditary Cancer Panel</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('HereditaryCancerPanel')"><a href="#">Hereditary Cancer Panel</a></li>
                            <li class="anchor-value" onclick="TitleMove('BRCA1')"><a href="#">BRCA1/2 Gene Test</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->

                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor"><p class="font-h5 sub-title" id="HereditaryCancerPanel">Hereditary Cancer Panel</p>
                        <p class="desc font-body data_bottom">The heredity cancer panel diagnoses the hereditary risk of
                            cancer by analyzing the causative gene related to hereditary cancer. Mutations of a total of
                            16
                            genes including BRCA1/2 genes,
                            and genes related to Lynch syndrome, which is the main cause of colon cancer, are
                            analyzed.</p>
                        <div class="table-scroll">
                            <table class="table">
                                <colgroup>
                                    <col style="width:25%;">
                                    <col style="width:25%;">
                                    <col style="width:50%;">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>Gene List</th>
                                    <th>Target</th>
                                    <th>Description (related cancer type)</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>APC, MUTYH</td>
                                    <td>Large Intestine</td>
                                    <td class="text-start">Germline mutations associated with familial adenomatous
                                        polyposis
                                        (FAP)
                                    </td>
                                </tr>
                                <tr>
                                    <td>BRCA1, BRCA2</td>
                                    <td>Breast Ovary</td>
                                    <td class="text-start">Related to breast/ovarian cancer</td>
                                </tr>
                                <tr>
                                    <td>CDH1</td>
                                    <td>Stomach Large Intestine</td>
                                    <td class="text-start">Responsible for cell-to-cell adhesion llmplicated in cancer
                                        progression and metastasis
                                    </td>
                                </tr>
                                <tr>
                                    <td>EPCAM, PMS2, MLH1, MSH2, MSH6</td>
                                    <td>Large Intestine Rectum</td>
                                    <td class="text-start">Related to the mismatch repair of DNA Lynch syndrome<br>(hereditary
                                        non-polyposis colorectal cancer, HNPCC)
                                    </td>
                                </tr>
                                <tr>
                                    <td>MEN1</td>
                                    <td>Endocrine System</td>
                                    <td class="text-start">Multiple endocrine neoplasia type 1 (MEN-1 syndrome)<br>
                                        Familial neoplasia affecting the network of hormone-producing glands
                                    </td>
                                </tr>
                                <tr>
                                    <td>PTEN</td>
                                    <td>Thyroid Breast</td>
                                    <td class="text-start">Cowden syndrome Tumor - suppressor gene</td>
                                </tr>
                                <tr>
                                    <td>RB1</td>
                                    <td>Eye</td>
                                    <td class="text-start">Retinoblastoma</td>
                                </tr>
                                <tr>
                                    <td>RET</td>
                                    <td>Endocrine System Thyroid</td>
                                    <td class="text-start">Proto-oncogene Multiple endocrine neoplasia type 2 Medullary
                                        thyroid carcinoma
                                    </td>
                                </tr>
                                <tr>
                                    <td>TP53</td>
                                    <td>Breast Bone Etc.</td>
                                    <td class="text-start">Li - Fraumeni syndrome</td>
                                </tr>
                                <tr>
                                    <td>VHL</td>
                                    <td>Eye Kidny Central Nervous System</td>
                                    <td class="text-start">Tumor - suppressor gene von Hippel - Lindau Syndrome</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor"><p class="font-h5 sub-title" id="BRCA1">BRCA1/2 Gene Test</p>
                        <p class="desc font-body img_bottom">All areas of the BRCA1/2 gene, which is the main cause of
                            hereditary breast cancer, are analyzed to diagnose a person’s risk of breast cancer.
                            Mutations in the BRCA 1/2 gene greatly increase the risk of breast cancer.
                        </p>
                        <div class="border-gray-box">
                            <!--v0.6 div img 추가 -->
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img-dnatest.png" alt="BRCA1/2 유전자 검사">
                                <span class="btnZoom-2"><i class="icon ico-zoom-white"></i></span>
                            </div>
                        </div>
                        <p class="notice-text"><i class="icon  ico-info-blue"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span>
                        </p></div>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--암 발생 원인 분석-->
                <div class="info-box">
                    <p class="font-h4 main-title">Analysis of causes of cancer</p>
                    <p class="subject font-body-h-b">This service tracks the cause of cancer and provides key
                        information for personalized treatment by analyzing mutations in the genes
                        involved in cancer development using DNA extracted from cancer patients' tumor samples.</p>
                    <p class="desc img_bottom font-body">Until now, cancers were classified in a histopathological
                        manner, but recently, gene analysis is performed on cancer tissue, and cancers are subdivided
                        into groups.
                        This contributes to improved response (about 75% of patients exhibit different effects when the
                        same anticancer drug is prescribed) and provides personalized treatment for cancer patients
                        while minimizing adverse effects.</p>
                    <div class="border-gray-box">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_cancer.png" alt="암 발생 원인 분석">
                            <span class="btnZoom-3"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <div class="border-gray-box mb-0">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_cancer2.png" alt="암 발생 원인 분석 그래프">
                            <span class="btnZoom-4"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <p class="caption">※ Source : Pao W et al. New driver mutations in non-small-cell lung cancer Lancet
                        Oncol. 2011 Feb; 12(2): 175-80.</p>
                    <hr class="divider">
                    <p class="notice-text"><i class="icon  ico-info-blue"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span>
                    </p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--암 발생 모니터링-->
                <div class="info-box">
                    <p class="font-h4 main-title">Cancer Occurrence Monitoring</p>
                    <p class="subject font-body-h-b">When cancer occurs in the body, there are NDA fragments detached
                        from cancer cells in the blood.</p>
                    <p class="desc img_bottom font-body">This is called ctDNA (circulating tumor DNA). When ctDNA is
                        checked regularly, cancer cells can be detected early and prompt measures can be taken.
                        Unlike existing biopsies, this test can be performed by simply collecting blood, which makes
                        regular checkups more efficient. However, theistest is not widely given because the levels of
                        ctDNA are different by type of cancer and individual, making detection very difficult. Macrogen
                        is expanding this service by continuously making technical improvements.</p>
                    <div class="border-gray-box">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_monitoring.png" alt="CTDNA분석">
                            <span class="btnZoom-5"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <div class="border-gray-box mb-0">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_monitoring2.png"
                                 alt="LINEAR CARE SYSTEM&CIRCULAR CARESY STEM">
                            <span class="btnZoom-6"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span>
                    </p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col disabled"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_familyline.png" alt="familyline"></div>
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
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img-dnatest.png" alt="dnatest"></div>
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
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_cancer.png" alt="dnatest"></div>
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
    <!--modalImageViewer4 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer4" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_cancer2.png" alt="dnatest"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modal4 = new bootstrap.Modal(document.getElementById('modalImageViewer4'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});
        // modal close
        $('.btn-close').on('click', function () {
            modal4.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-4').on('click', function () {
            modal4.show();
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
    <!--modalImageViewer4 e-->
    <!--modalImageViewer5 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer5" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_monitoring_view.png" alt="dnatest"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modal5 = new bootstrap.Modal(document.getElementById('modalImageViewer5'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});
        // modal close
        $('.btn-close').on('click', function () {
            modal5.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-5').on('click', function () {
            modal5.show();
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
    <!--modalImageViewer5 e-->
    <!--modalImageViewer6 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer6" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_monitoring2.png" alt="monitoring"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modal6 = new bootstrap.Modal(document.getElementById('modalImageViewer6'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});
        // modal close
        $('.btn-close').on('click', function () {
            modal6.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-6').on('click', function () {
            modal6.show();
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
    <!--modalImageViewer6 e-->

</body>
