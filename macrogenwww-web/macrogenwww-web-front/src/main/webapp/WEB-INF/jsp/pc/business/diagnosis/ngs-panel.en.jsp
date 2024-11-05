<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>
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
	                    <li class="breadcrumb-item">NGS-based Genetic Panel Lab</li>
	                </ol>
	            </nav>
	            <h2 class="hero-title">NGS-based Genetic Panel Lab</h2>
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
	                <p class="font-h4 title">Macrogen offers support during the early stages of setting up of labs for next-generation gene sequencing panels, including consulting on the panel itself, related equipment and personnel.</p>
	                <p class="subject info">Setting up labs for Next-Generation Sequencing panels, or NGS, requires significant efforts. Have a look at the PMG Lab Business Model developed by Macrogen drawing on its years of knowhow. The Model offers a variety of services, including those for clinical NGS panels, sequencing platforms and manpower.</p>
	                <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_ngs_gene01_en.png" alt=""/></div>
	            </div>
	            
	            <!--탭 슬라이드-->
	            <div class="tab-box" id="_tab-box">
	                <p class="font-h4 title">SERVICE</p>
	                <p class="info">A number of healthcare institutions desire to set up their own lab for gene sequencing panels based on Next-Generation Sequencing techniques, to offer treatments tailored to each individual with the help of precision medicine. But in reality setting up a test lab for NGS panels requires clinical diagnostic test panels built on years of knowhow, highly skilled personnel and certified sequencing platform equipment, not to mention the time and costs associated with securing such resources. Inevitably, only a handful of organizations have succeeded in setting up labs that meet the approval criteria of regulatory authorities to perform NGS panel testing. With over 25 years of experience in gene sequencing, Macrogen can offer customized support in a wide range of areas on your journey to setting up your own lab for NGS panels and precision medicine, with services covering the panel itself to lab personnel, analyses of test results and equipment.</p>
	                <div class="slide-tab-wrap">
	                    <div class="swiper-container tab-slide-box _swiperTab">
	                        <div class="swiper-wrapper _swiperTab">
	                            <div class="swiper-slide active" id="certification"><a href="#">Certification acquired by Macrogen in the clinical diagnosis business</a></div>
	                            <div class="swiper-slide" id="features"><a href="#">Key features and strengths of Macrogen’s cancer panels</a></div>
	                            <div class="swiper-slide" id="scope"><a href="#">Scope of projects to set up NGS-based PMG labs</a></div>
	                        </div>
	                    </div>
	                    <div class="btn-box">
	                        <a href="#" class="btn btn-circle btn-white btn-sm _slideLeft swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-disabled="true"><i class="icon icon-arrow-left-sm"></i></a>
	                        <a href="#" class="btn btn-circle btn-white btn-sm _slideRight swiper-button-disabled" tabindex="-1" role="button" aria-label="Next slide" aria-disabled="true"><i class="icon icon-arrow-right-sm"></i></a>
	                        <a href="#" class="btn btn-circle btn-black btn-sm _btnMenu"><i class="icon icon-menu-white"></i></a>
	                    </div>
	                    <div class="tab-modal">
	                        <div class="tab-modal-header">
	                            <div class="close-btn _closebtn">
	                                <span></span>
	                                <span></span>
	                            </div>
	                        </div>
	                        <ul class="tab-modal-body">
	                            <li><a href="#" onclick="setTabContent(0)">Certification acquired by Macrogen in the clinical diagnosis business</a></li>
	                            <li><a href="#" onclick="setTabContent(1)">Key features and strengths of Macrogen’s cancer panels</a></li>
	                            <li><a href="#" onclick="setTabContent(2)">Scope of projects to set up NGS-based PMG labs</a></li>
	                        </ul>
	                    </div>
	                    <!--탭모달 스크립트-->
	                    <script>
	                        $("._btnMenu").on('click',function() {
	                            $(".tab-modal").show();
	                        });
	                        $("._closebtn").on('click',function() {
	                            $(".tab-modal").hide();
	                        });
	                        $(document).mouseup(function (e){
	                            var LayerPopup = $(".tab-modal");
	                            if(LayerPopup.has(e.target).length === 0){
	                                LayerPopup.hide();
	                            }
	                        });
	                    </script>
	                </div>
	            </div>
	            <!--//탭 슬라이드-->
	
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <!-- 임상진단사업 인증 현황 -->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Certification acquired by Macrogen <br>in the clinical diagnosis business</p>
	                    <p class="desc">Macrogen offers clinical diagnosis services using certified and proven technology.</p>
	                    <div class="img_ngs_gene01">
	                        <ol>
	                            <li>
	                                <strong>2013</strong>
	                                <ul>
	                                    <li>2008 Acquired initial certification for <br>ISO 9001 </li>
	                                    <li>2011 Broader certification of all businesses</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <strong>2017</strong>
	                                <ul>
	                                    <li>Acquired certification <br>from CAP(College of American Pathologists) <br>of U.S.A. and CLIA(Clinical Laboratory Improvement Amendments)</li>
	                                    <li>Approved by the Korean Ministry of Food and Drug Safety for the NGS clinical test lab</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <strong>2018</strong>
	                                <ul>
	                                    <li>Received Grade A in the assessment for the accuracy of genetic tests</li>
	                                    <li>Acquired certification for PIMIS, the first ever in <br>the industry to receive such certification in Korea</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <strong>2019</strong>
	                                <ul>
	                                    <li>Acquired GMP certification for NGS-based reagents for in vitro diagnostics</li>
	                                    <li>Acquired certification as <br>a GCLP, the first ever among businesses offering NGS</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <strong>2020</strong>
	                                <ul>
	                                    <li>Acquired certification from CAP of U.S.A. and CLIA (for the second consecutive time)</li>
	                                    <li>Received Grade A in the assessment <br>for the accuracy of genetic tests</li>
	                                    <li>Acquired certification for ISO 13485</li>
	                                </ul>
	                            </li>
	                        </ol>
	                    </div>
	                    <div class="img_ngs_gene02">
	                        <a href="/downfile/1_FM89418_macrogen(2022).pdf" class="btn_down">ISO 9001.pdf</a>
							<a href="/downfile/2_Certificate_of_Accreditation_MacrogenHQ_2023.pdf" class="btn_down">CLIA Certification</a>
							<a href="/downfile/3_Macrogen_HQ-CAP_Certificate_of_Accreditation_2022-2024.pdf" class="btn_down">CAP Accreditation</a>
							<a href="/downfile/4_Macrogen_2022-20_Institute_of_Genetic_testing_evaluation.pdf" class="btn_down">Genetic Testing Accuracy Evaluation Certification</a>
							<a href="/downfile/9_Certificate_of_GMP_Macrogen_2025.08.23.pdf" class="btn_down">GMP Accreditation</a>
							<a href="/downfile/7_Genetic_Testing_Accuracy_Evaluation_Certification_5-2.PDF" class="btn_down">GCLP Accreditation</a>
							<a href="/downfile/6_ISO13485.pdf" class="btn_down">ISO 13485</a>
	                    </div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item next"onclick="setTabContent(1)"><div class="title">Key features and strengths of Macrogen’s cancer panels</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //임상진단사업 인증 현황 -->
	
	                <!-- 마크로젠 암 진단 패널의 특징 및 경쟁력 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Key features and strengths of Macrogen’s cancer panels</p>
	                    <p class="desc">With some of the most cutting-edge gene sequencing technologies in the world and advanced analytical capabilities developed in-house, <br>Macrogen offers some of the highest quality services available on the market today.</p>
	                    <div class="img_ngs_gene03">
	                        <div class="center"><div class="txt">Macrogen’s <br>competitiveness <br>in genetic testing <br>for cancer</div></div>
	                        <div class="competitive01">
	                            <img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0201.png" alt=""/>
	                            <div class="txt02 left">
	                                <div class="txt01">Optimized for cancer genes <br>most commonly found in Koreans</div>
	                                A data base on healthy genomes and <br>genomes with mutations indicating <br>cancer has been built up through a <br>number of large-scale projects with <br>Korean subjects over the years.
	                            </div>
	                        </div>
	                        <div class="competitive02">
	                            <img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0202.png" alt=""/>
	                            <div class="txt02 left">
	                                <div class="txt01">Result sheets tailored to each <br>healthcare institution, made to be <br>easy to interpret and use</div>
	                                The test result sheets are designed to <br>offer useful clinical data <br>in an easy-to-understand format, <br>tailored to each healthcare institution.
	                            </div>
	                        </div>
	                        <div class="competitive03">
	                            <img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0203.png" alt=""/>
	                            <div class="txt02 right">
	                                <div class="txt01">Some of the world’s most <br>cutting-edge gene <br>sequencing technologies</div>
	                                With highly skilled personnel and <br>equipment certified and verified <br>for their efficacy, Macrogen offers <br>high quality services to its clients.
	                            </div>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">Certification acquired by Macrogenin the clinical diagnosis business</div></a>
	                                <a href="#" class="item next"onclick="setTabContent(2)"><div class="title">Scope of projects to set up NGS-based PMG labs</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //마크로젠 암 진단 패널의 특징 및 경쟁력 -->
	
	                <!-- NGS기반 유전자 패널 검사실(PMG Lab) 구축 범위 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Scope of projects to set up NGS-based PMG labs</p>
	                    <p class="desc">Macrogen offers services tailored to each client for optimal installation and operation of labs for genetic testing panels using next-generation sequencing techniques.</p>
	                    <div class="img_ngs_gene04">
	                        <ul>
	                            <li>
	                                <div class="imgbox">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0301.png" alt=""/>
	                                    Supply of genetic <br>testing panels
	                                </div>
	                                <ul class="dot_list01">
	                                    <li>Cancer panels that have been <br>verified for their efficacy</li>
	                                    <li>Simultaneous analysis of <br>all alterations and signatures <br>in one go</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <div class="imgbox">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0302.png" alt=""/>
	                                    Dispatch of <br>skilled personnel
	                                </div>
	                                <ul class="dot_list01">
	                                    <li>On-site assignment of <br>senior researchers with years <br>of experience in NGS to <br>offer assistance.</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <div class="imgbox">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0303.png" alt=""/>
	                                    Bioinformatics <br>analysis
	                                </div>
	                                <ul class="dot_list01">
	                                    <li>Reports tailored to each <br>healthcare institution</li>
	                                    <li>Specialists in bioinformatics <br>matched one-on-one with <br>the client’s personnel</li>
	                                    <li>Accurate yet prompt analyses</li>
	                                </ul>
	                            </li>
	                            <li>
	                                <div class="imgbox">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_ngs_gene0304.png" alt=""/>
	                                    Investment in <br>equipment
	                                </div>
	                                <ul class="dot_list01">
	                                    <li>All equipment needed for <br>NGS tests</li>
	                                    <li>Analysis servers</li>
	                                </ul>
	                            </li>
	                        </ul>
	                    </div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">Key features and strengths of Macrogen’s cancer panels</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //NGS기반 유전자 패널 검사실(PMG Lab) 구축 범위 -->
	                <div class="btn-area">
	                    <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a> -->
			          <div class="btn-box">
				          <div class="tit">Service Inquiry</div>
				          <div class="email">
				          	<span class="sub_tit">Email</span>
				          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
				          </div>
				          <div class="phone">
				          	<span class="sub_tit">Phone</span>
				          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
				          </div>
			          </div>
	                </div>
	            </div>
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
                if(location.hash != "#_tab-box") {
                	
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