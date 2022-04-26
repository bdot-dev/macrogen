<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/ngs-bg.png);">
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
            <div class="font-h1">CES</div>
            <div class="font-body-h">Capillary Electrophoresis Sequencing</div>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <div class="subject-box">
                <p class="title font-h4">We provide a superior quality of CES (Capillary Electrophoresis Sequencing)
                    services, based on extensive experience and expertise accumulated over 20 years</p>
                <p class="subject font-body-h img_bottom">Capillary Electrophoresis Sequencing (CES) is a service that
                    analyzes DNA sequences using a biochemical method.</p>
                <div class="img">
                    <img src="/publishing/mobile-en/dist/img/business/img-ces-intro.png" alt="cesintro">
                </div>
                <p class="desc font-body">Our service maximizes customer satisfaction through a variety of product lines
                    ranging from the most common services such as Standard Sequencing, Identification, Fragment
                    Analysis, and Customized Sequencing Service, which is a renewed service from the original
                    sequencing. Aside from general sequencing services, Macrogen’s CES service provides additional
                    customized services (gDNA extraction, primer synthesis, PCR amplification, and purification)
                    according to customer requests. A separate online order system is also available for customers’
                    convenience so that they can request a desired service. Monitoring of all processes and follow-up
                    for the results are provided for each ordered sample.</p>
            </div>
            <!--ces 공통 e -->

            <!--ces 탭 네비 s-->
            <div class="select-nav-box _content-anchor" id="tab_anchor">
                <p class="title font-h4">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">Standard Sequencing</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Standard Sequencing</a></li>
                        <li class="option-value"><a href="#">Identification</a></li>
                        <li class="option-value"><a href="#">Fragment</a></li>
                        <li class="option-value"><a href="#">Customized Sequencing</a></li>
                        <li class="option-value"><a href="#">Human ID</a></li>
                    </ul>
                </div>
            </div>
            <!--ces 탭 네비 e-->

            <div class="info-box-wrap tab-content">
                <!--Standard Sequencing-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Standard Sequencing</p>
                    <p class="subject font-body-h-b">Standard sequencing is a service that sequences PCR products and
                        plasmid DNA requested by customers.</p>
                    <p class="desc img_bottom font-body">Macrogen provides quicker and more accurate services based on
                        its Capillary Electrophoresis Sequencing (CES) automation system and extensive experience.<br>
                        After the results are delivered, a team of experts in the sequencing field are ready to provide
                        the follow-up service.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-ces-standard.png" alt="Standard Sequencing">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>ABI 3730xl System</p></li>
                                <li><p>High quality results 및 Normal read length (1,050bp)</p></li>
                                <li><p>Real-time monitoring available from order receipt to delivery of the results
                                    based on Laboratory Information Management System (LIMS)</p></li>
                                <li><p>Results provided within 24 hours after the submission of the sample (to be
                                    submitted before 6:00pm)</p></li>
                                <li><p>Free basic analysis service (homology search using BlastN and DNA sequence
                                    orders)</p></li>
                                <li><p>Free universal primer</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">Standard Sequencing Single/Plate</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('standard')"><a href="#">Standard Sequencing Single/Plate</a></li>
                            <li class="anchor-value" onclick="TitleMove('difficult')"><a href="#">Difficult Template Sequencing</a></li>
                        </ul>
                    </div>
                    <!--v.0.11 mo-ko 싱크(section-anchor 추가)-->
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="standard">Standard Sequencing Single/Plate</p>
                        <p class="desc font-body list_bottom">Standard sequencing can be performed with single tubes and
                            96-well plates.</p>
                        <div class="list-area-group">
                            <div class="list-area">
                                <p class="font-body-h-b title">Sequencing Platform</p>
                                <ul class="list-circle-dot">
                                    <li><p>Samples are prepared in individual tubes upon request</p></li>
                                    <li><p>Free re-sequencing service</p></li>
                                </ul>
                            </div>
                            <div class="list-area">
                                <p class="font-body-h-b title">Additional Service</p>
                                <ul class="list-circle-dot">
                                    <li><p>PCR product purification (both single/plate available)</p></li>
                                    <li><p>Gel extraction</p></li>
                                    <li><p>Clones sampling & plasmid extraction (Single/Plate/Agar plate)</p></li>
                                    <li><p>BAC/Fosmid/Cosmid extraction</p></li>
                                    <li><p>Confirmation of concentration by gel running</p></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr class="divider">
                    <!--v.0.11 mo-ko 싱크(section-anchor 추가)-->
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="difficult">Difficult Template Sequencing</p>
                        <p class="desc font-body list_bottom">Difficult template sequencing is a service for sequencing
                            templates that have an unusual structure based on the customer’s information after
                            confirming
                            the standard sequencing results. In particular, it is suitable for templates with the
                            following specific structure, and provides improved high-quality results.</p>
                        <div class="list-area img_bottom">
                            <ul class="list-circle-dot">
                                <li><p>Hairpin siRNA</p></li>
                                <li><p>Unusual secondary structure</p></li>
                                <li><p>G-rich</p></li>
                                <li><p>Homopolymeric tracts(PolyG)</p></li>
                                <li><p>GT-Repetitive regions</p></li>
                            </ul>
                        </div>
                        <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img_sequencingchart.png"
                                     alt="Difficult Template Sequencing">
                                <span class="btnZoom-1"><i class="icon ico-zoom-white"></i></span>
                            </div>

                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:sequencing@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveCesQuotation.do?menuCd=QUO100"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a>
                        </div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank"
                                                    class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Identification-->
                <div class="info-box">
                    <p class="font-h4 main-title">Identification</p>
                    <p class="subject font-body-h-b">This is a package service that provides universally used
                        microorganism/biological species identification test from prep to analysis.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-ces-identification.png" alt="Identification">
                    </div>
                    <hr class="divider">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">16S/18S/26S rRNA&ITS Region Full Sequencing</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('rrna')"><a href="#">16S/18S/26S rRNA&ITS Region Full Sequencing</a></li>
                            <li class="anchor-value" onclick="TitleMove('rapidID')"><a href="#">Rapid-ID</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->

                    <!--v.0.11 mo-ko 싱크(section-anchor 추가)-->
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="rrna">16S/18S/26S rRNA&#38;ITS Region Full Sequencing</p>
                        <p class="desc list_bottom font-body">This service identifies bacteria by performing PCR using
                            16S
                            rRNA gene 27F and 1492R primer and sequencing them with inter-primers, 785F and 907R. We
                            provide
                            a base sequence of about 1,350bp or more by selecting/changing the primer if requested by
                            the
                            client.</p>
                        <div class="list-area-group">
                            <div class="list-area">
                                <p class="font-body-h-b title">Bacteria+</p>
                                <p class="desc font-body">For bacteria, PCR of 16S rRNA genes is performed using 27F and
                                    1492R primers, and it is sequenced using 785F and 907R primers, which are the
                                    inter-primers, for identification.<br>
                                    We provide a base sequence of about 1,350 bp or more by selecting/changing the
                                    primer if
                                    requested by the client.</p>
                            </div>
                            <div class="list-area">
                                <p class="font-body-h-b title">Fungi</p>
                                <p class="desc font-body">1,600bp or higher results are guaranteed by the sequencing of
                                    the
                                    18S rRNA region. 500bp or higher, as well as 1,300bp or higher results can be
                                    obtained
                                    by the sequencing<br>
                                    of the ITS region and 26S rRNA gene (D1/D2/D3 region), respectively.</p>
                            </div>
                        </div>
                    </div>
                    <hr class="divider">

                    <!--v.0.11 mo-ko 싱크(section-anchor 추가)-->
                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="rapidID">Rapid-ID</p>
                        <p class="desc list_bottom font-body">This is a microbial mass spectrometry identification
                            service
                            based on the MALDI-TOF protein sequencing technique and uses the world's first FDA clearance
                            and
                            AOAC-certified system. It takes less time than the existing sequencing service and is
                            suitable
                            for clients who want more accurate identification. It identifies microorganisms and
                            classifies
                            species or genus. Because of its accuracy and immediate results, it is mainly used for
                            microbial
                            identification and contamination detection in many medical, pharmaceutical and cosmetic
                            manufacturing industries. We provide reliable service, earning the first FDA clearance and
                            the
                            validation from AOAC, an American certification body.</p>
                        <div class="list-area">
                            <p class="title font-body-h-b">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>Delivered at 10:00 a.m. the next day (only for orders received before 1:00 p.m.
                                    on
                                    the same day)</p></li>
                                <li><p>Different rates by optional service types (TAT 0, 1, 3) and each type</p></li>
                                <li><p>Align Peaks with unique Adaptive Binning technique</p></li>
                                <li><p>First FDA Clearance for microbiological identification accuracy and AOAC
                                    Validation
                                    (US)</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:sequencing@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveCesQuotation.do?menuCd=QUO100"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank"
                                                    class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Fragment-->
                <div class="info-box">
                    <p class="main-title font-h4">Fragment</p>
                    <!--v0.6 html 오탈자 수정 (주석제거예정)-->
                    <p class="subject font-body-h-b">The fragment analysis service includes various services such as
                        genotyping, DNA profiling, medical mutation detection, and agricultural research.
                        Macrogen provides a microsatellite analysis (VNTRs) service based on our extensive experience
                        and know-how.
                    </p>
                    <div class="img">
                        <!--10.05 이미지 경로 변경-->
                        <img src="/publishing/mobile-en/dist/img/business/img-ces-fragment.png" alt="Fragment">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Fragment analysis (Genescan)</p>
                    <p class="desc list_bottom font-body">Fragment analysis is a service that separates and analyzes
                        amplified PCR products according to fragments using a primer marked by a fluorescent label.
                        It is used for genotyping, DNA profiling, medical mutation detection, and agricultural research.
                        We also provide test design service from PCR optimization to analysis upon request.
                    </p>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Service types</p>
                            <ul class="list-circle-dot">
                                <li><p>Microsatellite instability</p></li>
                                <li><p>Amplified fragment length polymorphism (AFLP) analysis</p></li>
                                <li><p>Terminal restriction fragment length polymorphism (T-RFLP) analysis</p></li>
                                <li><p>Relative fluorescent quantization - Loss of heterozygosity (LOH), Aneuploidy
                                    assays, and Large chromosomal deletion detection</p></li>
                                <li><p>Sequence-related amplified polymorphism (SRAP)</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>The result data is provided in FSA file format (PDF/Excel also available)</p>
                                </li>
                                <li><p>The results are delivered within 3 to 7 business days after the collection of the
                                    samples.</p></li>
                                <li><p>Customized service from PCR optimization to fragment analysis is available</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:sequencing@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveCesQuotation.do?menuCd=QUO100"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank"
                                                    class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(3)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Customized Sequencing-->
                <div class="info-box">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">PCR Optimization/Amplification</span>
                        </div>
                        <!--v 0.11 mo-ko랑 싱크 맞춤 (줄바꿈이슈)-->
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('ancher1')"><a href="#">PCR Optimization/Amplification</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher2')"><a href="#">Pyrosequencing</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher3')"><a href="#">NGS Validation</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher4')"><a href="#">MLST analysis</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher5')"><a href="#">One-click Sanger Sequencing</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher10')"><a href="#">Primer Walking</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher11')"><a href="#">Cloning</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <p class="main-title font-h4">Customized Sequencing</p>
                    <p class="subject font-body-h-b">Customized Sequencing provides sanger sequencing tests, prep, PCR,
                        cloning, and pyrosequencing under the same conditions.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-ces-customized.png" alt="Customized Sequencing">
                    </div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor">
                        <!--v0.11 오탈자수정-->
                        <p class="font-h5 sub-title" id="ancher1">PCR Optimization/Amplification</p>
                        <p class="desc list_bottom font-body">PCR optimization is a customized service that performs and
                            analyzes the entire process from primer design to PCR amplification, sequencing, and BI
                            report
                            when the customer provides references together with cell/gDNA in relation to the desired
                            target
                            region. If the retest rate is high due to the rarity of the sample in PCR amplification,
                            touchdown PCR amplification, nested PCR amplification and FFPE PCR amplification, then
                            Macrogen
                            solves the problem by using its customized PCR amplification service.</p>
                        <div class="list-area">
                            <p class="title font-body-h-b">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>Customized service</p></li>
                                <li><p>Pre-tests for high-quality results</p></li>
                                <li><p>Accurate and quick delivery and control of results by dedicated teams</p></li>
                                <li><p>gDNA extraction from samples of plants and animals</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor"><p class="font-h5 sub-title" id="ancher2">Pyrosequencing</p>
                        <p class="desc list_bottom font-body">Pyrosequencing is a sequencing service using pyrophosphate
                            (PPi) generated when the polymerization of nucleotide with DNA occurs.
                            Since there are more epigenetics studies on controlling the expression level of certain
                            genes,
                            regardless of DNA sequence, there is a growing interest in DNA
                            methylation services. For DNA methylation analysis, very accurate and reliable results can
                            be
                            expected by using the pyrosequencing service. Pyrosequencing is
                            used for epigenetics and cancer research efforts, and it can be validated based on the
                            results
                            of the NGS service provided by Macrogen, making it easy for clients to
                            increase the accuracy of the results.</p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>Methylation studies</p></li>
                                <li><p>SNP & InDel analysis</p></li>
                                <li><p>Used for cancer studies</p>
                                    <ul class="list-hypen">
                                        <li>- 5% or lower allele frequencies can be found</li>
                                        <li>- Suitable for somatic mutation analysis</li>
                                        <li>- Di-, tri-, tetra allelic mutation analysis is available<</li>
                                    </ul>
                                </li>
                                <li><p>Validation based on NGS results</p>
                                    <ul class="list-hypen">
                                        <li>- Biomarker verification</li>
                                        <li>- Validation &#38; verification of GWAS &#38; NGS data</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor"><p class="font-h5 sub-title" id="ancher3">NGS Validation</p>
                        <p class="desc list_bottom font-body">
                            NGS Next Generation Sequencing (NGS) validation is a service that verifies data using Sanger
                            sequencing to improve the accuracy and reliability of data
                            after using the NGS service. When the client provides the chromosome position or reference
                            sequence, we analyze the SNP of a certain area and the mutation results.
                            It can be provided as one-stop service in line with the NGS service.
                        </p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>Quicker and more accurate tests for clients using Macrogen’s NGS service, thanks
                                    to
                                    direct transfer of the samples.</p></li>
                                <li><p>When the chromosome position and reference sequence are verified, one-stop
                                    service is
                                    available from overall primer design to verification of sequencing results and
                                    comparative analysis of variants.</p></li>
                                <li><p>Normal control data can be checked for comparison for more accurate results if
                                    necessary.</p></li>
                                <li><p>Data can be checked using two primer sets for the same site.</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor"><p class="font-h5 sub-title" id="ancher4">MLST analysis</p>
                        <p class="desc font-body img_bottom">MLST (Multilocus Sequence Typing) is a technique used to
                            classify strains with the same species such as bacteria and fungi. Sequencing is performed
                            on
                            five to seven specific housekeeping genes of species to analyze the correlation of each ST
                            (Sequence Type). Genetic/molecular evolutionary relations can then be verified by the
                            combination of alleles for each strain in the same species.</p>
                        <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img_mslt.png" alt="MLST 분석">
                                <span class="btnZoom-2"><i class="icon ico-zoom-white"></i></span>
                            </div>
                        </div>
                    </div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="ancher5">One-click Sanger Sequencing</p>
                        <p class="desc font-body">
                            One-click Sanger sequencing is a technique for analyzing certain commonly studied gene
                            variations with just one click for more convenience and quicker results. Optimized results
                            from
                            gDNA extraction to PCR amplification, sequencing, and SNP analysis are delivered to clients.
                            Our
                            dedicated team of researchers perform sequencing of specific exon areas and provide variant
                            analysis results using a primer set manufactured based on many years of know-how. The
                            sequencing
                            results are widely used in studies and medical fields through genetic analysis of diseases.
                            Based on our extensive experience and accurate reference, we establish an optimum test
                            process
                            for each gene for more precision.
                        </p>
                    </div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="ancher10">Primer Walking</p>
                        <p class="desc font-body">
                            Primer walking is a service that analyzes the sequence of plasmids or PCR products that
                            cannot
                            be read at once by single primer extension. It is generally used to obtain about 2 to 10kb
                            of
                            sequence information. End sequencing is performed with a primer provided or specified by the
                            client, and the internal primer is designed and produced based on the results. This is
                            extended
                            continuously by redesigning the internal primer in a suitable location from the results
                            obtained
                            by the new primer’s reaction with the same template. Walking takes about 4 days, and can be
                            extended about 500 – 800bp in one direction. The results are used for basic molecular
                            biology
                            research, breeding research, and genetic disease research, and it reduces the test time as
                            Primer Design, Synthesis, and Sequencing are performed.
                        </p></div>
                    <hr class="divider">
                    <!--v0.5 id값 추가 (주석제거예정)-->
                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="ancher11">Cloning</p>
                        <p class="desc font-body">
                            The cloning service is performed by separating a specific gene or DNA section and
                            duplicating it
                            in large amounts. The service is provided by inserting a PCR product in the vector (T-vector
                            or
                            blunt-vector) provided by Macrogen or via the vector from the customer (sub-cloning). For
                            various reasons, more than one PCR product can be present; in this case, it is not possible
                            to
                            obtain normal sequencing results, but the situation can be improved by cloning, and a large
                            amount of DNA can be duplicated and safely stored.
                        </p></div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:sequencing@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveCesQuotation.do?menuCd=QUO100"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank"
                                                    class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(2)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(4)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Human ID-->
                <div class="info-box">
                    <p class="font-h4 main-title">Human ID</p>
                    <p class="subject font-body-h-b">Human ID provides a personal genetic identification service for
                        research and development purposes.</p>
                    <p class="desc font-body img_bottom">The service provides a parentage test that can determine a
                        biological relationship by comparing and analyzing an individual's unique DNA pattern, paternity
                        test that can prove a biological relationship on the father's side up to the first cousin four
                        times removed, and a maternity test that proves a biological relationship on the mother's side.
                        It also provides a DNA test for the deceased and personal identification tests. Human ID
                        conducts genetic analysis on various specimens such as hair, oral epithelial cells, ashes, and
                        saliva, and provides reliable test results with 99.99% accuracy.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-ces-human.png" alt="Human ID">
                    </div>
                    <div class="list-area">
                        <p class="font-body-h-b title">Test Purposes</p>
                        <ul class="list-circle-dot">
                            <li><p>Proof of lineal descendants/paternity/maternity</p></li>
                            <li><p>Personal identification</p></li>
                            <li><p>Mutagenesis service available</p></li>
                            <li><p>Proof of biological relationship using the DNA of the remains of the deceased</p></li>
                            <li><p>Genetic identification for the suspect and the evidence of the crime scene</p></li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">Parentage Test</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('ancher6')"><a href="#">Parentage Test</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher7')"><a href="#">Paternity Test</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher8')"><a href="#">Maternity Test</a></li>
                            <li class="anchor-value" onclick="TitleMove('ancher9')"><a href="#">Personal Identity Test</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <div class="list-gallery">
                        <!--v0.11 section-anchor 추가-->
                        <div class="section-anchor">
                            <!--v0.11 .title > .sub-title로 변경-->
                            <div class="list">
                                <p class="sub-title font-h5" id="ancher6">Parentage Test</p>
                                <div class="content">
                                    <div class="img mb-0">
                                        <img src="/publishing/mobile-en/dist/img/business/img-ces-test1.png" alt="친자확인검사">
                                    </div>
                                    <p class="desc font-body">
                                        16 STR (Short Tandem Repeat) genes including sex-chromosomes are tested through
                                        gene
                                        amplification to determine a biological relationship. STR refers to a section in
                                        which 2 to 7 bases in the human DNA sequence are continuously repeated. The
                                        number
                                        of repetitions of the ATG sequence can be checked to prove a biological
                                        relationship
                                        on the father's side. By examining 16 STR genetic locus, if the test probability
                                        of
                                        a possible father, mother, and child is 99.999% or higher, and the test
                                        probability
                                        of a possible father (or mother) and child is 99.9% or higher, they are
                                        recognized
                                        as the biological father (or mother).
                                    </p>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <!--v0.11 section-anchor 추가-->
                        <div class="section-anchor">
                            <div class="list">
                                <!--v0.11 .title > .sub-title로 변경-->
                                <p class="sub-title font-h5" id="ancher7">Paternity Test</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img-ces-test2.png" alt="부계확인검사">
                                    </div>
                                    <p class="desc font-body">For sex chromosomes, males have XY and females have XX.
                                        The Y
                                        chromosome exists only in males, and the Y chromosome received from the father
                                        is
                                        passed on only to the son. Therefore, when compared to the parent's DNA, the
                                        half
                                        matches the father and the other halfm atches the mother. The paternity test
                                        examines 15 STR genetic loci present on the Y chromosome, and when the
                                        probability
                                        is 99.9% or more, the person can be considered as the child. </p>
                                </div>

                            </div>
                        </div>
                        <hr class="divider">
                        <!--v0.11 section-anchor 추가-->
                        <div class="section-anchor">
                            <div class="list">
                                <!--v0.11 .title > .sub-title로 변경-->
                                <p class="sub-title font-h5" id="ancher8">Maternity Test</p>
                                <div class="content">
                                    <div class="img mb-0">
                                        <img src="/publishing/mobile-en/dist/img/business/img-ces-test3.png" alt="모계확인검사">
                                    </div>
                                    <p class="desc font-body">Human cells contain a small amount of mitochondrial DNA
                                        outside the nucleus along with the DNA present in the nucleus. During cell
                                        fertilization, the sperm transfers only the DNA in the nucleus to the egg. As a
                                        result, mitochondrial DNA cannot enter the fertilized egg. Consequently,
                                        mitochondrial DNA is inherited from the mother. The mother's mitochondrial DNA
                                        is
                                        passed on to her son and her daughter, who in turn passes on her own
                                        mitochondrial
                                        DNA to her offspring and thus, this is used to study the human origin of the
                                        child.
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <!--v0.11 section-anchor 추가-->
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="ancher9">Personal Identity Test</p>
                                <div class="content">
                                    <div class="img mb-0">
                                        <img src="/publishing/mobile-en/dist/img/business/img-ces-test4.png" alt="개인식별검사">
                                    </div>
                                    <p class="desc font-body">Personal identification testing or DNA profiling is used
                                        as a
                                        genetic testing method in criminal investigations. Human ID analyzes 16 STR loci
                                        based on the international standardized analysis technique (CODIS locus used by
                                        the
                                        FBI) and conducts personal identity tests. STR (Short Tandem Repeat) refers to a
                                        section in which 2 to 7 bases are continuously repeated in a human DNA sequence.
                                        This analytical technique is similar to inheriting a blood type from their
                                        parent.
                                        For instance, if the parents have type A and type B blood, type AB blood can
                                        result
                                        in the child. Likewise, if one's DNA profile is examined, it is expressed that
                                        the
                                        number of repetitions of the nucleotide sequence inherited from the parent is 11
                                        and
                                        13 (11/13), respectively. At least 15 of them are analyzed to determine if they
                                        are
                                        the same person.</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:sequencing@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(3)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col disabled"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--v0.11 mo-ko랑 싱크 맞춤-->
    <!--비즈니스 스크립트 리펙토링 s-->
