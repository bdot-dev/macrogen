<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

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
        <li class="breadcrumb-item">임상진단서비스</li>
        <li class="breadcrumb-item">COVID-19</li>
    </ol>
</nav>

            <div class="hero-title">COVID-19</div>
            <div class="slogan-sub">감염성 질환 진단을 위한 검사</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <div class="subject-box">
                <p class="font-h4 title">감염병 진단을 위한 분자진단 솔루션을 제공합니다</p>

                <p class="subject info">전세계 코로나 대유행으로 최적의 검사 환경에서 시행되는 신속, 정확한 진단이 필수인 시대입니다.<br>
                    이에 마크로젠은 높은 정확도의 진단 키트와 함께 이동성 및 안전성, 편의성을 갖춘 현장 진단 시스템을 구성하여 환자와 의료진 모두에게 친화적인 통합 솔루션을 제안합니다.</p>
            </div>

            <!--탭 링크-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">SERVICE</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-slide active"><a href="#">Axen™ COVID-19 RT 진단키트</a></div>
                            <div class="swiper-slide "><a href="#">스마트 모바일 랩</a></div>
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
                <!--Axen™ COVID-19 RT 진단키트-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Axen™ COVID-19 RT 진단키트</p>
                    <p class="subject">코로나바이러스감염증-19(COVID-19)의 감염 여부를 2시간 내 확인할 수 있는 체외진단 의료기기입니다.</p>
                    <p class="desc img_bottom">해당 제품은 실시간 유전자 증폭(Real Time-PCR, RT-PCR) 방식을 활용해 미량의 신종 코로나바이러스를 가진 환자를 정확하게 선별합니다.<br>
                        Axen™ COVID-19 RT 진단키트는 식품의약품안전처의 수출 허가를 승인받았으며, 유럽 체외진단시약 인증(CE-IVD)을 획득해 해외 고객을 대상으로 신뢰도 높은 진단 서비스를 제공하고 있습니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img_coronamedical.png" alt="Axen™ COVID-19 RT 진단키트">
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
                            <div class="img">
                                <img src="/publishing/pc-ko/dist/img/business/img_workflow_level5_row.png" alt="workflow">
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
                            <img src="/publishing/pc-ko/dist/img/business/img_data_graph1.png" alt="ORF1AB/E/RnaseP Amplificaton">
                        </div>
                        <div class="border-gray-box">
                            <img src="/publishing/pc-ko/dist/img/business/img_data_graph2.png" alt="ORF 1ab/E Amplificaton">
                        </div>
                        <div class="border-gray-box">
                            <img src="/publishing/pc-ko/dist/img/business/img_clinicaltrialtest.png" alt="flow">
                        </div>
                    </div>
                    <p class="notice-text"><i class="icon icon-attention"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item next" onclick="setTabContent(1)">
                                    <div class="title">스마트 모바일 랩</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
                <!--스마트 모바일 랩-->
                <div class="info-box">
                    <p class="font-h4 main-title">스마트 모바일 랩</p>
                    <p class="subject">스마트 모바일 랩(Smart Mobile Lab)은 마크로젠이 전 세계 코로나19 대응을 위해 국내 최초로 구축한 ‘코로나19 현장 검사 시스템’입니다.</p>
                    <p class="desc img_bottom">코로나 현장 검사를 위한 이동형 소형 검사실로, 바이러스 핵산 추출, 유전자 검사 및 분석 결과 도출까지 전 과정을 진행할 수 있는 올인원(all-in-one) 시스템으로 구성되어 있습니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img-smartmobile-intro.png" alt="스마트모바일랩">
                    </div>
                    <div class="list-area-group">
                        <!-- <div class="list-area">
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
                        </div> -->
                        <div class="list-area">
                            <p class="font-h8 title img">Specifications</p>
                            <ul class="list-circle-dot">
                                <li>K-방역모델 사용</li>
                                <li>실험 및 예산에 따른 브랜드별 장비 선택 가능</li>
                                <li>전원 공급 방식 선택 가능 (외부전원 / 태양열 발전 선택 가능)</li>
                                <li>유지/보수 서비스 제공</li>
                                <li>검사자 교육 제공 (온라인/오프라인)</li>
                                <li>설치/이동 용이</li>
                                <li>이동식 실험 / 음압병동 전문 설계 /시공 업체 협력</li>
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
                                <img src="/publishing/pc-ko/dist/img/business/img_workflow-level7.png" alt="workflow">
                            </div>
                        </div>
                    </div>
                    <p class="notice-text"><i class="icon icon-attention"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(0)">
                                    <div class="title">Axen™ COVID-19 RT 진단키트</div>
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
