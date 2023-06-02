<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/test-bg.png);">
			<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <div class="font-h1">GCLP</div>
	            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">As an institution specializing in the analysis of samples used in clinical trials, Macrogen also offers services for identifying bio-markers in addition to regular analyses.</p>
	                <p class="subject font-body-h img_bottom">The quality of services offered by Macrogen is controlled to meet the standards of GCLP in Korea as well as global certifications (e.g. CAP, CLIA and CSP). Analysis services are mostly based on multiomics, which means the analysis of the genome, transcriptome, proteome and metabolome, among others.</p>
	                <div class="img">
	                    <img src="/publishing/mobile-ko/dist/img/business/img_gclp01.png" alt="">
	                </div>
	            </div>
	            <!--//상단 공통 e -->
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">SERVICE</p>
	                <p class="desc font-body">The ”Clinical Genome Business Unit” of Macrogen provides specialized services in the analysis of samples used in clinical trials. In addition to its designation in 2019 by the Korean Ministry of Food and Drug Safety as Korea’s first ever lab for sample analysis in clinical trials, Macrogen has also acquired GCLP certification in Korea and certifications from the CAP, CLIA and CSP abroad– a testament to the quality services that set the company apart from other players in the market, as well as the its commitment to meeting the requirements of clinical trials both at home and abroad. In addition, Macrogen has gone a step further as a CRO to develop further services such as those for detecting bio-markers. The clinical analysis services offered by Macrogen go beyond simple analysis of the samples and are strategically designed to improve the likelihood of the trial’s success.</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">ClinPharm Seq</span> 
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" onclick="setTabContent(0)" id="clin"><a href="#">ClinPharm Seq</a></li>
	                        <li class="option-value" onclick="setTabContent(1)" id="multi-omics"><a href="#">Multi Omics</a></li>
	                        <li class="option-value" onclick="setTabContent(2)" id="multi-omics"><a href="#">Storage of samples</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--약물유전체분석-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">ClinPharm Seq</p>
	                    <p class="desc font-body img_bottom">The ”Axen ClinPharm Seq” is an individually tailored genetic test on 59 genes involved in drug metabolism. All drugs carry the risk of side effects. The efficacy of drugs, too, may vary according to the genetic specifics of an individual. Through genetic testing, the Axen ClinPharm Seq helps develop a prescription best tailored to the individual’s needs. The test can also be used in the screening of participants in the clinical trial to verify the safety of new drugs. Each individual participant in a clinical trial carries the risk of potentially severe side effects depending on their genetic makeup. Through better understanding of these individual specifics, better criteria can be set up for the screening of participants in clinical trials, as well as more practical information being made readily available to address medical emergencies due to side effects should they occur during the trials. It is one of the best options to maximize the chances of success in clinical trials while minimizing the risk to the safety of participants.</p>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_gclp02.png" alt="">
	                    </div>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_gclp03.png" alt="">
	                            <span class="btnZoom" data-img="img_gclp03"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <p class="sub-title font-h5">Features</p>
	                    <p class="desc font-body-h">With just a single test performed once in your lifetime, ClinPharmSeq allows for tailored treatment of diseases. ClinPharmSeq tests 59 genes closely associated with a range of diseases, thereby increasing the efficacy of treatment drugs while lowering the risk of side effects throughout your life.</p>
	                    <div class="list-area-group">
	                        <div class="list-area">
	                            <p class="font-body-h-b title">ClinPharmSeq is particularly effective in any of the following circumstances.</p>
	                            <ul class="dot_list01">
	                                <li>There is a huge variance among individuals in the reaction to a drug</li>
	                                <li>The treatment area is small</li>
	                                <li>There is a possibility of severe side effects</li>
	                                <li>There is treatment resistance</li>
	                                <li>Long-term treatment is required</li>
	                                <li>The treatment drug is expensive</li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">ClinPharmSeq can be used to test for reactions likely to occur to the following drugs, among many.</p>
	                            <ul class="dot_list01">
	                                <li>Anti-viral drugs and anti-fungal drugs used to treat infectious diseases</li>
	                                <li>Drugs to treat hyperlipidemia in the circulatory system</li>
	                                <li>Immunomodulatory agents and cytotoxic chemotherapy drugs used to treat cancer/ autoimmune disorders</li>
	                                <li>Antidepressants used for mental health or to treat behavioral disorders</li>
	                                <li>Anticoagulants used to treat diseases related to the blood or the hematopoietic system</li>
	                                <li>Drugs used to treat gout, hormonal disorders or metabolic syndromes</li>
	                                <li class="none">In addition to the above, ClinPharmSeq can be used for many different kinds of diseases.</li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title c_000">Panel Specification</p>
	                            <div class="table-scroll">
	                                <table class="table">
	                                    <colgroup>
	                                        <col width="33%">
	                                        <col width="*">
	                                    </colgroup>
	                                    <thead>
	                                        <tr>
	                                            <th scope="col" colspan="2">Panel Specification</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                        <tr>
	                                            <td>Target Site</td>
	                                            <td>About 812kbp</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Regions</td>
	                                            <td>Exons + UTRs + 5’ UTR + 3’ UTR</td>
	                                        </tr>
	                                        <tr>
	                                            <td>the number of genes</td>
	                                            <td>59</td>
	                                        </tr>
	                                        <tr>
	                                            <td rowspan="2">Samples</td>
	                                            <td>gDNA 500ng</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Whole Blood 4ml x 2pcs.</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Types of Mutations</td>
	                                            <td>SNV, InDel, Large Insertion and deletion</td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a> -->
					          <div class="btn-box">
						          <div class="tit">Service Inquiry</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
	                        </div>
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
	                <!-- //약물유전체분석 -->
	
	                <!--멀티오믹스-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Multi Omics</p>
	                    <p class="desc02">Multiomics refers to the integrated and comprehensive analysis of a large volume of data generated and collected on the molecular level, such as data regarding the genome, transcriptome, proteome and metabolome.</p>
	                    <p class="desc font-body img_bottom">The emergence of new technologies and equipment has allowed us to identify the correlations between the varied and complex biological units within our body, and grasp a better understanding of the physiological biomarkers for certain diseases and their treatment. Single gene disorders that occur due to a mutation in one gene rarely have an etiological explanation. But comorbidities involve a number of modifier genes and various other factors, making multiomics analysis necessary.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_gclp05.png" alt="">
	                            <span class="btnZoom" data-img="img_gclp05"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-en/dist/img/business/img_gclp06.png" alt="">
	                            <span class="btnZoom" data-img="img_gclp06"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <p class="sub-title font-h5">Features</p>
	                    <div class="list-area-group">
	                        <div class="list-area">
	                            <p class="font-body-h-b title">Applied Area</p>
	                            <ul class="dot_list01">
	                                <li>Single Cell In situ</li>
	                                <li>BioPharma</li>
	                                <li>Immunology</li>
	                                <li>Infectious Disease</li>
	                                <li>Oncology</li>
	                                <li>Neuroscience</li>
	                                <li>Spatial Transcriptomics</li>
	                                <li>Spatial Muliomics</li>
	                                <li>Cell & Gene Therapy Solutions</li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">Platforms</p>
	                            <div class="img">
	                                <img src="/publishing/mobile-ko/dist/img/business/img_gclp07.png" alt="">
	                            </div>
	                            <p class="font-body-b title">Technical support with the latest analysis equipment</p>
	                            <ul class="dot_list01">
	                                <li>Xenium In Situ (10X genomics)</li>
	                                <li>CosMx (nanostring)</li>
	                                <li>GeoMX (nanostring)</li>
	                                <li>Olilk Q100 (Olink)</li>
	                            </ul>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a> -->
					          <div class="btn-box">
						          <div class="tit">Service Inquiry</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //멀티오믹스 -->
	
	                <!-- 검체보관 서비스 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Storage of samples</p>
	                    <div class="list-area-group">
	                        <div class="list-area">
	                            <p class="font-body-h-b title">Macrogen offers another category of services dedicated to the storage of analytical samples.</p>
	                            <ul class="dot_list01">
	                                <li>For clients that find it challenging to store samples on site during clinical trials, Macrogen stores the samples for a certain period of time on their behalf.</li>
	                                <li>Following the completion of clinical trials, retention samples that need to be stored either over the short or long term can also be stored by Macrogen on the client’s behalf.</li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">The entire process of the hand-over to shipping and storage are tracked for temperature control. Data on temperature monitoring are also offered to the client. Samples that are required to be stored at an ultra-low temperature (of -70℃ or lower) are handled with particular care, including real-time monitoring of the temperature and recording of the temperature at regular intervals for safe and reliable storage.</p>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">A through back-up system is in place to safeguard the samples should unexpected incidents occur.</p>
	                            <ul class="dot_list01">
	                                <li>A back-up system using carbon dioxide in case of power outages or equipment breakdowns.</li>
	                                <li>Text notifications automatically sent to the mobile phone of relevant personnel in case of emergencies.</li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_gclp08.png" alt="">
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a> -->
					          <div class="btn-box">
						          <div class="tit">Service Inquiry</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //검체보관 서비스 -->
	            </div>
	            <!--// 탭 컨텐츠 e-->
	        </div>
	
	        <!-- 2023 추가 비지니스 확대이미지 -->
	        <div class="toast-popup">
	            <p>You can enlarge it by clicking on the image.</p>
	        </div>
	        <!--modalImageViewer-->
	        <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer" data-bs-backdrop="static">
	            <div class="modal-dialog">
	                <div class="modal-content">
	                    <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
	                    <div class="parent">
	                        <div class="zoom_img"><img src="" alt=""></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!--//modalImageViewer-->
	        <!-- //2023 추가 비지니스 확대이미지 -->
	        <script src="/publishing/mobile-en/dist/js/business.js"></script>
	        <script>
	     	// location.hash // 20230502
	        if(location.hash != "#none") {    	
	       		//var loadtab = $('._select-option .option-value').filter(location.hash);
	       		//loadtab.click();	// tab content view
	       		//setTabContent(loadtab.index());	// scroll 이동
	       		
	       		var loadtab = $('._select-option .option-value').filter(location.hash);
	       		// option click, business.js line 22 function onClickSelectOption
	       		loadtab.addClass('active').siblings().removeClass('active')
	            var idx = loadtab.index();
	            var $info = $(".info-box-wrap > div");
	            $info.addClass('show').siblings().removeClass('show');
	            $info.eq(idx).addClass('show').siblings().removeClass('show');
	            textChange(loadtab);
	            setInfoSectionList(loadtab.text())
	            // scroll 이동
	            setTabContent(loadtab.index());    		
	        }
	    		
	        $(window).on("hashchange",function () { 
	        	 if(location.hash != "#none"){
	          	location.reload();
	        	 }

	        });	
	        </script>
	    </div>
	</div>

</body>
</html>