<script>
    /*변수*/
    var selectBox = $(".select-box");
    var option = $(".option-value");

    var contentAnchor = $(".content-anchor");
    var anchorOption = $(".anchor-value");
    var anchor = $("._anchor");
    var offset = anchor.offset();
    var infoSectionList = [];


    function onClickSelectBox() {
        // console.log('onClickSelectBox');
        /*드롭다운 클릭시 이벤트*/
        selectBox.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.select-option').slideDown(200).addClass("open");

            }
        });
    }

    function onClickSelectOption() {
        // console.log('onClickSelectOption');
        /*클릭시 탭메뉴 변경*/
        option.on('click', function () {
            $(this).addClass('active').siblings().removeClass('active')
            var idx = $(this).index();
            var $info = $(".info-box-wrap > div");
            $info.addClass('show').siblings().removeClass('show');
            $info.eq(idx).addClass('show').siblings().removeClass('show');
            textChange($(this));
            setInfoSectionList($(this).text())
        })
    }

    function onClickBody() {
        $('body').on('click', function (e) {
            if (selectBox.hasClass('open')) {
                if (!selectBox.has(e.target).length) {
                    selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                }
            }
            if (!selectBox.has(e.target).length) {
                selectBox.removeClass("open").children('.select-option').slideUp(200);
            }
        })
    }

    /*클릭시 텍스트 변경*/
    function textChange(target) {
        var select = target.find('a').text();
        $('._selected-value').find('span').text(select);
    }

    /*이전 다음 이동*/
    function setTabContent(idx) {
        var $Select = $('._select-option li');
        var $Selected = $('._selected-value');
        var $info = $(".info-box-wrap > div");
        var change = $(".option-value");

        console.log(change);
        <!--탭메뉴 클릭시 페이지 변경-->
        $Selected.text($Select.eq(idx).text());
        $info.addClass('show').siblings().removeClass('show');
        $info.eq(idx).addClass('show').siblings().removeClass('show');

        change.eq(idx).addClass('active').siblings().removeClass('active');

        setInfoSectionList($Select.eq(idx).text())
        /*페이지 변경후 상단 이동*/
        fnMove();

    }

    /*탭메뉴 상단으로 이동*/
    function fnMove() {
        var offset = $("._content-anchor").offset();
        $('html, body').animate({scrollTop: offset.top - 95}, 100);
    }

    /*특정위치 show & hide*/
    function fnMousewheel() {
        var lastScroll = 0;
        var listPos = $('.info-box').offset().top;
        $(window).on('scroll', function (e) {
            let offset = $(this).scrollTop();
            console.log(offset);

            if (offset > lastScroll){
                // console.log('down')
                if (offset > listPos) {
                    contentAnchor.show().css({'position': 'fixed','top':'0px'});
                }
                else {
                    contentAnchor.hide();
                }
            } else {
                // console.log('up')
                if (offset > listPos) {
                    contentAnchor.show().css({'position': 'fixed','top':'70px'});
                }
                else {
                    contentAnchor.hide();
                }
            }
            lastScroll = offset;



            /*v0.10 스크립트 변경 s*/

            /*스크롤 변경시 텍스트 변경 및 칼러값 추가 */
            var title;
            for (
                let i = 0; i < infoSectionList.list.length; i++) {
                var item = infoSectionList.list[i]
                var title = item.title
                writeText(title)
                ChangeColor(title)

                if (offset > item.offset) {
                    // console.log(i);
                    title = item.title

                    break
                }
            }
            writeText(title)
            ChangeColor(title)
        });

        /*v0.10 스크립트 변경 e*/
    }


    /**
     * Anchor 글씨 쓰기
     * @param text
     */
    function writeText(text) {
        $('._anchor-value .text').text(text)
    }

    function ChangeColor(title){
        console.log(title);
        $(".anchor-value a").css({
            'color' : '#454545',
            'font-weight' : 'normal'
        });
        $(".anchor-value a:contains(" + title + ")").css({
            'color' : '#2E87EF',
            'font-weight' : 'bold'
        });
    }







    function setInfoSectionList(tit) {

        writeText(tit);

        infoSectionList = {
            title: tit,
            list: [],
        }
        $('.info-box.show').find('.section-anchor').each(function (index) {
            // console.log(i)
            let top = $(this).offset().top - 75;
            // console.log(top);
            let title = $(this).find('.sub-title').text();
            infoSectionList.list.unshift({
                index: index,
                offset: top,
                title: title
            })

        })
        // console.log(infoSectionList);
    }

    /*드롭다운 클릭시 이벤트*/
    function onClickFixedAnchor() {
        contentAnchor.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.anchor-option').slideDown(200).addClass("open");

            }
        });
        $('body').on('click', function (e) {
            if (contentAnchor.hasClass('open')) {
                if (!contentAnchor.has(e.target).length) {
                    contentAnchor.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
                }
            }
        })
        /*클릭시 텍스트 변경*/
        anchorOption.on('click', function () {
            var select = $(this).find('a').text();
            writeText(select)
        });
    }

    /*클릭시 페이지 이동 이동*/
    function TitleMove(target) {
        var id = $('#' + target);
        var offset = id.offset();
        $('html, body').animate({scrollTop: offset.top - 60}, 300);
    }


    function init() {
        onClickSelectBox();
        onClickSelectOption();
        onClickBody();
        onClickFixedAnchor();
        fnMousewheel();
        setInfoSectionList($('._selected-value span').text())
    }

    init()


</script>
<!--비즈니스 스크립트 리펙토링 e-->

    <!--modalImageViewer1 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_sequencingchart.png"
                                              alt="Difficult Template Sequencing"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modal1 = new bootstrap.Modal(document.getElementById('modalImageViewer1'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});


        // modal close
        $('.btn-close').on('click', function () {
            modal1.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-1').on('click', function () {
            modal1.show();
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
    <!--modalImageViewer1 e-->
    <!--modalImageViewer2 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer2" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_mslt.png" alt="Difficult Template Sequencing">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        /*v0.7 getElementById 변경 완료*/
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
    <div class="toast-popup">
        <p>You can enlarge it by clicking on the image.</p>
    </div>

</body>
