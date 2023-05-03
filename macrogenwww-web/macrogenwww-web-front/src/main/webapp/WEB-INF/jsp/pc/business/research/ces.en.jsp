<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg ces">
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">Research</li>
        <li class="breadcrumb-item">CES</li>
    </ol>
</nav>

            <div class="hero-title">CES</div>
            <div class="slogan-sub">Capillary Electrophoresis Sequencing</div>
            <a href="#_tab-box" class="btn btn-round btn-service">
                <span>SERVICE</span>
                <i class="icon icon-arrow-bottom-short-white"></i>
            </a>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
  <p class="title font-h4">We provide a superior quality of CES (Capillary Electrophoresis Sequencing) services, based on extensive experience and expertise accumulated over 20 years
  </p>
  <p class="subject">Capillary Electrophoresis Sequencing (CES) is a service that analyzes DNA sequences using a biochemical method.</p>
  <!--10.05 이미지 경로 변경-->
  <div class="img">
    <img src="/publishing/pc-en/dist/img/business/img-ces-intro.png" alt="CESIntro">
  </div>
  <p class="desc">Our service maximizes customer satisfaction through a variety of product lines ranging from the most common services such as Standard Sequencing, Identification, Fragment Analysis, and Customized Sequencing Service, which is a renewed service from the original sequencing. Aside from general sequencing services, Macrogen’s CES service provides additional customized services (gDNA extraction, primer synthesis, PCR amplification, and purification) according to customer requests. A separate online order system is also available for customers’ convenience so that they can request a desired service. Monitoring of all processes and follow-up for the results are provided for each ordered sample.
  </p>
