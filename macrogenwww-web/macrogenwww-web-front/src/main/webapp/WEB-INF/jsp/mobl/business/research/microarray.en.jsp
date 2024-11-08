<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">	
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
	            <h2 class="font-h1">Microarray</h2>
	            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a>
	            </div>
	        </div>	    
		</div>
		
		<div class="container">
	        <div class="section_business">
	            <!--MICROARRAY s-->
	            <div class="subject-box">
	                <p class="title font-h4">With the only microarray analysis facilities in Korea,
	                    Macrogen offers unprecedented precision and speed.</p>
	                <p class="subject font-body-h img_bottom">This is a service that interprets useful genomic information
	                    using microarrays produced for various types of research.</p>
	                <div class="img">
	                    <img src="/publishing/mobile-en/dist/img/business/img-ces-microarray.png" alt="microarray">
	                </div>
	                <p class="desc font-body">Macrogen provides various gene analysis services using precise DNA microarray
	                    technology. Known by various terms such as DNA chip, biochip, and gene-array, microarray is a
	                    technology that measures the expression pattern of genes and verifies whether there is a mutation by
	                    arranging invisible probes on a chip and reacting DNA, RNA, protein, etc. For microarray analysis,
	                    correct execution of tests and the capacity to correctly select significant genetic information from
	                    test results, as well as the technology to integrate probes at high density and produce them in a
	                    small chip form, are essential.
	                    <br><br>
	                    Macrogen is the only company in Korea that has all the products of Illumina, Affymetrix and Agilent,
	                    which are the main suppliers of microarray products. Based on this equipment, we offer genetic
	                    testing services for research purposes such as mRNA, miRNA, SNP, CGH, and DNA methylation. Based on
	                    extensive test and analysis experience for research customers around the world, Macrogen guarantees
	                    that it will provide only high-quality data results.</p>
	            </div>
	            <!--MICROARRAY e-->
	
	            <!--MICROARRAY 탭 네비 s-->
	            <div class="select-nav-box _content-anchor">
	                <p class="title font-h4" id="tab_anchor">SERVICE</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">Expression Micoarray</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" id="expression" onclick="setTabContent(0)"><a href="#">Expression Micoarray</a></li>
                        <li class="option-value" id="genome" onclick="setTabContent(1)"><a href="#">Genome Microarray</a></li>
                        <li class="option-value" id="epigenome" onclick="setTabContent(2)"><a href="#">Epigenome Microarray</a></li>
	                    </ul>
	                </div>
	
	            </div>
	            <!--MICROARRAY 탭 네비 e-->
	
	            <div class="info-box-wrap tab-content">
	                <!--Expression Microarray-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Expression Microarray</p>
	                    <p class="subject font-body-h-b">This is a technique for analyzing genomes with characteristics for
	                        which the expression level varies, depending on the biological environment.</p>
	
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img-microarray-expression.png" alt="Expression Microarray">
	                    </div>
	
	                    <div class="content-anchor">
	                        <div class="selected-value _anchor-value">
	                            <span class="text">mRNA Expression Microarray</span>
	                        </div>
	                        <ul class="anchor-option">
	                            <!--v0.11 줄바꿈이슈-->
	                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">mRNA Expression Microarray</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">microRNA Expression Microarray</a></li>
	                        </ul>
	                    </div>
	
	                    <hr class="divider">
	
	
	                    <div class="section-anchor">
	                        <p class="font-h5 sub-title" id="target1">mRNA Expression Microarray</p>
	                        <p class="desc list_bottom font-body">mRNA (messenger RNA) is a type of RNA produced when DNA
	                            goes
	                            through transcription. It includes the coding region that contains protein information.
	                            Analysis
	                            of mRNA’s expression pattern is crucial to finding the gene that carries out the main
	                            function
	                            in a certain environment and the gene’s pathway. With an mRNA expression microarray, the
	                            level
	                            of the whole gene expression can be analyzed. Even when genetic information whose expression
	                            changes according to changes in the biological environment needs to be checked, our
	                            microarray
	                            screening can provide results quickly.</p>
	                        <div class="list-area-group">
	                            <div class="list-area">
	                                <p class="font-body-h-b title figure_bottom">mRNA Expression Microarray Platforms</p>
	                                <div class="table-scroll">
	                                    <table class="table">
	                                        <colgroup>
	                                            <col style="width:33.3333%;">
	                                            <col style="width:33.3333%;">
	                                            <col style="width:33.3333%;">
	                                        </colgroup>
	                                        <thead>
	                                        <tr>
	                                            <th>Manufacturer</th>
	                                            <th>Specimen</th>
	                                            <th>Platform</th>
	                                        </tr>
	
	                                        </thead>
	                                        <tbody>
	                                        <tr>
	                                            <td>Agilent</td>
	                                            <td class="text-start" rowspan="3">- Human<br>
	                                                - Mouse<br>
	                                                - Rat<br>
	                                                - Model Org/Non-Human
	                                            </td>
	                                            <!--v0.7 오탈자수정-->
	                                            <td class="text-start">- SurePrint G3 Gene Expression<br>
	                                                - SurePrint G3 Exon<br>
	                                                - Customization<br>
	                                                - etc
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td>Affymetrix</td>
	                                            <!--v0.7 오탈자수정-->
	                                            <td class="text-start">- Gene ST (Whole Transcript)<br>
	                                                - GenomeArray (3'IVT)<br>
	                                                - etc
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td>Life Technologies</td>
	                                            <td class="text-start">- Taqman mRNA Expression<br>
	                                                - Openarray Customization
	                                            </td>
	                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                            <div class="list-area">
	                                <p class="font-body-h-b title figure_bottom">Analysis</p>
	                                <div class="table-scroll">
	                                    <table class="table">
	                                        <colgroup>
	                                            <col style="width:calc(100% - 66.7202%);">
	                                            <col style="width:66.7202%;">
	                                        </colgroup>
	                                        <thead>
	                                        <tr>
	                                            <th>Areas of Analysis</th>
	                                            <th>Description</th>
	                                        </tr>
	                                        </thead>
	                                        <tbody>
	                                        <tr>
	                                            <td rowspan="4">Data analysis of DE</td>
	                                            <td class="text-start">Basic statistics(Fold change, group mean, sd etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Identifying differentially expressed genes(T-test,
	                                                LPE
	                                                test, ANOVA etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Multiple testing correction (FDR, Bonferroni etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Clustering Analysis for DEG ( Hierarchical
	                                                clustering,
	                                                K-means etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td rowspan="2">Functional analysis</td>
	                                            <td class="text-start">KEGG pathway, GeneOntologyannotation(DAVID,
	                                                goProfiles,
	                                                GOstats etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">GeneSet Enrichment Analysis</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Customized analysis</td>
	                                            <td class="text-start">Integrative analysis (mRNA-miRNA, methylation~mRNA,
	                                                mRNA-CNV etc.)
	                                            </td>
	                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="section-anchor"><p class="font-h5 sub-title list-area-group-top" id="target2">microRNA Expression Microarray</p>
	                        <p class="desc font-body list_bottom">This is an analytical technique that can quickly screen
	                            information about various microRNA that control gene expression during the translation
	                            process.
	                            microRNA is a single-sequence small RNA composed of 21 – 25 nucleotides. microRNA controls
	                            gene
	                            expression by interrupting mRNA’s function of forming protein via the translation process.
	                            Study
	                            of microRNA can broaden understanding of RNA silencing. The miRNA Expression Microarray can
	                            be
	                            used to analyze the whole miRNAs from various organisms. In addition to miRNA analysis in
	                            cells
	                            or tissues, interest is recently growing in exosome samples for the study of the role of
	                            miRNA
	                            in inter-cell interactions. Macrogen provides reliable results based on its experience in
	                            exosomalRNA miRNA analysis.</p>
	                        <div class="list-area-group">
	                            <div class="list-area">
	                                <p class="font-body-h-b title figure_bottom">miRNA Expression Microarray Platforms</p>
	                                <div class="table-scroll">
	                                    <table class="table">
	                                        <colgroup>
	                                            <col style="width:33.3333%;">
	                                            <col style="width:33.3333%;">
	                                            <col style="width:33.3333%;">
	                                        </colgroup>
	                                        <thead>
	                                        <tr>
	                                            <th>Manufacturer</th>
	                                            <th>Specimen</th>
	                                            <th>Platform</th>
	                                        </tr>
	
	                                        </thead>
	                                        <tbody>
	                                        <tr>
	                                            <td>Agilent</td>
	                                            <td class="text-start" rowspan="3">- Human<br>
	                                                - Mouse<br>
	                                                - Rat<br>
	                                                - Model Org/Non-Human
	                                            </td>
	                                            <td class="text-start">- SurePrint G3 miRNA Expression<br>- Customization
	                                        </tr>
	                                        <tr>
	                                            <td>Affymetrix</td>
	                                            <td class="text-start">- miRNA 4.0 (203 specimens)
	                                        </tr>
	                                        <tr>
	                                            <td>Life Technologies</td>
	                                            <td class="text-start">- Taqman miRNA Expression</td>
	                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                            <div class="list-area">
	                                <p class="font-body-h-b title figure_bottom">Analysis</p>
	                                <div class="table-scroll">
	                                    <table class="table">
	                                        <colgroup>
	                                            <col style="width:calc(100% - 66.7202%);">
	                                            <col style="width:66.7202%;">
	                                        </colgroup>
	                                        <thead>
	                                        <tr>
	                                            <th>Areas of Analysis</th>
	                                            <th>Description</th>
	                                        </tr>
	                                        </thead>
	                                        <tbody>
	                                        <tr>
	                                            <td rowspan="4">Data analysis of DE</td>
	                                            <td class="text-start">Basic statistics(Fold change, group mean, sd etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Identifying differentially expressed genes(T-test,
	                                                LPE
	                                                test, ANOVA etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Multiple testing correction (FDR, Bonferroni etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Clustering Analysis for DEG ( Hierarchical
	                                                clustering,
	                                                K-means etc.)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td rowspan="2">Customized analysis</td>
	                                            <td class="text-start">Target gene prediction</td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Integrative analysis (mRNA-miRNA)</td>
	                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="btn-area">
	                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO500"
	                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
	                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" target="_blank"
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
	
	                <!--Genome Microarray-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Genome Microarray</p>
	                    <p class="subject font-body-h-b">This is a technique to analyze DNA sequence variants or structural
	                        changes.</p>
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img-microarray-genome.png" alt="Genome Microarray">
	                    </div>
	                    <hr class="divider">
	                    <div class="content-anchor">
	                        <div class="selected-value _anchor-value">
	                            <span class="text">SNP Genotyping Microarray</span>
	                        </div>
	                        <ul class="anchor-option">
	                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">SNP Genotyping Microarray</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">CGH Microarray</a></li>
	                        </ul>
	                    </div>
	
	                    <div class="section-anchor">
	                        <p class="font-h5 sub-title" id="target3">SNP Genotyping Microarray</p>
	                        <p class="desc list_bottom font-body">For the human genome composed of about 3 billion pairs of
	                            bases, most DNA sequences of individuals match, but about 0.1% is SNP (Single Nucleotide
	                            Polymorphism), which is where the differences lie. Such SNP causes genetic diversity of an
	                            individual and the difference of sensitivity to different diseases. With the SNP Genotyping
	                            Microarray, millions of SNPs can be analyzed simultaneously. Macrogen has the largest SNP
	                            chip
	                            data automation production facilities in Korea and provides accurate results by applying
	                            strict
	                            data quality control processes.</p>
	                        <div class="list-area-group">
	                            <div class="list-area">
	                                <p class="font-body-h-b title figure_bottom">SNP Genotyping Microarray Platforms</p>
	                                <div class="table-scroll">
	                                    <table class="table">
	                                        <colgroup>
	                                            <col style="width:17%;">
	                                            <col style="width:17%;">
	                                            <col style="width:17%;">
	                                            <col style="width:32%;">
	                                            <col style="width:17%;">
	                                        </colgroup>
	                                        <thead>
	                                        <tr>
	                                            <th>Manufacturer</th>
	                                            <th>Specimen</th>
	                                            <th>Classification</th>
	                                            <th>Platform</th>
	                                            <th>SNP contents</th>
	                                        </tr>
	                                        </thead>
	                                        <tbody>
	                                        <tr>
	                                            <td rowspan="16">Illumina</td>
	                                            <td rowspan="16" class="text-start table-bg">-Model Org.<br>-Non-Human</td>
	                                            <td rowspan="10">Genome Wide<br>SNP Array</td>
	                                            <td>Infinium Omni5Exome-4</td>
	                                            <td>4.5M</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium Omni5-4</td>
	                                            <td>4.3M</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium Omni2.5Exome-8</td>
	                                            <td>2.7M</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium Omni2.5-8</td>
	                                            <td>2.5M</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium OmniExpressExome-8</td>
	                                            <td>950K</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium OmniExpress-24</td>
	                                            <td>715K</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium CoreExome-24</td>
	                                            <td>540K</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium Core-24</td>
	                                            <td>300K</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium GlobalScreeningArray</td>
	                                            <td>660K</td>
	                                        </tr>
	                                        <tr>
	                                            <td colspan="2">ETC</td>
	                                        </tr>
	                                        <tr>
	                                            <td rowspan="6">Targeted Array</td>
	                                            <td>Infinium QC Array-24</td>
	                                            <td>16K</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium Exome-24</td>
	                                            <td>250K</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium OncoArray-500K</td>
	                                            <td>500K</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium ImmunoArray-24</td>
	                                            <td>250K</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Infinium PsychArray-24</td>
	                                            <td>590K</td>
	                                        </tr>
	                                        <tr>
	                                            <td colspan="2">ETC</td>
	                                        </tr>
	                                        <tr>
	                                            <td rowspan="2">Life Technologies</td>
	                                            <td class="text-start table-bg" rowspan="2">
	                                                - Pre-designed probes<br>
	                                                - Customized probes
	                                            </td>
	                                            <td rowspan="2">-</td>
	                                            <td>Openarray Customization</td>
	                                            <td>up to 240 SNPs</td>
	                                        </tr>
	                                        <tr>
	                                            <td colspan="2">Taqman genotyping</td>
	                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                            <div class="list-area">
	                                <p class="font-body-h-b title figure_bottom">Analysis</p>
	                                <div class="table-scroll">
	                                    <table class="table">
	                                        <colgroup>
	                                            <col style="width:calc(100% - 66.7202%);">
	                                            <col style="width:66.7202%;">
	                                        </colgroup>
	                                        <thead>
	                                        <tr>
	                                            <!--v0.7 오탈자수정-->
	                                            <th>Areas of Analysis</th>
	                                            <th>Description</th>
	                                        </tr>
	                                        </thead>
	                                        <tbody>
	                                        <tr>
	                                            <td rowspan="3">SNP analysis</td>
	                                            <td class="text-start">SNP analysis</td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Single Based Association Study (PLINK, R)</td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">Gene Based Association Study (SKAT, Score-Seqetc)
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td rowspan="3">Functional analysis</td>
	                                            <td class="text-start">CNV segments Data (cnvPartition)</td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">CNVR define</td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">DGV mapping</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Customized analysis</td>
	                                            <td class="text-start">Additional plotting, annotation, etc</td>
	                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <!--v0.11 mo-ko 싱크 section-anchor (main-title -> sub-title로 변경) -->
	                    <div class="section-anchor">
	                        <p class="font-h5 sub-title" id="target4">CGH Microarray</p>
	                        <p class="desc list_bottom font-body">mRNA (messenger RNA) is a type of RNA produced when DNA
	                            goes
	                            through transcription. It includes the coding region that contains protein information.
	                            Analysis
	                            of mRNA’s expression pattern is crucial to finding the gene that carries out the main
	                            function
	                            in a certain environment and the gene’s pathway. With an mRNA expression microarray, the
	                            level
	                            of the whole gene expression can be analyzed. Even when genetic information whose expression
	                            changes according to changes in the biological environment needs to be checked, our
	                            microarray
	                            screening can provide results quickly.</p>
	                        <div class="list-area-group">
	                            <div class="list-area">
	                                <p class="font-body-h-b title figure_bottom">CGH Microarray Platforms </p>
	                                <p class="sub-list-title font-body-h-b">Agilent CGH</p>
	                                <ul class="list-circle-dot table_bottom font-body">
	                                    <!--v0.5 텍스트변경 추가 (주석제거예정)-->
	                                    <li><p>High resolution (60 mer) & sensitivity CGH/CNV chips are provided</p></li>
	                                    <li><p>CGH/CNV chips related to organisms other than human are provided and can be
	                                        customized</p></li>
	                                    <li><p>CGH test using FFPE samples available</p></li>
	                                </ul>
	                                <div class="table-scroll">
	                                    <table class="table">
	                                        <colgroup>
	                                            <col style="width:30%;">
	                                            <col style="width:30%;">
	                                            <col style="width:40%;">
	                                        </colgroup>
	                                        <thead>
	                                        <tr>
	                                            <!--v0.5 텍스트변경 추가 (주석제거예정)-->
	                                            <th>Product</th>
	                                            <th>No. of Probes</th>
	                                            <th>Average marker spacing</th>
	                                        </tr>
	                                        </thead>
	                                        <tbody>
	                                        <tr>
	                                            <td>Human CGH 1x1M</td>
	                                            <td>1M</td>
	                                            <td>3,118 base</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Human CGH 2x400K</td>
	                                            <td>400K</td>
	                                            <td>7,304 base</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Human CGH 4x180K</td>
	                                            <td>180K</td>
	                                            <td>17,627 base</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Human CGH 8x60K</td>
	                                            <td>60K</td>
	                                            <td>54,455 base</td>
	                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                            <div class="list-area">
	                                <p class="font-body-h-b title figure_bottom">Analysis</p>
	                                <div class="table-scroll">
	                                    <table class="table">
	                                        <colgroup>
	                                            <col style="width:calc(100% - 66.7202%);">
	                                            <col style="width:66.7202%;">
	                                        </colgroup>
	                                        <thead>
	                                        <!--v0.5 텍스트변경 추가 (주석제거예정)-->
	                                        <tr>
	                                            <th>Areas of Analysis</th>
	                                            <th>Description</th>
	                                        </tr>
	                                        </thead>
	                                        <tbody>
	                                        <tr>
	                                            <td rowspan="3">CNV analysis</td>
	                                            <td class="text-start">CNV segments Data (cnvPartition)</td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">CNVR define</td>
	                                        </tr>
	                                        <tr>
	                                            <td class="text-start">DGV mapping</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Customized analysis</td>
	                                            <td class="text-start">Additional plotting, annotation, etc</td>
	                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="btn-area">
	                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO500"
	                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
	                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" target="_blank"
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
	
	                <!--Epigenome Microarray-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Epigenome Microarray</p>
	                    <p class="subject font-body-h-b">This method quantifies and analyzes the level of methylation of
	                        numerous DNA sites at the same time.</p>
	                    <!--10.05 이미지 경로 변경-->
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img-microarray-epigenome.png" alt="EpigenomeMicroarray">
	                    </div>
	                    <hr class="divider">
	                    <p class="font-h4 main-title">DNA Methylation Microarray</p>
	                    <p class="desc font-body list_bottom">DNA methylation is a chemical transformation that controls
	                        gene expression. This phenomenon of methyl generated in cytosine at the CpG site exists around
	                        the promoter region of a gene. If the cause of a disease or phenotype is a change in the methyl
	                        group of a specific CpG site, then statistical analysis between groups can be used to identify
	                        the location of the CpG site within the entire DNA sequence. If methyl affects genes that play
	                        an important role in suppressing a tumor, such as tumor suppressor genes, then it can cause a
	                        fatal result - cancer. Macrogen can correctly identify whether there is genome methylation using
	                        the Illumina microarray and give biological meaning through statistical analysis of the results.
	                        We have the most extensive experience in methylation chip analysis in Korea and provide a
	                        premium service that analyzes correlation based on methylation data and gene expression
	                        data.</p>
	                    <div class="list-area-group">
	                        <div class="list-area">
	                            <p class="font-body-h-b title">DNA Methylation Microarray Platforms</p>
	                            <div class="table-scroll">
	                                <table class="table">
	                                    <colgroup>
	                                        <col style="width:33.3333%;">
	                                        <col style="width:33.3333%;">
	                                        <col style="width:33.3333%;">
	                                    </colgroup>
	                                    <thead>
	                                    <tr>
	                                        <th>Product</th>
	                                        <th>Contents</th>
	                                        <th>Features</th>
	                                    </tr>
	
	                                    </thead>
	                                    <tbody>
	                                    <tr>
	                                        <td>Illumina infinium<br>
	                                            Methylation EPIC Chip
	                                        </td>
	                                        <td>
	                                            >860,000 CpG sites<br>
	                                            (>26,000 genes)
	                                        </td>
	                                        <td>8 FFPE sample tests per chip
	                                        </td>
	                                    </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">Analysis</p>
	                            <div class="table-scroll">
	                                <table class="table">
	                                    <colgroup>
	                                        <col style="width:calc(100% - 66.7202%);">
	                                        <col style="width:66.7202%;">
	                                    </colgroup>
	                                    <thead>
	                                    <tr>
	                                        <th>Areas of Analysis</th>
	                                        <th>Description</th>
	                                    </tr>
	                                    </thead>
	                                    <tbody>
	                                    <tr>
	                                        <td rowspan="4">Data analysis of DE</td>
	                                        <td class="text-start">Basic statistics(delta_mean, group mean, sd etc.)</td>
	                                    </tr>
	                                    <tr>
	                                        <td class="text-start">Identifying differentially methylated CpGs(T-test, ANOVA
	                                            etc.)
	                                        </td>
	                                    </tr>
	                                    <tr>
	                                        <td class="text-start">Multiple testing correction (FDR, Bonferroni etc.)</td>
	                                    </tr>
	                                    <tr>
	                                        <td class="text-start">Clustering Analysis for DM CpGs( Hierarchical clustering,
	                                            K-means etc.)
	                                        </td>
	                                    </tr>
	                                    <tr>
	                                        <td>Functional analysis</td>
	                                        <td class="text-start">KEGG pathway, GeneOntologyannotation(DAVID, goProfiles,
	                                            GOstats etc.)
	                                        </td>
	                                    </tr>
	                                    <tr>
	                                        <td>Customized analysis</td>
	                                        <td class="text-start">Integrative analysis (methylation, etc.)</td>
	                                    </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="btn-area">
	                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO500"
	                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
	                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" target="_blank"
	                                                    class="btn btn-primary"><i
	                                class="icon ico-cart-white"></i><span>Order</span></a></div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span
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
		
    </div>
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
	<!--비즈니스 스크립트 리펙토링 e-->

</body>
