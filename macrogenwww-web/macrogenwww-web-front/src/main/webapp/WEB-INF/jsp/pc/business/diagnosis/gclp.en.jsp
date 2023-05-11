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
	                    <li class="breadcrumb-item">GCLP</li>
	                </ol>
	            </nav>
	            <div class="hero-title">GCLP</div>
	            <a href="#_tab-box" class="btn btn-round btn-service">
	                <span>SERVICE</span>
	                <i class="icon icon-arrow-bottom-short-white"></i>
	            </a>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <div class="subject-box">
	                <p class="font-h4 title">As an institution specializing in the analysis of samples used in clinical trials, Macrogen also offers services for identifying bio-markers in addition to regular analyses.</p>
	                <p class="subject info">The quality of services offered by Macrogen is controlled to meet the standards of GCLP in Korea as well as global certifications (e.g. CAP, CLIA and CSP). Analysis services are mostly based on multiomics, which means the analysis of the genome, transcriptome, proteome and metabolome, among others.</p>
	                <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_gclp01.png" alt=""/></div>
	            </div>
	            
	            <!--탭 슬라이드-->
	            <div class="tab-box" id="_tab-box">
	                <p class="font-h4 title">SERVICE</p>
	                <p class="info">The ”Clinical Genome Business Unit” of Macrogen provides specialized services in the analysis of samples used in clinical trials. In addition to its designation in 2019 by the Korean Ministry of Food and Drug Safety as Korea’s first ever lab for sample analysis in clinical trials, Macrogen has also acquired GCLP certification in Korea and certifications from the CAP, CLIA and CSP abroad– a testament to the quality services that set the company apart from other players in the market, as well as the its commitment to meeting the requirements of clinical trials both at home and abroad. In addition, Macrogen has gone a step further as a CRO to develop further services such as those for detecting bio-markers. The clinical analysis services offered by Macrogen go beyond simple analysis of the samples and are strategically designed to improve the likelihood of the trial’s success.</p>
	                <div class="slide-tab-wrap">
	                    <div class="swiper-container tab-slide-box _swiperTab">
	                        <div class="swiper-wrapper _swiperTab">
	                            <div class="swiper-slide active" id="clin"><a href="#">ClinPharm Seq</a></div>
	                            <div class="swiper-slide " id="multi-omics"><a href="#">Multi Omics</a></div>
	                            <div class="swiper-slide " id="sample"><a href="#">Storage of samples</a></div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!--//탭 슬라이드-->
	
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <!-- 약물유전체분석 -->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">ClinPharm Seq</p>
	                    <p class="desc">The ”Axen ClinPharm Seq” is an individually tailored genetic test on 59 genes involved in drug metabolism. All drugs carry the risk of side effects. The efficacy of drugs, too, may vary according to the genetic specifics of an individual. Through genetic testing, the Axen ClinPharm Seq helps develop a prescription best tailored to the individual’s needs. The test can also be used in the screening of participants in the clinical trial to verify the safety of new drugs. Each individual participant in a clinical trial carries the risk of potentially severe side effects depending on their genetic makeup. Through better understanding of these individual specifics, better criteria can be set up for the screening of participants in clinical trials, as well as more practical information being made readily available to address medical emergencies due to side effects should they occur during the trials. It is one of the best options to maximize the chances of success in clinical trials while minimizing the risk to the safety of participants.</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_gclp02.png" alt=""/></div>
	
	                    <div class="img_gclp02">
	                        <div class="contents03">
	                            <div class="font-h8">As clinical trials increase, ADRs (Adverse drug reactions)↑...<br>Total 36 participants died from ADRs last year</div>
	                            <div class="font-body">....A total of 538 clinical trials were conducted last year alone, with a total of 36 participants dying <br>from ADRs</div>
	                            <div class="reference">※ Relief of Injury from ADR case (2021/NHRS)</div>
	                        </div>
	                        <div class="contents02">
	                            <div class="table_title">
	                                <div class="font-h8">Number of ADRs case reports in 2016-2020</div>
	                                <span>(Unit:case)</span>
	                            </div>
	                            <table class="table">
	                                <colgroup>
	                                    <col width="18%">
	                                    <col width="16%" span="4">
	                                    <col width="22%">
	                                </colgroup>
	                                <thead>
	                                    <tr>
	                                        <th scope="col">Sorting</th>
	                                        <th scope="col">2016</th>
	                                        <th scope="col">2017</th>
	                                        <th scope="col">2018</th>
	                                        <th scope="col">2019</th>
	                                        <th scope="col">June 2020</th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <tr>
	                                        <td>Death</td>
	                                        <td>21</td>
	                                        <td>29</td>
	                                        <td>31</td>
	                                        <td>39</td>
	                                        <td>14</td>
	                                    </tr>
	                                    <tr>
	                                        <td>Hospitalization <br>and Other</td>
	                                        <td>288</td>
	                                        <td>260</td>
	                                        <td>273</td>
	                                        <td>264</td>
	                                        <td>141</td>
	                                    </tr>
	                                    <tr>
	                                        <td>Total</td>
	                                        <td>309</td>
	                                        <td>289</td>
	                                        <td>304</td>
	                                        <td>300</td>
	                                        <td>155</td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                        </div>
	                    </div>
	
	                    <p class="sub-title font-h5">Features</p>
	                    <p class="desc">With just a single test performed once in your lifetime, ClinPharmSeq allows for tailored treatment of diseases. ClinPharmSeq tests 59 genes closely associated with a range of diseases, thereby increasing the efficacy of treatment drugs while lowering the risk of side effects throughout your life.</p>
	                    <div class="img_gclp01">
	                        <p>ClinPharmSeq is <br>particularly effective <br>in any of the following <br>circumstances.</p>
	                        <ul class="dot_list01">
	                            <li>There is a huge variance among individuals in the reaction to a drug</li>
	                            <li>The treatment area is small</li>
	                            <li>There is a possibility of severe side effects</li>
	                            <li>There is treatment resistance</li>
	                            <li>Long-term treatment is required</li>
	                            <li>The treatment drug is expensive</li>
	                        </ul>
	                    </div>
	                    <div class="img_gclp01">
	                        <p>ClinPharmSeq can be <br>used to test for <br>reactions likely to <br>occur to the following <br>drugs, among many.</p>
	                        <ul class="dot_list01">
	                            <li>Anti-viral drugs and anti-fungal drugs used to treat infectious diseases</li>
	                            <li>Drugs to treat hyperlipidemia in the circulatory system</li>
	                            <li>Immunomodulatory agents and cytotoxic chemotherapy drugs used to <br>treat cancer/ autoimmune disorders</li>
	                            <li>Antidepressants used for mental health or to treat behavioral disorders</li>
	                            <li>Anticoagulants used to treat diseases related to the blood or the <br>hematopoietic system</li>
	                            <li>Drugs used to treat gout, hormonal disorders or metabolic <br>syndromes</li>
	                            <li class="none">In addition to the above, ClinPharmSeq can be used for many different kinds of diseases.</li>
	                        </ul>
	                    </div>
	                    <p class="sub-title font-h5">Panel Specification</p>
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
	                                <td class="text-start">About 812kbp</td>
	                            </tr>
	                            <tr>
	                                <td>Regions</td>
	                                <td class="text-start">Exons + UTRs + 5’ UTR + 3’ UTR</td>
	                            </tr>
	                            <tr>
	                                <td>the number of genes</td>
	                                <td class="text-start">59</td>
	                            </tr>
	                            <tr>
	                                <td rowspan="2">Samples</td>
	                                <td class="text-start">gDNA 500ng</td>
	                            </tr>
	                            <tr>
	                                <td class="text-start">Whole Blood 4ml x 2pcs.</td>
	                            </tr>
	                            <tr>
	                                <td>Types of Mutations</td>
	                                <td class="text-start">SNV, InDel, Large Insertion and deletion</td>
	                            </tr>
	                        </tbody>
	                    </table>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item next"onclick="setTabContent(1)"><div class="title">Multi Omics</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //약물유전체분석 -->
	
	                <!-- 멀티오믹스 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Multi Omics</p>
	                    <p class="desc02">Multiomics refers to the integrated and comprehensive analysis of a large volume of data generated and collected on the molecular level, such as data regarding the genome, transcriptome, proteome and metabolome.</p>
	                    <p class="desc">The emergence of new technologies and equipment has allowed us to identify the correlations between the varied and complex biological units within our body, and grasp a better understanding of the physiological biomarkers for certain diseases and their treatment. Single gene disorders that occur due to a mutation in one gene rarely have an etiological explanation. But comorbidities involve a number of modifier genes and various other factors, making multiomics analysis necessary.</p>
	                    <div class="img_gclp03">
	                        <div class="font-h8">Central Dogma*</div>
	                        <div class="box01">
	                            <div class="box02">DNA</div>
	                            <div class="box02">RNA</div>
	                            <div class="box02">Protein</div>
	                            <div class="text">Multi Omics</div>
	                        </div>
	                    </div>
	                    <div class="img_gclp04">
	                        <div class="box">
	                            <img src="/publishing/pc-ko/dist/img/business/img_gclp0301.png" alt=""/>
	                            <div class="font-body">Oncology</div>
	                            Reveal the spatial features of heterogeneity <br>in the tumor and immune microenvironment <br>and identify biomarkers with potential <br>therapeutic impact.
	                        </div>
	                        <div class="box">
	                            <img src="/publishing/pc-ko/dist/img/business/img_gclp0302.png" alt=""/>
	                            <div class="font-body">Immunology</div>
	                            Characterize the immune system and spatial <br>localizations in response to infections <br>disease, allergic inflammation and <br>autoimmune disorders.
	                        </div>
	                        <div class="box last">
	                            <img src="/publishing/pc-ko/dist/img/business/img_gclp0303.png" alt=""/>
	                            <div class="font-body">Neuroscience</div>
	                            Uncover spatial expression patterns in <br>complex neural tissues in response to <br>disease and traumatic injury.
	                        </div>
	                    </div>
	                    <p class="sub-title font-h5">Features</p>
	                    <div class="img_gclp01">
	                        <p>Applied Area</p>
	                        <ul class="dot_list01 flex">
	                            <li>Single molecular RNA & Protein</li>
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
	                    <p class="sub-title font-h5">Platforms</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_gclp04.png" alt=""/></div>
	                    <div class="list-area-group type02">
	                        <div class="list-area">
	                            <p class="font-body-h title">Technical support with the latest analysis equipment</p>
	                            <ul class="list-circle-dot">
	                                <li>Xenium In Situ (10X genomics)</li>
	                                <li>CosMx (nanostring)</li>
	                                <li>GeoMX (nanostring)</li>
	                                <li>Olilk Q100 (Olink)</li>
	                            </ul>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">ClinPharm Seq</div></a>
	                                <a href="#" class="item next" onclick="setTabContent(2)"><div class="title">Storage of samples</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //멀티오믹스 -->
	
	                <!-- 검체보관 서비스 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Storage of samples</p>
	                    <div class="img_gclp05">
	                        <p class="font-body-h title">Macrogen offers another category of services dedicated to the storage of analytical samples.</p>
	                        <ul class="dot_list01">
	                            <li>For clients that find it challenging to store samples on site during clinical trials, Macrogen stores the samples for a certain period of time on their behalf.</li>
	                            <li>Following the completion of clinical trials, retention samples that need to be stored either over the short or long term can also be stored by Macrogen on the client’s behalf.</li>
	                        </ul>
	                        <p class="font-body-h title">The entire process of the hand-over to shipping and storage are tracked for temperature control. Data on temperature monitoring are also offered to the client. Samples that are required to be stored at an ultra-low temperature (of -70℃ or lower) are handled with particular care, including real-time monitoring of the temperature and recording of the temperature at regular intervals for safe and reliable storage.</p>
	                        <p class="font-body-h title">A through back-up system is in place to safeguard the samples should unexpected incidents occur.</p>
	                        <ul class="dot_list01">
	                            <li>A back-up system using carbon dioxide in case of power outages or equipment breakdowns.</li>
	                            <li>Text notifications automatically sent to the mobile phone of relevant personnel in case of emergencies.</li>
	                        </ul>
	                    </div>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_gclp05.png" alt=""/></div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">Multi Omics</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //체보관 서비스 -->
	                <div class="btn-area">
	                    <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
	                </div>
	            </div>
	            <!-- //탭 컨텐츠 -->
	
	            <script>
	                var swiper = new Swiper("._swiperTab", {
	                    slidesPerView: "auto",
	                    spaceBetween: 0,
	                    centeredSlides: false,
	                    watchActiveIndex: true,
	                    slideToClickedSlide: true,
	                });
	                function setTabContent (idx){
	                    $('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');
	                    swiper[0].slideTo(idx);
	                    //탭메뉴 클릭시 페이지 변경
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
	                $('._swiperTab .swiper-slide').on('click', function(){
	                    var idx = $(this).index();
	                    setTabContent(idx)
	                });
	                
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