</div>

            <!--탭 슬라이드-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">SERVICE</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-slide active" id="standard"><a href="#">Standard Sequencing</a></div>
                            <div class="swiper-slide" id="identification"><a href="#">Identification</a></div>
                            <div class="swiper-slide" id="fragment"><a href="#">Fragment</a></div>
                            <div class="swiper-slide" id="customized"><a href="#">Customized Sequencing</a></div>
                            <div class="swiper-slide" id="human"><a href="#">Human ID</a></div>
                            <!--<div class="swiper-slide"><a href="#">Gene Sythesis</a></div>-->
                            <!--09.23 3depth로 변경예정이여서 주석처리하겠습니다.-->
                        </div>
                    </div>
                </div>
            </div>
            <!--탭메뉴 스크립트-->
            <!--10.08 앵커포인트 스크립트 완료-->
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

            <div class="info-box-wrap tab-content">
                <!--Standard Sequencing-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Standard Sequencing</p>
                    <p class="subject">Standard sequencing is a service that sequences PCR products and plasmid DNA requested by customers.</p>
                    <p class="desc img_bottom">Macrogen provides quicker and more accurate services based on its Capillary Electrophoresis Sequencing (CES) automation system and extensive experience.<br>
                        After the results are delivered, a team of experts in the sequencing field are ready to provide the follow-up service.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-ces-standard.png" alt="Standard Sequencing">
                    </div>
                    <div class="list-area">
                        <p class="font-h8 title">Features</p>
                        <ul class="list-circle-dot">
                            <li>ABI 3730xl System</li>
                            <li>High quality results and normal read length (1,050bp)</li>
                            <li>Real-time monitoring available from order receipt to delivery of the results based on Laboratory Information Management System (LIMS)</li>
                            <li>Results provided within 24 hours after the submission of the sample (to be submitted before 6:00pm)</li>
                            <li>Free basic analysis service (homology search using BlastN and DNA sequence orders)</li>
                            <li>Free universal primer</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Standard Sequencing Single/Plate</p>
                    <p class="desc list_bottom">Standard sequencing can be performed with single tubes and 96-well plates.</p>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-h8 title">Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li>Samples are prepared in individual tubes upon request</li>
                                <li>Free re-sequencing service</li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title">Additional Service</p>
                            <ul class="list-circle-dot">
                                <li>PCR product purification (both single/plate available)</li>
                                <li>Gel extraction</li>
                                <li>Clones sampling & plasmid extraction (Single/Plate/Agar plate)</li>
                                <li>BAC/Fosmid/Cosmid extraction</li>
                                <li>Confirmation of concentration by gel running</li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Difficult Template Sequencing</p>
                    <p class="desc list_bottom">Difficult template sequencing is a service for sequencing templates that have an unusual structure based on the customer’s information after confirming<br>
                        the standard sequencing results. In particular, it is suitable for templates with the following specific structure, and provides improved high-quality results.</p>
                    <div class="list-area figure_bottom">
                        <ul class="list-circle-dot">
                            <li>Hairpin siRNA</li>
                            <li>Unusual secondary structure</li>
                            <li>G-rich</li>
                            <li>Homopolymeric tracts(PolyG) </li>
                            <li>GT-Repetitive regions</li>
                        </ul>
                    </div>
                    <!--10.05 이미지 경로 변경-->
                    <div class="border-gray-box">
                        <img src="/publishing/pc-en/dist/img/business/img_sequencingchart.png" alt="Difficult Template Sequencing">
                    </div>
                    <div class="btn-area">
                        <a href="mailto:sequencing@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveCesQuotation.do?menuCd=QUO100" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item next" onclick="setTabContent(1)">
                                    <div class="title">Identification</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Identification-->
                <div class="info-box">
                    <p class="font-h4 main-title">Identification</p>
                    <p class="subject">This is a package service that provides universally used microorganism/biological species identification test from prep to analysis.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-ces-identification.png" alt="Identification">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">16S/18S/26S rRNA&#38;ITS Region Full Sequencing</p>
                    <p class="desc list_bottom">This service identifies bacteria by performing PCR using 16S rRNA gene 27F and 1492R primer and sequencing them with inter-primers, 785F and 907R. We provide a base sequence of about 1,350bp or more by selecting/changing the primer if requested by the client.</p>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-h8 title">Bacteria+</p>
                            <p class="desc">For bacteria, PCR of 16S rRNA genes is performed using 27F and 1492R primers, and it is sequenced using 785F and 907R primers, which are the inter-primers, for identification.<br>
                                We provide a base sequence of about 1,350 bp or more by selecting/changing the primer if requested by the client.</p>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title">Fungi</p>
                            <p class="desc">1,600bp or higher results are guaranteed by the sequencing of the 18S rRNA region. 500bp or higher, as well as 1,300bp or higher results can be obtained by the sequencing<br>
                                of the ITS region and 26S rRNA gene (D1/D2/D3 region), respectively.</p>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">Rapid-ID</p>
                    <p class="desc list_bottom">This is a microbial mass spectrometry identification service based on the MALDI-TOF protein sequencing technique and uses the world's first FDA clearance and AOAC-certified system. It takes less time than the existing sequencing service and is suitable for clients who want more accurate identification. It identifies microorganisms and classifies species or genus. Because of its accuracy and immediate results, it is mainly used for microbial identification and contamination detection in many medical, pharmaceutical and cosmetic manufacturing industries. We provide reliable service, earning the first FDA clearance and the validation from AOAC, an American certification body.</p>
                    <div class="list-area">
                        <p class="title font-h8">Features</p>
                        <ul class="list-circle-dot">
                            <li>Delivered at 10:00 a.m. the next day (only for orders received before 1:00 p.m. on the same day)</li>
                            <li>Different rates by optional service types (TAT 0, 1, 3) and each type</li>
                            <li>Align Peaks with unique Adaptive Binning technique</li>
                            <li>First FDA Clearance for microbiological identification accuracy and AOAC Validation (US)</li>
                        </ul>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:sequencing@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveCesQuotation.do?menuCd=QUO100" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(0)">
                                    <div class="title">Standard Sequencing</div>
                                </a>
                                <a href="#" class="item next" onclick="setTabContent(2)">
                                    <div class="title">Fragment</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Fragment-->
                <div class="info-box">
                    <p class="main-title font-h4">Fragment</p>
                    <p class="subject">The fragment analysis service includes various services such as genotyping, DNA profiling, medical mutation detection, and agricultural research.<br>
                        Macrogen provides a microsatellite analysis (VNTRs) service based on our extensive experience and know-how.</p>
                    <div class="img">
                        <!--10.05 이미지 경로 변경-->
                        <img src="/publishing/pc-en/dist/img/business/img-ces-fragment.png" alt="Fragment">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Fragment analysis (Genescan)</p>
                    <p class="desc list_bottom">Fragment analysis is a service that separates and analyzes amplified PCR products according to fragments using a primer marked by a fluorescent label.<br>
                        It is used for genotyping, DNA profiling, medical mutation detection, and agricultural research. We also provide test design service from PCR optimization to<br> analysis upon request.
                    </p>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-h8 title">Service types</p>
                            <ul class="list-circle-dot">
                                <li>Microsatellite instability</li>
                                <li>Amplified fragment length polymorphism (AFLP) analysis</li>
                                <li>Terminal restriction fragment length polymorphism (T-RFLP) analysis</li>
                                <li>Relative fluorescent quantization - Loss of heterozygosity (LOH), Aneuploidy assays, and Large chromosomal deletion detection</li>
                                <li>Sequence-related amplified polymorphism (SRAP)</li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title">Features</p>
                            <ul class="list-circle-dot">
                                <li>The result data is provided in FSA file format (PDF/Excel also available)</li>
                                <li>The results are delivered within 3 to 7 business days after the collection of the samples.</li>
                                <li>Customized service from PCR optimization to fragment analysis is available</li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:sequencing@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveCesQuotation.do?menuCd=QUO100" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(1)">
                                    <div class="title">Identification</div>
                                </a>
                                <a href="#" class="item next" onclick="setTabContent(3)">
                                    <div class="title">Customized Sequencing</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Customized Sequencing-->
                <div class="info-box">
                    <p class="main-title font-h4">Customized Sequencing</p>
                    <p class="subject">Customized Sequencing provides sanger sequencing tests, prep, PCR, cloning, and pyrosequencing under the same conditions.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-ces-customized.png" alt="Customized Sequencing">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">PCR Optimization/Amplification</p>
                    <p class="desc list_bottom">PCR optimization is a customized service that performs and analyzes the entire process from primer design to PCR amplification, sequencing, and BI report when<br> the customer provides references together with cell/gDNA in relation to the desired target region. If the retest rate is high due to the rarity of the sample in PCR<br> amplification, touchdown PCR amplification, nested PCR amplification and FFPE PCR amplification, then Macrogen solves the problem by using its customized<br> PCR amplification service.</p>
                    <div class="list-area">
                        <p class="title font-h8">Features</p>
                        <ul class="list-circle-dot">
                            <li>Customized service</li>
                            <li>Pre-tests for high-quality results</li>
                            <li>Accurate and quick delivery and control of results by dedicated teams</li>
                            <li>gDNA extraction from samples of plants and animals</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Pyrosequencing</p>
                    <p class="desc list_bottom">Pyrosequencing is a sequencing service using pyrophosphate (PPi) generated when the polymerization of nucleotide with DNA occurs.<br>
                        Since there are more epigenetics studies on controlling the expression level of certain genes, regardless of DNA sequence, there is a growing interest in DNA<br>
                        methylation services. For DNA methylation analysis, very accurate and reliable results can be expected by using the pyrosequencing service. Pyrosequencing is<br>
                        used for epigenetics and cancer research efforts, and it can be validated based on the results of the NGS service provided by Macrogen, making it easy for clients to<br>
                        increase the accuracy of the results.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Features</p>
                        <ul class="list-circle-dot">
                            <li>Methylation studies</li>
                            <li>SNP & InDel analysis</li>
                            <li>Used for cancer studies
                                <ul class="list-hypen">
                                    <li>- 5% or lower allele frequencies can be found</li>
                                    <li>- Suitable for somatic mutation analysis</li>
                                    <li>- Di-, tri-, tetra allelic mutation analysis is available</li>
                                </ul>
                            </li>
                            <li>Validation based on NGS results
                                <ul class="list-hypen">
                                    <li>- Biomarker verification</li>
                                    <li>- Validation & verification of GWAS & NGS data</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">NGS Validation</p>
                    <p class="desc list_bottom">NGS Next Generation Sequencing (NGS) validation is a service that verifies data using Sanger sequencing to improve the accuracy and reliability of data<br>
                        after using the NGS service. When the client provides the chromosome position or reference sequence, we analyze the SNP of a certain area and the mutation results.<br>
                        It can be provided as one-stop service in line with the NGS service.
                    </p>
                    <div class="list-area">
                        <p class="font-h8 title">Features</p>
                        <ul class="list-circle-dot">
                            <li>Quicker and more accurate tests for clients using Macrogen’s NGS service, thanks to direct transfer of the samples.</li>
                            <li>When the chromosome position and reference sequence are verified, one-stop service is available from overall primer design to verification of sequencing results<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;and comparative analysis of variants.</li>
                            <li>Normal control data can be checked for comparison for more accurate results if necessary.</li>
                            <li>Data can be checked using two primer sets for the same site.</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">MLST analysis</p>
                    <p class="desc figure_bottom">MLST (Multilocus Sequence Typing) is a technique used to classify strains with the same species such as bacteria and fungi. Sequencing is performed on five to seven specific housekeeping genes of species to analyze the correlation of each ST (Sequence Type). Genetic/molecular evolutionary relations can then be verified by the combination of alleles for each strain in the same species.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_mslt.png" alt="MLST 분석">
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5 ">
                        One-click Sanger Sequencing
                    </p>
                    <p class="desc">
                        One-click Sanger sequencing is a technique for analyzing certain commonly studied gene variations with just one click for more convenience and quicker results. Optimized results from gDNA extraction to PCR amplification, sequencing, and SNP analysis are delivered to clients. Our dedicated team of researchers perform sequencing of specific exon areas and provide variant analysis results using a primer set manufactured based on many years of know-how. The sequencing results are widely used in studies and medical fields through genetic analysis of diseases. Based on our extensive experience and accurate reference, we establish an optimum test process for each gene for more precision.
                    </p>
                    <hr class="divider">
                    <p class="sub-title font-h5 ">
                        Primer Walking
                    </p>
                    <p class="desc">
                        Primer walking is a service that analyzes the sequence of plasmids or PCR products that cannot be read at once by single primer extension. It is generally used to obtain about 2 to 10kb of sequence information. End sequencing is performed with a primer provided or specified by the client, and the internal primer is designed and produced based on the results. This is extended continuously by redesigning the internal primer in a suitable location from the results obtained by the new primer’s reaction with the same template. Walking takes about 4 days, and can be extended about 500 – 800bp in one direction. The results are used for basic molecular biology research, breeding research, and genetic disease research, and it reduces the test time as Primer Design, Synthesis, and Sequencing are performed.
                    </p>
                    <hr class="divider">
                    <p class="sub-title font-h5">
                        Cloning
                    </p>
                    <p class="desc">
                        The cloning service is performed by separating a specific gene or DNA section and duplicating it in large amounts. The service is provided by inserting a PCR product in the vector (T-vector or blunt-vector) provided by Macrogen or via the vector from the customer (sub-cloning). For various reasons, more than one PCR product can be present; in this case, it is not possible to obtain normal sequencing results, but the situation can be improved by cloning, and a large amount of DNA can be duplicated and safely stored.
                    </p>
                    <div class="btn-area">
                        <a href="mailto:sequencing@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveCesQuotation.do?menuCd=QUO100" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(2)">
                                    <div class="title">Fragment</div>
                                </a>
                                <a href="#" class="item next" onclick="setTabContent(4)">
                                    <div class="title">Human ID</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Human ID-->
                <div class="info-box">
                    <p class="font-h4 main-title">Human ID</p>
                    <p class="subject">Human ID provides a personal genetic identification service for research and development purposes.</p>
                    <p class="desc img_bottom">The service provides a parentage test that can determine a biological relationship by comparing and analyzing an individual's unique DNA pattern, paternity test that can prove a biological relationship on the father's side up to the first cousin four times removed, and a maternity test that proves a biological relationship on the mother's side. It also provides a DNA test for the deceased and personal identification tests. Human ID conducts genetic analysis on various specimens such as hair, oral epithelial cells, ashes, and saliva, and provides reliable test results with 99.99% accuracy.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-ces-human.png" alt="Human ID">
                    </div>
                    <div class="list-area">
                        <p class="font-h8 title">Test Purposes</p>
                        <ul class="list-circle-dot">
                            <li>Proof of lineal descendants/paternity/maternity</li>
                            <li>Personal identification</li>
                            <li>Mutagenesis service available</li>
                            <li>Proof of biological relationship using the DNA of the remains of the deceased</li>
                            <li>Genetic identification for the suspect and the evidence of the crime scene</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="list">
                            <p class="title font-h5">Parentage Test</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img-ces-test1.png" alt="친자확인검사">
                                </div>
                                <p class="desc">16 STR (Short Tandem Repeat) genes including sex-chromosomes are tested through gene amplification to determine a biological relationship. STR refers to a section in which 2 to 7 bases in the human DNA sequence are continuously repeated. The number of repetitions of the ATG sequence can be checked to prove a biological relationship on the father's side. By examining 16 STR genetic locus, if the test probability of a possible father, mother, and child is 99.999% or higher, and the test probability of a possible father (or mother) and child is 99.9% or higher, they are recognized as the biological father (or mother).</p>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">Paternity Test</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img-ces-test2.png" alt="부계확인검사">
                                </div>
                                <p class="desc">For sex chromosomes, males have XY and females have XX. The Y chromosome exists only in males, and the Y chromosome received from the father is passed on only to the son. Therefore, when compared to the parent's DNA, the half matches the father and the other halfm atches the mother. The paternity test examines 15 STR genetic loci present on the Y chromosome, and when the probability is 99.9% or more, the person can be considered as the child. </p>
                            </div>

                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">Maternity Test</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img-ces-test3.png" alt="모계확인검사">
                                </div>
                                <p class="desc">Human cells contain a small amount of mitochondrial DNA outside the nucleus along with the DNA present in the nucleus. During cell fertilization, the sperm transfers only the DNA in the nucleus to the egg. As a result, mitochondrial DNA cannot enter the fertilized egg. Consequently, mitochondrial DNA is inherited from the mother. The mother's mitochondrial DNA is passed on to her son and her daughter, who in turn passes on her own mitochondrial DNA to her offspring and thus, this is used to study the human origin of the child.
                                </p>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">Personal Identity Test</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img-ces-test4.png" alt="개인식별검사">
                                </div>
                                <p class="desc">Personal identification testing or DNA profiling is used as a genetic testing method in criminal investigations. Human ID analyzes 16 STR loci based on the international standardized analysis technique (CODIS locus used by the FBI) and conducts personal identity tests. STR (Short Tandem Repeat) refers to a section in which 2 to 7 bases are continuously repeated in a human DNA sequence. This analytical technique is similar to inheriting a blood type from their parent.
                                    <br><br>
                                    For instance, if the parents have type A and type B blood, type AB blood can result in the child. Likewise, if one's DNA profile is examined, it is expressed that the number of repetitions of the nucleotide sequence inherited from the parent is 11 and 13 (11/13), respectively. At least 15 of them are analyzed to determine if they are the same person.</p></div>
                        </div>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:sequencing@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                    </div>
                    <hr class="divider">


                    <!--09.28 mar-179 네비게이션 수정-->
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(3)">
                                    <div class="title">Customized Sequencing</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->


</body>
