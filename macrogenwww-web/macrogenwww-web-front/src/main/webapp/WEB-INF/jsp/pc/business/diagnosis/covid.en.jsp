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

            <h2 class="hero-title">COVID-19</h2>
            <div class="slogan-sub">Tests for Diagnosis of Infectious Diseases</div>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--10.25 html 추가-->
            <div class="subject-box">
                <p class="font-h4 title">We provide molecular diagnostic solutions to diagnose infectious diseases.</p>

                <p class="subject info">Rapid and accurate diagnoses made in the optimal testing environment are a must in today's world. Macrogen proposes integrated diagnostic solutions<br/>
				easy-to-use for both patients and medical professionals by supplying highly accurate testing kits and building the point-of-care diagnosis system<br/>
				marked by mobility, safety, and convenience.</p>
            </div>

            <!--탭 링크-->
            <div class="tab-box" id="_tab-box">

                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-slide active"><a href="#">Axen™ COVID-19 Testing Kits</a></div>
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
                <div class="info-box info-covid19 show">
                    <p class="font-h4 main-title">Axen™ COVID-19 Ag RAPID</p>
                   <!-- <p class="subject">An in vitro diagnostic kit for confirming the infection of COVID-19 in just two hours.</p> -->
                    <p class="desc img_bottom">Axen™ COVID-19 Ag RAPID is Macrogen's rapid antigen self-test kit with a high sensitivity of 97%. It can rapidly confirm COVID-19 infection within 15 minutes
					<br/>by qualitatively detecting the SARS-CoV-2 specific antigen in specimens from saliva, nasal swabs, or nasopharyngeal swabs.</p>
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_coronamedical1.png" alt="Axen™ COVID-19 Ag RAPID">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-h8 title figure_bottom">Specifications</p>
                            <table class="table">
                                <colgroup>
                                    <col style="width:35%;">
                                    <col style="width:65%;">
                                </colgroup>
                                <!--<thead>
                                <tr>
                                    <th>Item</th>
                                    <th>Specifications</th>
                                </tr>
                                </thead> -->
                                <tbody>
                                <tr>
                                    <th>Product Type</th>
                                    <td>Qualitative Rapid Testing Kit<br> (ImmunoChromatography)</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">Specimen & Test Volume</th>
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
                        <div class="list-area">
                            <p class="font-h8 title img">Features</p>
                            <ul class="list-circle-dot">
                                <li>Rapid: Result reading possible within 15 minutes</li>
                                <li>Accurate: high sensitivity (96.9%, 126/130) and high specificity (97.3%, 146/150)</li>
                                <li>Simple: Optimized point-of-care testing enabled by the test kit easy and simple to use</li>
                            </ul>
                        </div>
                         <div class="list-area">
                            <p class="font-h8 title img">Certification</p>
                            <ul class="list-circle-dot">
                                <li>CE-IVD</li>
                                <li>CFS, Certificate of Free Sales</li>
                            </ul>
                        </div>  
                    </div>
                    <p class="font-h4 main-title" style="padding-top:150px;">Axen™ COVID-19 lg RAPID</p>
                    <p class="desc img_bottom">Axen™ COVID-19 lg RAPID is Macrogen's rapid antibody testing kit with a high accuracy of 97% or more. It is an in vitro diagnostic device that qualitatively
						detects the IgM / IgG antibodies to SARS-CoV-2 in serum, plasma, and whole blood. With a minimal amount of blood sample, it can diagnose COVID-19
						infection within 15 minutes.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img_coronamedical2.png" alt="Axen™ COVID-19 항체 진단키트">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-h8 title figure_bottom">Specifications</p>
                            <table class="table">
                                <colgroup>
                                    <col style="width:35%;">
                                    <col style="width:65%;">
                                </colgroup>
                                <!--<thead>
                                <tr>
                                    <th>Item</th>
                                    <th>Specifications</th>
                                </tr>
                                </thead> -->
                                <tbody>
                                <tr>
                                    <th>Product Type</th>
                                    <td>Qualitative Rapid Testing Kit<br/>(ImmunoChromatography)</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">Specimen & Test Volume</th>
                                    <td>serum, plasma, and whole blood</td>
                                </tr>
                                <tr>
                                    <td>3㎕</td>
                                </tr>
                                <tr>
                                    <th>Sample Diluent Buffer Volume</th>
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
                        <div class="list-area">
                            <p class="font-h8 title img">Features</p>
                            <ul class="list-circle-dot">
                                <li>Rapid: Result reading possible within 15 minutes</li>
                                <li>Accurate: high sensitivity (97.7%, 127/130) and high specificity (97.3%, 146/150)</li>
                                <li>Simple: Optimized point-of-care testing enabled by the test kit easy and simple to use</li>
                            </ul>
                        </div>
                         <div class="list-area">
                            <p class="font-h8 title img">Certification</p>
                            <ul class="list-circle-dot">
                                <li>CE-IVD</li>
                                <li>CFS, Certificate of Free Sales</li>
                            </ul>
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
