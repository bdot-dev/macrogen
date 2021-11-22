<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg bg-type2">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">Clinical Diagnostics</li>
        <li class="breadcrumb-item">COVID-19</li>
    </ol>
</nav>

            <div class="hero-title">COVID-19</div>
            <div class="slogan-sub">Tests for Diagnosis of Infectious Diseases</div>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--10.25 html 추가-->
            <div class="subject-box">
                <p class="font-h4 title">We provide molecular diagnostic solutions for infectious diseases.</p>

                <p class="subject info">Due to the global pandemic, it is essential to have an optimal test environment for prompt and accurate diagnoses. To this end, Macrogen proposes integrated<br>
                    solutions for both patients and medical staff, which consist of onsite diagnostic systems with superior mobility, safety, and convenience and accurate diagnostic kits.</p>
            </div>

            <!--탭 링크-->
            <div class="tab-box" id="_tab-box">

                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-slide active"><a href="#">Axen™ COVID-19 RT Test Kit</a></div>
                            <div class="swiper-slide"><a href="#">Macrogen Smart Mobile Lab</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--탭메뉴 스크립트-->
            <script>
                $('._swiperTab .swiper-slide').on('click', function(){
                    var idx = $(this).index();

                    $(this).addClass('active').siblings().removeClass('active');
                    <!--탭메뉴 클릭시 페이지 변경-->
                    $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                    $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
                });

                function setTabContent(idx){
                    $('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');

                    <!--탭메뉴 클릭시 페이지 변경-->
                    $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                    $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

                    /*페이지 변경후 상단 이동*/
                    fnMove();
                }

                /*탭메뉴 상단으로 이동*/
                function fnMove(){
                    var offset = $("#_tab-box").offset();
                    $('html, body').animate({scrollTop : offset.top - 95}, 100);
                }
            </script>
            <div class="info-box-wrap tab-content">
                <!--Axen™ COVID-19 RT Test Kit-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Axen™ COVID-19 RT Test Kit</p>
                    <p class="subject">An in vitro diagnostic kit for confirming the infection of COVID-19 in just two hours.</p>
                    <p class="desc img_bottom">Based on the RT-PCR (Real Time PCR), the kit is suitable for screening patients with small amounts of novel coronavirus due to its outstanding target detection. The Axen™ COVID-19
                        <br>test kit has obtained export approval from the Korean Ministry of Food and Drug Safety and Europe’s In-Vitro Diagnostic (CE-IVD) to provide reliable diagnostic services.</p>
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_coronamedical.png" alt="Axen™ COVID-19 RT Test Kit">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-h8 title figure_bottom">Specifications</p>
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
                        <div class="list-area">
                            <p class="font-h8 title img">Detection Target Region</p>
                            <ul class="list-circle-dot">
                                <li>ORF1ab</li>
                                <li>E gene</li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title figure_bottom">Process</p>
                            <!--10.05 이미지 경로 변경-->
                            <div class="img">
                                <img src="/publishing/pc-en/dist/img/business/img_workflow_level5_row.png" alt="workflow">
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title figure_bottom">Process</p>
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
                    <div class="border-gray-box-wrap">
                        <div class="border-gray-box">
                            <img src="/publishing/pc-en/dist/img/business/img_data_graph1.png" alt="ORF1AB/E/RnaseP Amplificaton">
                        </div>
                        <div class="border-gray-box">
                            <img src="/publishing/pc-en/dist/img/business/img_data_graph2.png" alt="ORF 1ab/E Amplificaton">
                        </div>
                        <div class="border-gray-box">
                            <img src="/publishing/pc-en/dist/img/business/img_clinicaltrialtest.png" alt="flow">
                        </div>
                    </div>
                    <p class="notice-text"><i class="icon icon-attention"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item next" onclick="setTabContent(1)">
                                    <div class="title">Macrogen Smart Mobile Lab </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
                <!--Macrogen Smart Mobile Lab -->
                <div class="info-box">
                    <p class="font-h4 main-title">Macrogen Smart Mobile Lab </p>
                    <p class="subject">Smart Mobile Lab is the first-ever on-site COVID 19 testing system developed in Korea.</p>
                    <p class="desc img_bottom">This is a small mobile lab for on-site testing of the virus, and it is composed of an all-in-one system that can perform the entire process, starting from the extraction of virus nucleic acid,<br>followed by genetic testing, and then the analysis results.</p>
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-smartmobile-intro.png" alt="스마트모바일랩">
                    </div>
                    <div class="list-area-group">
                      <!--  <div class="list-area">
                            <p class="font-h8 title img">Brochure</p>
                            <div class="file-download">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="item">
                                            <i class="icon icon-pdf"></i>
                                            <span class="title">Smart Mobile Lab Brochure.pdf</span>
                                            <a href="#" class="btn-download"><i class="icon icon-download"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <div class="list-area">
                            <p class="font-h8 title img">Specifications</p>
                            <ul class="list-circle-dot">
                                <li>K-Quarantine model</li>
                                <li>Equipment options available depending on budget or preference</li>
                                <li>Power supply options available (External Power/Solar Power System)</li>
                                <li>Maintenance and repair service provided</li>
                                <li>Training for lab technicians provided (online/offline)</li>
                                <li>Easy installation/relocation</li>
                                <li>Collaboration with a company specialized in mobile labs and negative pressure wards</li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title figure_bottom">Ordering Information for Relative Product</p>
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
                        <div class="list-area">
                            <p class="font-h8 title img_bottom">Process</p>
                            <div class="img">
                                <img src="/publishing/pc-en/dist/img/business/img_workflow-level7.png" alt="workflow">
                            </div>
                        </div>
                    </div>
                    <p class="notice-text"><i class="icon icon-attention"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(0)">
                                    <div class="title">Axen™ COVID-19 RT Test Kit</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
            </div>

        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->


</body>
