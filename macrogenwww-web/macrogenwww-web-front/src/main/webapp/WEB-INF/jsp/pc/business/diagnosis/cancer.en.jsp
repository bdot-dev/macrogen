<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">
<div class="wrap">
	<div class="full-bg business_bg bg-type2">
		<!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header> 
	
		<div class="frame frameB">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-white">
                    <li class="breadcrumb-item">Home</li>
                    <li class="breadcrumb-item">SERVICE</li>
                    <li class="breadcrumb-item">Clinical Services</li>
                    <li class="breadcrumb-item">Precision Medicine</li>
                </ol>
            </nav>
            <div class="hero-title">Precision Medicine</div>
            <a href="#_tab-box" class="btn btn-round btn-service">
                <span>SERVICE</span>
                <i class="icon icon-arrow-bottom-short-white"></i>
            </a>
        </div>
	</div>

	<div class="container">
        <link type="text/css" rel="stylesheet" href="/publishing/pc-en/dist/css/business.css"/>
        <div class="section_business">
            <div class="subject-box">
                <p class="font-h4 title">As a global leader in precision medicine, Macrogen has established Big Data on genomes, medicine and lifestyle to better forecast disease risks, thereby contributing to future innovation in the field of healthcare.</p>
                <p class="subject info">In order to offer services related to the forecasting of disease risks, and the prevention, diagnosis and treatment of diseases, Macrogen carries out analyses based on proteomics, transcriptomics and multi-omics.</p>
                <div class="line-box01 precision">
                    <p class="font-h8">Precision Medicine</p>
                    <ul class="precision01">
                        <li><img src="/publishing/pc-ko/dist/img/business/img_precision01.png" alt=""/><span>Predictive</span></li>
                        <li><img src="/publishing/pc-ko/dist/img/business/img_precision02.png" alt=""/><span>Preventive</span></li>
                        <li><img src="/publishing/pc-ko/dist/img/business/img_precision03.png" alt=""/><span>Personalized</span></li>
                    </ul>
                    <p class="precision_tit">Genome Information</p>
                    <div class="precision02">
                        <ul>
                            <li class="tit">Diagnostics</li>
                            <li class="con">Diagnosis of genetic disorders</li>
                            <li class="con">Development of diagnostic <br>panel</li>
                            <li class="con">Molecular diagnostic Kit & SML</li>
                        </ul>
                        <ul>
                            <li class="tit">Therapy</li>
                            <li class="con">Targeted therapy</li>
                            <li class="con">Biomarker & drug discovery</li>
                        </ul>
                        <ul>
                            <li class="tit">Monitoring</li>
                            <li class="con">Disease monitoring of <br>recurring disease</li>
                            <li class="con">Customized healthcare based <br>on the genetic information</li>
                        </ul>
                        <ul>
                            <li class="tit">Prediction/Prevention</li>
                            <li class="con">Disease prediction / <br>prevention through genetic <br>analysis</li>
                            <li class="con">Genome big data construction</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!--탭 슬라이드-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">SERVICE</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab">
                        <div class="swiper-wrapper _swiperTab">
                            <div class="swiper-slide active" id="prediction"><a href="#">Cancer risk prediction</a></div>
                            <div class="swiper-slide" id="analyze"><a href="#">Analysis of causes of cancer</a></div>
                            <div class="swiper-slide" id="monitoring"><a href="#">Cancer Occurrence Monitoring</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--//탭 슬라이드-->

            <!-- 탭 컨텐츠 -->
            <div class="info-box-wrap tab-content">
                <!-- 암 발생 위험 예측 -->
                <div class="info-box show">
                    <p class="font-h4 main-title">Cancer risk prediction</p>
                    <p class="subject">Cancers occur due to various causes, but some cancers are caused by genetic mutations of specific inherited genes.</p>
                    <p class="desc">People who have such cancer-related mutations are exposed to far more risk of cancer than others. Hereditary cancers are caused by gene abnormalities inherited from parents, and the incidence of cancer in the same family is high. Thus, early detection and identification of the exact cause through gene diagnosis is required. The most commonly known hereditary cancers are breast cancer, ovarian cancer, and colon cancer. In regard to incidence of breast cancer, 5% - 10% is known to be genetically caused, and about more than half are caused by abnormalities in genes called BRCA1 and BRCA2. In addition, having genes that cause various cancers will dramatically increase the incidence of cancer.</p>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_precision04.png" alt="Cancer risk prediction"/></div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item next"onclick="setTabContent(1)"><div class="title">Analysis of causes of cancer</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //암 발생 위험 예측 -->

                <!-- 암 발생 원인 분석 -->
                <div class="info-box">
                    <p class="font-h4 main-title">Analysis of causes of cancer</p>
                    <p class="subject">This service tracks the cause of cancer and provides key information for personalized treatment by analyzing mutations in the genesinvolved in cancer development using DNA extracted from cancer patients' tumor samples.</p>
                    <p class="desc">Until now, cancers were classified in a histopathological manner, but recently, gene analysis is performed on cancer tissue, and cancers are subdivided into groups. This contributes to improved response (about 75% of patients exhibit different effects when the same anticancer drug is prescribed) and provides personalized treatment for cancerpatients while minimizing adverse effects.</p>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_precision05.png" alt="Analysis of causes of cancer"/></div>
                    <div class="img">
                        <figure>
                            <img src="/publishing/pc-ko/dist/img/business/img_precision06.png" alt="Analysis of causes of cancer"/>
                            <figcaption>※ Source: Pao W et al. New driver mutations in non-small-cell lung cancer Lancet Oncol. 2011 Feb; 12(2): 175-80</figcaption>
                        </figure>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">Cancer risk prediction</div></a>
                                <a href="#" class="item next"onclick="setTabContent(2)"><div class="title">Cancer Occurrence Monitoring</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //암 발생 원인 분석 -->

                <!-- 암 발생 모니터링 -->
                <div class="info-box">
                    <p class="font-h4 main-title">Cancer Occurrence Monitoring</p>
                    <p class="subject">When cancer occurs in the body, there are NDA fragments detached from cancer cells in the blood.</p>
                    <p class="desc">This is called ctDNA (circulating tumor DNA). When ctDNA is checked regularly, cancer cells can be detected early and prompt measures can be taken. <br>Unlike existing biopsies, this test can be performed by simply collecting blood, which makes regular checkups more efficient. However, theistest is not widely given because the levels ofctDNA are different by type of cancer and individual, making detection very difficult. Macrogen is expanding this service by continuously making technical improvements.</p>
                    <div class="img"><img src="/publishing/pc-en/dist/img/business/img_monitoring.png" alt="Cancer Occurrence Monitoring"/></div>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_precision08.png" alt="LINEAR CARE SYSTEM/CIRCULAR CARE SYSTEM"/></div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">Analysis of causes of cancer</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //암 발생 모니터링 -->
                <div class="btn-area">
                    <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
                </div>
            </div>
            <!-- //탭 컨텐츠 -->

            <script>
                $('._swiperTab .swiper-slide').on('click', function(){
                    var idx = $(this).index();
                    $(this).addClass('active').siblings().removeClass('active');
                    // <!--탭메뉴 클릭시 페이지 변경-->
                    $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                    $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
                });
                function setTabContent(idx){
                    $('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');
                    // <!--탭메뉴 클릭시 페이지 변경-->
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
                
             	// location.hash // 20230502
                if(location.hash) {
                	
               		var loadtab = $('._swiperTab .swiper-slide').filter(location.hash);
               		loadtab.click();	// tab content view
               		setTabContent(loadtab.index());	// scroll 이동
                }
           		
                $(window).on("hashchange",function () { 
                	location.reload();
                });
                
            </script>
        </div>
    </div>

</div>

  
</body>
