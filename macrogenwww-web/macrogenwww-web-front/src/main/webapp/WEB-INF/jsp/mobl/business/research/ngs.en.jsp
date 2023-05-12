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
	            <div class="font-h1">NGS</div>
	            <div class="font-body-h">Next Generation Sequencing</div>
	            <div class="btn-wrap"><a href="#_tab-box" class="btn-service"><span class="sr-only">SERVICE</span></a>
	            </div>
	        </div>
	    </div>
		
		<div class="container">
	        <div class="section_business">
	            <!--ngs 공통 e -->
	            <div class="subject-box">
	                <p class="title font-h4">Superior NGS service with a high level of precision and speed
	                    based on world-class analytical infrastructure</p>
	                <p class="subject font-body-h img_bottom">NGS (Next Generation Sequencing) is a method for reading a
	                    genome by dividing it into many pieces, assembling the obtained sequence pieces and analyzing the
	                    sequence of the entire genome.</p>
	                <div class="img">
	                    <img src="/publishing/mobile-en/dist/img/business/img-ngs-intro.png" alt="cesintro">
	                </div>
	                <p class="desc font-body">Macrogen is a global leader in precision medicine that is capable of
	                    predicting and diagnosing diseases through NGS information-based R&D and collaboration with medical
	                    institutions, presenting personalized treatment plans according to genetic characteristics.
	                    There has been rapid progress in technologies related to NGS since its commercialization in 2000,
	                    which has produced a large volume of genome information for use in research. Especially since the
	                    cost and time for genome analysis gradually decreased, the demand for genome analysis for living
	                    organisms including humans has rapidly increased and became available to use in various research.
	                    Recently, mostly in the medical field, clinical studies based on NGS are actively conducted and many
	                    studies are in progress to identify genetic variance and the functions of new genes. This is
	                    expected to speed up the realization of precision medicine that can provide treatments optimized for
	                    individual patients based on their genome.
	                    <br><br>
	                    Macrogen produces a large amount of genome information every year using various kinds of equipment,
	                    provides quicker and more accurate genome analysis service at an economical price to assist in
	                    studies conducted by researchers, and offers a diagnostic service to the public. We provide genome
	                    analysis services suitable for research, such as whole genome, exome, transcriptome, epigenome,
	                    metagenome, and single cell multi-omics sequencing and bioinformatics results based on the data.
	                    Offering a total genomic solution to researchers all over the world based on our extensive
	                    experiences and know-how accumulated over the years, Macrogen leads the field of precision medicine
	                    by utilizing NGS technology</p>
	            </div>
	            <!--ngs 공통 e -->
	
	            <!--ngs 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="_tab-box">
	                <p class="title font-h4">SERVICE</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">Whole Genome Sequencing</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" id="genome" onclick="setTabContent(0)"><a href="#">Whole Genome Sequencing</a></li>
	                        <li class="option-value" id="exome"  onclick="setTabContent(1)"><a href="#">Whole Exsome Sequencing</a></li>
	                        <li class="option-value" id="transcriptome"  onclick="setTabContent(2)"><a href="#">Transcriptome Sequencing</a></li>
	                        <li class="option-value" id="epigenome"  onclick="setTabContent(3)"><a href="#">Epigenome Sequencing</a></li>
	                        <li class="option-value" id="metagenome"  onclick="setTabContent(4)"><a href="#">Metagenome Sequencing</a></li>
	                        <!-- <li class="option-value"><a href="#">Single cell Multi-omics analysis</a></li> -->
	                        <!-- <li class="option-value"><a href="#">ATAC analysis</a></li> -->
	                        <!-- <li class="option-value"><a href="#">Spatial Gene Expression analysis</a></li> -->
	                    </ul>
	                </div>
	
	            </div>
	            <!--ngs 탭 네비 e-->
	
	            <!--ngs 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--Genome-->
	                <div class="info-box show">
	                    <!--content-anchor s-->
	                    <div class="content-anchor">
	                        <div class="selected-value _anchor-value">
	                            <span class="text">Whole Genome Resequencing</span>
	                        </div>
	                        <!--v0.11 줄바꿈 이슈-->
	                        <ul class="anchor-option">
	                            <li class="anchor-value" onclick="TitleMove('Resequencing')"><a href="#">Whole Genome Resequencing</a></li>
	                            <li class="anchor-value" onclick="TitleMove('Sequencing')"><a href="#">Whole Genome De novo Sequencing</a></li>
	                        </ul>
	                    </div>
	                    <!--content-anchor e-->
	                    <p class="main-title font-h4">Whole Genome Sequencing</p>
	                    <p class="subject font-body-h-b">Whole Genome Sequencing (WGS) is a procedure for reading the entire
	                        genome and analyzing related genetic information.</p>
	                    <p class="desc font-body img_bottom">Information about mutations obtained through WGS is used for
	                        genetic discovery and personalized medicine research in relation to disease. Currently, we have
	                        more than 18,000 research institutes as clients in 153 countries around the world, as well as
	                        world-class analytical infrastructure, including WGS analysis facilities for more than 300,000
	                        people per year and computing systems that can store up to 30 PB. Based on these resources, we
	                        are opening the door to a new era of genome information-based precision medicine powered by big
	                        data.</p>
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img-ngs-genome.png" alt="Whole Genome Sequencing">
	                    </div>
	                    <hr class="divider">
	                    <div class="section-anchor">
	                        <p class="sub-title font-h5" id="Resequencing">Whole Genome Resequencing</p>
	                        <p class="desc font-body list_bottom">Resequencing is a procedure that allows variation
	                            analysis,
	                            such as SNP (Single Nucleotide Polymorphism), InDel (Insertion & Deletion), CNV (Copy Number
	                            Variation), and SV (Structural Variation) based on reference genomes.</p>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">Sequencing Platform</p>
	                            <ul class="list-circle-dot">
	                                <li><p>HiSeq 2500 / HiSeq 4000 / HiSeq X Ten / NovaSeq 6000</p></li>
	                                <li><p>NextSeq 500</p></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="section-anchor">
	                        <hr class="divider">
	                        <p class="sub-title font-h5" id="Sequencing">Whole Genome De novo Sequencing</p>
	                        <p class="desc font-body list_bottom">This is a procedure that can uncover information about the
	                            entire genome of microorganisms or animals and plants that still isn't known.</p>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">Sequencing Platform</p>
	                            <ul class="list-circle-dot">
	                                <li><p>HiSeq 2500 / HiSeq 4000 / HiSeq X Ten / NovaSeq 6000</p></li>
	                                <li><p>NextSeq 500 / MiSeq</p></li>
	                                <li><p>PacBio Sequel I &#38; Sequel II</p></li>
	                                <li><p>PromethION</p></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="btn-area">
	                        <div class="btn-wrapper"><a href="mailto:ngskr@macrogen.com"
	                                                    class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300"
	                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
	                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank"
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
	                <!--Exome-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Whole Exome Sequencing</p>
	                    <p class="subject font-body-h-b">WES (Whole Exome Sequencing) is a procedure for selective analysis
	                        in an exon area known to be where genes exist.</p>
	                    <p class="desc font-body img_bottom">It is a more effective and economical way of performing
	                        research than whole genome resequencing because it selectively analyzes only the genes
	                        obtained from current studies. It also supports whole exome sequencing using Capture Kit
	                        (Agilent SureSelect Exome Capture kit, Truseq Exome Enrichment Kit,<br>
	                        Twist Human Core Exome Kit) and provides mutation analysis for SNP and InDel.</p>
	                    <!--10.05 이미지 경로 변경-->
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img-ngs-wes.png" alt="Whole Exsome Sequencing">
	                    </div>
	                    <!--09.29 divider 제거-->
	                    <!--<hr class="divider">-->
	                    <div class="list-area-group">
	                        <div class="list-area">
	                            <p class="title font-body-h-b">Main Capture Kit</p>
	                            <ul class="list-circle-dot">
	                                <li><p>Agilent SureSelect Exome Capture kit</p></li>
	                                <li><p>Truseq Exome Enrichment Kit</p></li>
	                                <li><p>Capture the whole exon and provide mutation analysis for SNP and InDel as
	                                    well.</p></li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="title font-body-h-b">Sequencing Platform</p>
	                            <ul class="list-circle-dot">
	                                <li><p>HiSeq 2500 / HiSeq 4000 / HiSeq X Ten / NovaSeq 6000</p></li>
	                                <li><p>NextSeq 500</p></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="btn-area">
	                        <div class="btn-wrapper">
	                            <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300"
	                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
	                        <div class="btn-wrapper">
	                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary">
	                                <i class="icon ico-cart-white"></i>
	                                <span>Order</span></a>
	                        </div>
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
	                <!--Transcriptome-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Transcriptome Sequencing</p>
	                    <p class="subject font-body-h-b">As a technique for analyzing RNA obtained from gene expression, it
	                        allows checking the difference in expression profile and various mutation information between
	                        samples.</p>
	                    <p class="desc font-body img_bottom">As one of the most frequently used techniques conducted with
	                        NGS, it requires a high level of technical skill such as sample preparation, storage, and
	                        processing due to the unstable specificity of RNA.
	                        Based on the expression profile and mutation information between samples, new insights into gene
	                        possible research and expression regulation can be obtained, and it can be applied to biomarker
	                        development, diagnosis, and monitoring of diseases.
	                        Macrogen is equipped with a wide range of library kits, NGS systems, and computing systems to
	                        meet the needs of staff related to transcriptome sequencing, based on years of experience.</p>
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img-ngs-test1.png" alt="TranscriptomeSequencing소개이미지">
	                    </div>
	                    <hr class="divider">
	                    <!--content-anchor s-->
	                    <div class="content-anchor">
	                        <div class="selected-value _anchor-value">
	                            <span class="text">mRNA / Total RNA Sequencing</span>
	                        </div>
	                        <!--v0.11 줄바꿈 이슈-->
	                        <ul class="anchor-option">
	                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">mRNA / Total RNA Sequencing</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">Small RNA Sequencing</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">Isoform Sequencing</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">Exosomal RNA Sequencing</a></li>
	                        </ul>
	                    </div>
	                    <!--content-anchor e-->
	                    <!--v0.11 section-anchor 추가-->
	                    <div class="section-anchor"><p class="sub-title font-h5" id="target1">mRNA / Total RNA Sequencing</p>
	                        <p class="desc font-body data_bottom">
	                            The exact data value can be known through the mRNA expression value identified based on the
	                            read. It can be used for research such as novel transcriptome,
	                            fusion gene, alternative splicing, and mutation information as well as inter-gene expression
	                            profiles. Recently, studies on gene expression
	                            at the single cell level is also being actively carried out.
	                        </p>
	                        <p class="_sub-title figure_bottom font-body-h-b">Library Construction Kit</p>
	                        <div class="list-area-border">
	                            <div class="list">
	                                <div class="accordion-container">
	                                    <div class="accordion-item">
	                                        <a class="accordion-button active" href="#">Illumina</a>
	                                        <div class="accordion-content" style="display: block;">
	                                            <ul class="list">
	                                                <li>TruSeq RNA</li>
	                                                <li>TruSeq stranded mRNA</li>
	                                                <li>TruSeq Stranded Total RNA with Ribo-Zero Human/Mouse/Rat</li>
	                                                <li>TruSeq Stranded Total RNA with Ribo-Zero Gold Human/Mouse/Rat</li>
	                                                <li>TruSeq Stranded Total RNA with Ribo-Zero Gold Human/Mouse/RatTruS
	                                                </li>
	                                                <li>TruSeq Stranded Total RNA with Ribo-Zero Globin Human/Mouse/Rat</li>
	                                                <li>TruSeq Stranded Total RNA Sample Preparation Kits with Ribo-Zero
	                                                    Plant
	                                                </li>
	                                                <li>TruSeq Stranded Total RNA (NEB Microbe)</li>
	                                                <li>ScriptSeq™ v2 RNA-Seq Library Preparation Kit (Epicentre)</li>
	                                                <li>TruSeq RNA Access</li>
	                                                <li>TruSeq Total RNA with Ribo-Zero</li>
	                                                <li>TruSeq mRNA (Insert size)</li>
	                                                <li>TruSeq Total RNA with Ribo-Zero (Insert size)</li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                    <div class="accordion-item">
	                                        <a class="accordion-button" href="#">Others</a>
	                                        <div class="accordion-content" style="display: none;">
	                                            <ul class="list">
	                                                <li>SMARTer Universal Low RNA library</li>
	                                                <li>SMARTer Ultra Low Input RNA library</li>
	                                                <li>SMARTer Stranded RNA library</li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <!--v0.11 section-anchor 추가-->
	                    <div class="section-anchor"><p class="font-h5 sub-title" id="target2">Small RNA Sequencing</p>
	                        <p class="desc font-body data_bottom">
	                            In addition to mRNA from which genes are transcribed, non-coding RNA that does not contain
	                            gene
	                            information, especially small RNA, has been found to be key
	                            factors in gene expression control and are actively studied. By analyzing the key types of
	                            the
	                            small RNA family, miRNA, siRNA, piRNA and snRNA, we can gain insights
	                            into gene expression control and apply them to the development and diagnosis of biomarkers.
	                        </p>
	                        <p class="font-body-h-b _sub-title">Library Construction Kit</p>
	                        <div class="accordion-container">
	                            <div class="accordion-item">
	                                <a class="accordion-button active" href="#">Illumina</a>
	                                <div class="accordion-content" style="display: block;">
	                                    <ul class="list">
	                                        <li>Small RNA library</li>
	                                    </ul>
	                                </div>
	                            </div>
	                            <div class="accordion-item">
	                                <a class="accordion-button" href="#">Others</a>
	                                <div class="accordion-content" style="display: none;">
	                                    <ul class="list">
	                                        <li>SMARTer Universal Low RNA library</li>
	                                        <li>QIAseq miRNA library</li>
	                                        <li>NEBNext Small RNA library</li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="list-area">
	                            <p class="title font-body-h-b">Sequencing Platform</p>
	                            <ul class="list-circle-dot">
	                                <li><p>HiSeq 2500 / HiSeq 4000</p></li>
	                                <li><p>NextSeq 500</p></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <!--v0.11 section-anchor 추가-->
	                    <div class="section-anchor"><p class="font-h5 sub-title" id="target3">Isoform Sequencing</p>
	                        <p class="desc font-body">
	                            For genes composed of exons and introns, new transcripts continue to be discovered by the
	                            combination of exon regions that are expressed. Isoform sequencing using a long read
	                            platform
	                            allows us to identify full-length transcripts that have not been revealed before, so it is
	                            gaining attention in regard to functional studies of gene.
	                        </p></div>
	                    <hr class="divider">
	                    <!--v0.11 section-anchor 추가-->
	                    <div class="section-anchor"><p class="font-h5 sub-title" id="target4">Exosomal RNA Sequencing</p>
	                        <p class="desc font-body">
	                            An exosome is a cell-derived endoplasmic reticulum of less than 200nm, and it contains
	                            various
	                            types of biomolecules including proteins, DNA, and RNA derived from the origin cell. By
	                            using
	                            these characteristics, it can be used as a biomarker for diagnosis or for disease
	                            monitoring.
	                            Recently, the fields of application for treatment, as well as cosmetic applications, are
	                            broadening.</p></div>
	                    <div class="btn-area">
	                        <div class="btn-wrapper"><a href="mailto:ngskr@macrogen.com"
	                                                    class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300"
	                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
	                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank"
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
	                <!--Epigenome-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Epigenome Sequencing</p>
	                    <p class="subject font-body-h-b">This is a technique for determining whether the function of a
	                        specific gene is properly expressed by external environmental factors.</p>
	                    <p class="desc font-body img_bottom">The key epigenetic regulatory mechanisms for gene transcription
	                        include DNA methylation and histone protein acetylation, and they can be analyzed more
	                        effectively using the NGS technique. This is a service with a strong chance of lowering the
	                        quality compared to Whole Genome Sequencing since the analysis proceeds through modification of
	                        the DNA sample with such substances as Bisulfite. Macrogen is capable of providing high-quality
	                        analytical data based on NGS performance that is ranked first in Korea and fifth in the world,
	                        and ATAC Sequencing is currently the only service available in the country.</p>
	                    <!--10.05 이미지 경로 변경-->
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img-ngs-test2.png" alt="Epigenome Sequencing">
	                    </div>
	                    <hr class="divider">
	                    <p class="font-h5 sub-title">Methylation Sequencing</p>
	                    <p class="desc font-body">WGBS (Whole Genome Bisulfite Sequencing) is a key NGS technique that can
	                        check methylation. This DNA processing technique uses sodium bisulfite, a substance that
	                        converts unmethylated cytosine to uracil, to observe the level of methylation of DNA by
	                        analyzing the nucleotide sequence afterward.</p>
	                    <div class="btn-area">
	                        <div class="btn-wrapper"><a href="mailto:ngskr@macrogen.com"
	                                                    class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300"
	                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
	                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank"
	                                                    class="btn btn-primary"><i
	                                class="icon ico-cart-white"></i><span>Order</span></a></div>
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
	               
	                <!--Metagenome-->
	                <div class="info-box">
	
	                    <p class="font-h4 main-title">Metagenome Sequencing</p>
	                    <p class="subject font-body-h-b">This is a method for identifying microbial communities in different
	                        environments that allows you to check the diversity of species in the environment by sequencing
	                        a set of genomes that exist in various environments at once.</p>
	                    <p class="desc font-body img_bottom">It allows you to find out what species and distribution of a
	                        specific group are in the meta sample in which various genomes are mixed, including feces, soil,
	                        seawater, and food, and also to understand their interactions and roles. It can also be used as
	                        a technique to confirm the microbial community that exists in various environments and assess
	                        the diversity and distribution of bacteria and fungi. It also supports the analysis for
	                        eukaryotes using the same principle of targeting marker genes. A dedicated team of
	                        bioinformatics equipped with superior NGS techniques and equipment delivers results that meet
	                        the needs of clients.</p>
	                    <div class="img">
	                        <img src="/publishing/mobile-en/dist/img/business/img_ngs_metagenome.png" alt="Metagenome Sequencing">
	                    </div>
	                    <hr class="divider">
	                    <!--content-anchor s-->
	                    <div class="content-anchor">
	                        <div class="selected-value _anchor-value">
	                            <span class="text">Metagenome Amplicon Sequencing</span>
	                        </div>
	                        <!--v0.11 줄바꿈 이슈-->
	                        <ul class="anchor-option">
	                            <li class="anchor-value" onclick="TitleMove('Amplicon')"><a href="#">Metagenome Amplicon Sequencing</a></li>
	                            <li class="anchor-value" onclick="TitleMove('Shotgun')"><a href="#">Metagenome Shotgun Sequencing</a></li>
	                        </ul>
	                    </div>
	                    <!--content-anchor e-->
	                    <!--v0.11 section-anchor 추가-->
	                    <div class="section-anchor"><p class="sub-title font-h5" id="Amplicon">Metagenome Amplicon Sequencing</p>
	                        <p class="desc font-body list_bottom">After amplifying a specific region of a marker gene such
	                            as
	                            16S rRNA or ITS gene and creating an Amplicon library, we analyze the distribution and
	                            diversity
	                            through sequencing. Eukaryote analysis is also supported using the same principle of
	                            targeted
	                            marker genes. A dedicated bioinformatics team performs the job. Taxonomic assignment and
	                            diversity analysis that guarantees a high level of accuracy and reproducibility through ASV
	                            analysis is also possible, as well as advanced analysis that meets statistical analysis and
	                            trends.</p>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">Sequencing Platform</p>
	                            <ul class="list-circle-dot">
	                                <li><p>16S rRNA V3-V4 Regions, 18S rRNA, ITS Regions, Customized regions → Illumina
	                                    Miseq /
	                                    Hiseq2500 platform</p></li>
	                                <li><p>16S rRNA Full length → PacBio Sequel / Sequel2 platform</p></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <hr class="divider">
	
	                    <div class="section-anchor">
	                        <p class="sub-title font-h5" id="Shotgun">Metagenome Shotgun Sequencing</p>
	                        <p class="desc font-body list_bottom">Through targeted sequencing of the entire genome as well
	                            as
	                            marker gene, this sequencing method enables the analysis of assembly, gene prediction,
	                            and functional annotation in addition to distribution and diversity of microbiota. A
	                            dedicated
	                            bioinformatics team performs the analysis directly.
	                            For taxonomic assignment, it can increase precision by calculating the normalized abundance
	                            using the genome size of the target taxon. </p>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">Sequencing Platform</p>
	                            <ul class="list-circle-dot">
	                                <li><p>Illumina Hiseq XTen / Hiseq 4000 / NovaSeq6000 platform</p></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="btn-area">
	                        <div class="btn-wrapper"><a href="mailto:ngskr@macrogen.com"
	                                                    class="btn btn-light"><span>Service Inquiry</span></a>
	                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300"
	                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
	                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank"
	                                                    class="btn btn-primary"><i
	                                class="icon ico-cart-white"></i><span>Order</span></a></div>
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
	            <!--ngs 컨텐츠 e-->
	        </div>
	    </div>
		
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
		    	location.reload();
		    });
		</script>
		<!--비즈니스 스크립트 리펙토링 e-->	
		
	</div>


</body>
