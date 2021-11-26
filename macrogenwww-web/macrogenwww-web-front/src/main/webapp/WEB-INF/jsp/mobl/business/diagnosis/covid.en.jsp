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
                <p class="title font-h4">We provide molecular diagnostic solutions for infectious diseases.</p>
                <p class="desc font-body">
                    Due to the global pandemic, it is essential to have an optimal test environment for prompt and accurate diagnoses. To this end, Macrogen proposes integrated<br>
                    solutions for both patients and medical staff, which consist of onsite diagnostic systems with superior mobility, safety, and convenience and accurate diagnostic kits.
                </p>

            </div>
            <!--covid19 공통 e -->

            <!--covid19 탭 네비 s-->
            <div class="select-nav-box _content-anchor">
                <p class="title font-h4" id="tab_anchor">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">Axen™ COVID-19 RT Test Kit</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value"><a href="#">Axen™ COVID-19 RT Test Kit</a></li>
                        <li class="option-value"><a href="#">Macrogen Smart Mobile Lab</a></li>
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
                                e.preventDefault()
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

                    /*Prev Next 이동*/
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
            <!--covid19 탭 네비 e-->

            <!--covid19 탭 메뉴 s-->
            <div class="info-box-wrap tab-content">
                <!--Axen™ COVID-19 RT 진단키트-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Axen™ COVID-19 RT Test Kit</p>
                    <p class="subject font-body-h"An in vitro diagnostic kit for confirming the infection of COVID-19 in just two hours.</p>
                    <p class="desc img_bottom font-body">Based on the RT-PCR (Real Time PCR), the kit is suitable for screening patients with small amounts of novel coronavirus due to its outstanding target detection. The Axen™ COVID-19
                        <br>test kit has obtained export approval from the Korean Ministry of Food and Drug Safety and Europe’s In-Vitro Diagnostic (CE-IVD) to provide reliable diagnostic services.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_coronamedical.png" alt="Axen™ COVID-19 RT 진단키트">
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
                                <thead>
                                <tr>
                                    <th>Item</th>
                                    <th>Specification</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Detection target</td>
                                    <td>2019-nCoV (COVID-19)</td>
                                </tr>
                                <tr>
                                    <td>Target region</td>
                                    <td>ORF1ab / E gene</td>
                                </tr>
                                <tr>
                                    <td>Detection technology</td>
                                    <td>Real-Time RT-PCR</td>
                                </tr>
                                <tr>
                                    <td>Specimen type</td>
                                    <td>Nasal swab / Sputum</td>
                                </tr>
                                <tr>
                                    <td>PCR run time</td>
                                    <td>2 hrs</td>
                                </tr>
                                <tr>
                                    <td>Compatible PCR device</td>
                                    <td>CFX96™ Real-Time PCR</td>
                                </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h title img">Detection Target Region</p>
                            <ul class="list-circle-dot">
                                <li><p>ORF1ab</p></li>
                                <li><p>E gene</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h-b title figure_bottom">Process</p>
                            <!--10.05 이미지 경로 변경-->
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img_workflow_level5_row.png" alt="workflow">
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h-b title figure_bottom">Process</p>
                            <div class="table-scroll">
                            <table class="table">
                                <colgroup>
                                    <col style="width:15%;">
                                    <col style="width:15%;">
                                    <col style="width:15%;">
                                    <col style="width:15%;">
                                    <col style="width:40%;">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>ORF1ab</th>
                                    <th>E gene</th>
                                    <th>RNase P</th>
                                    <th>Status</th>
                                    <th>Results</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Positive</td>
                                    <td>Positive</td>
                                    <td>Positive</td>
                                    <td>Valid</td>
                                    <td class="text-start">SARS-CoV-2 Positive</td>
                                </tr>
                                <tr>
                                    <td>Positive</td>
                                    <td>Negative</td>
                                    <td>Positive</td>
                                    <td>Valid</td>
                                    <td class="text-start">SARS-CoV-2 Positive (Repeat test, If the repeat result remains inconclusive, additional confirmation testiong should be conducted if clinically indicated.)</td>
                                </tr>
                                <tr>
                                    <td>Negative</td>
                                    <td>Positive</td>
                                    <td>Positive</td>
                                    <td>Valid</td>
                                    <td class="text-start">Near-source SARS-CoV-2 (Sample should be retested. If the result is still invalid,
                                        a new specimen should be obtained.)</td>
                                </tr>
                                <tr>
                                    <td>Negative</td>
                                    <td>Negative</td>
                                    <td>Positive</td>
                                    <td>Valid</td>
                                    <td class="text-start">SARS-CoV-2 Negative</td>
                                </tr>
                                <tr>
                                    <td>Negative</td>
                                    <td>Negative</td>
                                    <td>Negative</td>
                                    <td>Invalid</td>
                                    <td class="text-start">Repeat test, If the repeat result remains invalid, consider collecting a new specimen.</td>
                                </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
                    <div class="border-gray-box-wrap">
                        <div class="border-gray-box">
                            <div class="img">
                             <img src="/publishing/mobile-en/dist/img/business/img_data_graph1.png" alt="ORF1AB/E/RnaseP Amplificaton">
                                <span class="btnZoom-1">
                                    <i class="icon ico-zoom-white"></i>
                                </span>
                            </div>
                        </div>
                        <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img_data_graph2.png" alt="ORF 1ab/E Amplificaton">
                                <span class="btnZoom-2">
                                    <i class="icon ico-zoom-white _btnZoom2"></i>
                                </span>
                            </div>
                        </div>
                        <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img_clinicaltrialtest.png" alt="flow">
                                <span class="btnZoom-3">
                                    <i class="icon ico-zoom-white _btnZoom3"></i>
                                </span>
                            </div>
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
