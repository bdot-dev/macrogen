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
            <div class="font-h1">COVID-19</div>
            <div class="font-body-h">감염성 질환 진단을 위한 검사</div>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">service</span></a></div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--covid19 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">감염병 진단을 위한 분자진단 솔루션을 제공합니다</p>
                <p class="desc font-body">
                    전세계 코로나 대유행으로 최적의 검사 환경에서 시행되는 신속, 정확한 진단이 필수인 시대입니다.
                    이에 마크로젠은 높은 정확도의 진단 키트와 함께 이동성 및 안전성, 편의성을 갖춘 현장 진단 시스템을 구성하여 환자와 의료진 모두에게 친화적인 통합 솔루션을 제안합니다.
                </p>

            </div>
            <!--covid19 공통 e -->

            <!--covid19 탭 네비 s-->
            <div class="select-nav-box _content-anchor">
                <p class="title font-h4" id="tab_anchor">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">Axen™ COVID-19 RT 진단키트</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value"><a href="#">Axen™ COVID-19 RT 진단키트</a></li>
                        <li class="option-value"><a href="#">스마트 모바일 랩</a></li>
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
            <!--covid19 탭 네비 e-->

            <!--covid19 탭 메뉴 s-->
            <div class="info-box-wrap tab-content">
                <!--Axen™ COVID-19 RT 진단키트-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Axen™ COVID-19 RT 진단키트</p>
                    <p class="subject font-body-h">코로나바이러스감염증-19(COVID-19)의 감염 여부를 2시간 내 확인할 수 있는 체외진단 의료기기입니다.</p>
                    <p class="desc img_bottom font-body">해당 제품은 실시간 유전자 증폭(Real Time-PCR, RT-PCR) 방식을 활용해 미량의 신종 코로나바이러스를 가진 환자를 정확하게 선별합니다.<br>
                        Axen™ COVID-19 RT 진단키트는 식품의약품안전처의 수출 허가를 승인받았으며, 유럽 체외진단시약 인증(CE-IVD)을 획득해 해외 고객을 대상으로 신뢰도 높은 진단 서비스를 제공하고 있습니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_coronamedical.png" alt="Axen™ COVID-19 RT 진단키트">
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
                                <img src="/publishing/mobile-ko/dist/img/business/img_workflow_level5_row.png" alt="workflow">
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
                             <img src="/publishing/mobile-ko/dist/img/business/img_data_graph1.png" alt="ORF1AB/E/RnaseP Amplificaton">
                                <span class="btnZoom-1">
                                    <i class="icon ico-zoom-white"></i>
                                </span>
                            </div>
                        </div>
                        <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-ko/dist/img/business/img_data_graph2.png" alt="ORF 1ab/E Amplificaton">
                                <span class="btnZoom-2">
                                    <i class="icon ico-zoom-white _btnZoom2"></i>
                                </span>
                            </div>
                        </div>
                        <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-ko/dist/img/business/img_clinicaltrialtest.png" alt="flow">
                                <span class="btnZoom-3">
                                    <i class="icon ico-zoom-white _btnZoom3"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
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
                <!--스마트 모바일 랩-->
                <div class="info-box">
                    <p class="font-h4 main-title">스마트 모바일 랩</p>
                    <p class="subject font-body-h">스마트 모바일 랩(Smart Mobile Lab)은 마크로젠이 전 세계 코로나19 대응을 위해 국내 최초로 구축한 ‘코로나19 현장 검사 시스템’입니다.</p>
                    <p class="desc img_bottom font-body">코로나 현장 검사를 위한 이동형 소형 검사실로, 바이러스 핵산 추출, 유전자 검사 및 분석 결과 도출까지 전 과정을 진행할 수 있는 올인원(all-in-one) 시스템으로 구성되어 있습니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-smartmobile-intro.png" alt="스마트모바일랩">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h title img">Specifications</p>
                            <ul class="list-circle-dot">
                                <li><p>K-방역모델 사용</p></li>
                                <li><p>실험 및 예산에 따른 브랜드별 장비 선택 가능</p></li>
                                <li><p>전원 공급 방식 선택 가능 (외부전원 / 태양열 발전 선택 가능)</p></li>
                                <li><p>유지/보수 서비스 제공</p></li>
                                <li><p>검사자 교육 제공 (온라인/오프라인)</p></li>
                                <li><p>설치/이동 용이</p></li>
                                <li><p>이동식 실험 / 음압병동 전문 설계 /시공 업체 협력</p></li>
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
                                <img src="/publishing/mobile-ko/dist/img/business/img_workflow-level7.png" alt="workflow">
                            </div>
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
                                <div class="col" onclick="setTabContent(0)">
                                    <i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--covid19 탭 메뉴 e-->
        </div>
    </div>


	<%-- covid 스크립트 --%>
	<div class="toast-popup">
	    <p>이미지를 확대할 수 있습니다</p>
	</div>
	<!--modalImageViewer1 s-->
	<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
	            <div class="parent">
	                <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_data_graph1.png" alt="graph1"></div>
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
	            <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
	            <div class="parent">
	                <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_data_graph2.png" alt="graph2"></div>
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
	                <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_clinicaltrialtest.png" alt="clinicaltrialtest"></div>
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
