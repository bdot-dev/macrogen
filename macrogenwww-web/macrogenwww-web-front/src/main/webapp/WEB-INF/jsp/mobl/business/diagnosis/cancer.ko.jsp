<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/test-bg.png);">
        <header class="header header-white">
    <div class="inner">
        <h1 class="logo"><a href="#">마크로젠 로고</a></h1>
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
            <div class="font-h1">암 유전체 검사</div>
            <div class="font-body-h">FFPE, Tissue, Liquid Biopsy(액체생검)등을
                이용한 암유전체 검사 </div>
            <div class="btn-wrap"><a href="#tabAncher" class="btn-service"><span class="sr-only">service</span></a></div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <div class="subject-box">
                <p class="font-h4 title">타고난 유전자 특징을 분석하여<br>건강한 삶을 위한 당신만의 솔루션을 제공합니다</p>
                <p class="subject font-body">개인 유전체 분석을 통해 유전적 요인으로 발생할 수 있는 암에 대한 발생 위험을 예측하고, 암 발생 원인 유전자의 변이 분석으로 개인 맞춤형 치료 정보를 제공합니다.</p>
            </div>

            <!--암 유전체 검사 탭 네비 s-->
            <div class="select-nav-box _content-anchor">
                <p class="title font-h4" id="tabAncher">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">암 발생 위험 예측</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value"><a href="#">암 발생 위험 예측</a></li>
                        <li class="option-value"><a href="#">암 발생 원인 분석</a></li>
                        <li class="option-value"><a href="#">암 발생 모니터링</a></li>
                    </ul>
                </div>
                <script>
                    /*변수*/
                    var selectBox = $(".select-box");
                    var option = $(".option-value");


                    /*드롭다운 클릭시 이벤트*/
                    selectBox.on('click',function() {
                        var select = $(this);
                        if(select.hasClass('open')) {
                            select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
                        }
                        else {
                            select.addClass("open").children('.select-option').slideDown(200).addClass("open");
                            $('body').on('click',function (e){
                                if(selectBox.hasClass('open')) {
                                    if(!selectBox.has(e.target).length) {
                                        selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                                    }
                                }

                            })
                        }
                    });

                    /*클릭시 텍스트 변경*/
                    function textChange(){
                        option.on('click',function() {
                            var select = $(this).find('a').text();
                            $('._selected-value').find('span').text(select);
                        });
                    }
                    textChange();

                    /*클릭시 탭메뉴 변경*/
                    option.on('click',function(){
                        var idx =$(this).index();
                        $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                        $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
                        textChange();
                    })

                    /*이전 다음 이동*/
                    function setTabContent(idx){
                        $('._selected-value').text($('._select-option li').eq(idx).text());
                        <!--탭메뉴 클릭시 페이지 변경-->
                        $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                        $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

                        /*페이지 변경후 상단 이동*/
                        fnMove();

                        /*클릭시 텍스트 변경*/
                        console.log(idx);

                    }

                    /*탭메뉴 상단으로 이동*/
                    function fnMove(){
                        var offset = $("._content-anchor").offset();
                        $('html, body').animate({scrollTop : offset.top - 95}, 100);
                    }

                    /*외부클릭시 셀렉트박스 초기화*/
                    $("body").click(function(e){
                        if(!selectBox.has(e.target).length){
                            selectBox.removeClass("open").children('.select-option').slideUp(200);
                        }
                    });

                </script>
            </div>

            <!--암 유전체 검사 탭 네비 e-->
            <div class="info-box-wrap tab-content">
                <!--암 발생 위험 예측-->
                <div class="info-box show">
                    <p class="font-h4 main-title">암 발생 위험 예측</p>
                    <p class="subject font-body-h">암은 다양한 원인에 의해 발생하지만, 일부 암은 타고난 특정 유전자의 변이 때문에 발생합니다. </p>
                    <p class="desc font-body img_bottom">유전성 암은 부모로부터 물려받은 유전자 이상에 의해 발생하며 동일 가계 내 암 환자 발생 확률이 높아집니다. 암과 관련된 변이를 가진 경우 그렇지 않은 사람에 비해 암이 발생할 가능성이 매우 커지므로 유전자 진단을 통한 조기 발견과 정확한 원인 파악이 필요합니다. 유방암, 난소암, 대장암은 대표적인 유전성 암입니다. 유방암 환자의 5~10&#37;가 유전적 원인에 의해 발병한다고 알려져 있으며, 이 중 절반 이상이 BRCA1, BRCA2 유전자 이상을 가지고 있습니다. 이 외에도 다양한 암 발생 주요 원인 유전자를 보유하는 경우 암 발생률이 급격하게 증가하게 됩니다.</p>
                    <div class="border-gray-box">
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/business/img_familyline.png" alt="암 발생 위험 예측">
                            <span class="btnZoom-1"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <hr class="divider">

                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">유전성 암 감수성 검사 (Hereditary Cancer Panel)</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('HereditaryCancerPanel')"><a href="#">유전성 암 감수성 검사 (Hereditary Cancer Panel)</a></li>
                            <li class="anchor-value" onclick="TitleMove('BRCA1')"><a href="#">BRCA1/2 유전자 검사</a></li>
                        </ul>
                    </div>
                    <script>
                        /*변수*/
                        var contentAnchor = $(".content-anchor");
                        var anchorOption= $(".anchor-value");
                        var anchor = $( "._anchor" );
                        var offset = anchor.offset();


                        /*특정위치 show & hide*/
                        function fnMousewheel(){
                            var lastScroll = 0;

                            $(window).on('scroll',function(e){
                                let listPos = $('.info-box').offset().top;
                                let offset = $(this).scrollTop();

                                if (offset > lastScroll){
                                    // console.log('down')
                                    if (offset > listPos) {
                                        contentAnchor.show().css({'position': 'fixed','top':'0px'});
                                    }
                                    else {
                                        contentAnchor.hide();
                                    }
                                }
                                else {
                                    // console.log('up')
                                    if (offset > listPos) {
                                        contentAnchor.show().css({'position': 'fixed','top':'70px'});
                                    }
                                    else {
                                        contentAnchor.hide();
                                    }
                                }
                                lastScroll = offset;
                            });
                        }

                        /*드롭다운 클릭시 이벤트*/
                        contentAnchor.on('click',function() {
                            var select = $(this);
                            if(select.hasClass('open')) {
                                select.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
                            }
                            else {
                                select.addClass("open").children('.anchor-option').slideDown(200).addClass("open");
                                $('body').on('click',function (e){
                                    if(contentAnchor.hasClass('open')) {
                                        if(!contentAnchor.has(e.target).length) {
                                            contentAnchor.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                                        }
                                    }

                                })
                            }
                        });


                        /*클릭시 페이지 이동 이동*/
                        function TitleMove(target){
                            var id = $('#'+ target);
                            var offset = id.offset();
                            $('html, body').animate({scrollTop : offset.top - 75}, 300);
                        }
                        /*클릭시 텍스트 변경*/
                        anchorOption.on('click',function() {
                            var select = $(this).find('a').text();
                            $('._anchor-value').find('span').text(select);
                        });
                        fnMousewheel();

                    </script>
                    <!--content-anchor e-->

                    <div class="anchor-section">
                        <p class="font-h5 sub-title" id="HereditaryCancerPanel">유전성 암 감수성 검사 (Hereditary Cancer Panel)</p>
                        <p class="desc font-body data_bottom">유전성 암과 관련된 원인 유전자를 분석해 암에 대한 유전적 위험률을 진단합니다. BRCA1/2 유전자를
                            포함하여 대장암의 주원인이 되는 Lynch Syndrome과 관련된 유전자 등 총 16개 유전자에 대한 변이를
                            분석합니다.</p>
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
                                        polyposis (FAP)
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
                    <div class="anchor-section"><p class="font-h5 sub-title" id="BRCA1">BRCA1/2 유전자 검사</p>
                        <p class="desc font-body img_bottom">유전성 유방암의 대표적 원인이 되는 BRCA1/2 유전자의 전 영역을 분석해 유방암 발생 위험을
                            진단합니다. BRCA 1/2 유전자 변이가 있는 경우 유방암 발생 위험이 급격하게 증가합니다.
                        </p>
                        <div class="border-gray-box">
                            <!--10.05 이미지 경로 변경-->
                            <img src="/publishing/mobile-ko/dist/img/business/img-dnatest.png" alt="BRCA1/2 유전자 검사">
                            <span class="btnZoom-2"><i class="icon ico-zoom-white"></i></span>
                        </div>
                        <p class="notice-text"><i class="icon  ico-info-blue"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span>
                        </p></div>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--암 발생 원인 분석-->
                <div class="info-box">
                    <p class="font-h4 main-title">암 발생 원인 분석</p>
                    <p class="subject font-body-h">암 환자의 종양 샘플에서 추출한 DNA를 이용해 암 발생에 관여하는 주요 유전자의 변이를 분석함으로써
                        암 발생 원인을 추적하고 개인별 맞춤 치료에 중요한 정보를 제공하는 서비스입니다.</p>
                    <p class="desc img_bottom font-body">지금까지는 종양 샘플의 조직 및 세포의 변화를 육안으로 판별하여 암을 치료해 왔으나, 최근에는암 조직의 유전체 분석을 통해 얻어진 유전 정보를 치료에 활용하고 있습니다.
                        이러한 유전정보의 활용으로 암 발생 원인을 밝혀내고, 적절한 치료 방법 및 약물을 처방하여 효과적인 맞춤형 치료에 도움을 주고 있습니다.</p>
                    <div class="border-gray-box">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/business/img_cancer.png" alt="암 발생 원인 분석">
                            <span class="btnZoom-3"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <div class="border-gray-box mb-0">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/business/img_cancer2.png" alt="암 발생 원인 분석 그래프">
                            <span class="btnZoom-4"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <p class="caption">※ 출처 : Pao W et al. New driver mutations in non-small-cell lung cancer Lancet Oncol. 2011 Feb; 12(2): 175-80.</p>
                    <hr class="divider">
                    <p class="notice-text"><i class="icon  ico-info-blue"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--암 발생 모니터링-->
                <div class="info-box">
                    <p class="font-h4 main-title">암 발생 모니터링</p>
                    <p class="subject font-body-h"> 체내에 암이 발생한 경우 암세포로부터 떨어져 나온 DNA 조각이 혈액 내에도 존재합니다.</p>
                    <p class="desc img_bottom font-body">이를 혈중 종양 DNA(ctDNA; circulating tumor DNA)라 부르며, 혈액 채취만으로 검사를 진행할 수 있어 정기검진으로 조기암 발견이 가능합니다.
                        개인별 ctDNA의 양 차이와 민감한 ctDNA 추출 및 검사과정은 전문적인 기술을 필요로 하기 때문에, 지속적인 기술 향상을 통해 적용 범위를확대해 나갈 예정입니다.</p>
                    <div class="border-gray-box">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/business/img_monitoring.png" alt="CTDNA분석">
                            <span class="btnZoom-5"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <div class="border-gray-box mb-0">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/business/img_monitoring2.png" alt="LINEAR CARE SYSTEM&CIRCULAR CARESY STEM">
                            <span class="btnZoom-6"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="toast-popup">
        <p>이미지를 확대할 수 있습니다</p>
    </div>
    <!--modalImageViewer1 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_familyline.png" alt="familyline"></div>
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
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img-dnatest.png" alt="dnatest"></div>
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
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_cancer.png" alt="dnatest"></div>
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
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_cancer2.png" alt="dnatest"></div>
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
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_monitoring.png" alt="dnatest"></div>
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
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_monitoring2.png" alt="monitoring"></div>
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
