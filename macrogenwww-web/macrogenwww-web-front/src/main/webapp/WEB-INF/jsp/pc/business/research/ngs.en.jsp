<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg ngs">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Service</li>
        <li class="breadcrumb-item">Research Services</li>  
        <li class="breadcrumb-item">NGS</li>
    </ol>
</nav>

            <h2 class="hero-title">NGS</h2>
            <div class="slogan-sub">Next Generation Sequencing</div>
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
    <p class="title font-h4">Superior NGS service with a high level of precision and speed<br>
        based on world-class analytical infrastructure
    </p>
    <p class="subject">NGS (Next Generation Sequencing) is a method for reading a genome by dividing it into many pieces, assembling the obtained sequence pieces and analyzing the<br>  sequence of the entire  genome. </p>
    <!--10.05 이미지 경로 변경-->
    <div class="img">
        <img src="/publishing/pc-en/dist/img/business/img-ngs-intro.png" alt="NgsIntro">
    </div>
    <p class="desc">
        Macrogen is a global leader in precision medicine that is capable of predicting and diagnosing diseases through NGS information-based R&D and collaboration with medical institutions, presenting personalized treatment plans according to genetic characteristics.<br>
        There has been rapid progress in technologies related to NGS since its commercialization in 2000, which has produced a large volume of genome information for use in research. Especially since the cost and time for genome analysis gradually decreased, the demand for genome analysis for living organisms including humans has rapidly increased  and became available to use in various research. Recently, mostly in the medical field, clinical studies based on NGS are actively conducted and many studies are in progress to identify genetic variance and the functions of new genes. This is expected to speed up the realization of precision medicine that can provide treatments optimized for individual patients based on their genome.
        <br><br>
        Macrogen produces a large amount of genome information every year using various kinds of equipment, provides quicker and more accurate genome analysis service at an economical price to assist in studies conducted by researchers, and offers a diagnostic service to the public. We provide genome analysis services suitable for research, such as whole genome, exome, transcriptome, epigenome, metagenome, and single cell multi-omics sequencing and bioinformatics results based on the data. Offering a total genomic solution to researchers all over the world based on our extensive experiences and know-how accumulated over the years, Macrogen leads the field of precision medicine by utilizing NGS technology
    </p>
</div>

            <!--탭 슬라이드-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">SERVICE</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-slide active" id="genome"><a href="#">Whole Genome Sequencing</a></div>
                            <div class="swiper-slide" id="exome"><a href="#">Whole  Exome Sequencing</a></div>
                            <div class="swiper-slide" id="transcriptome"><a href="#">Transcriptome Sequencing</a></div>
                            <div class="swiper-slide" id="epigenome"><a href="#">Epigenome Sequencing</a></div>
                            <div class="swiper-slide" id="metagenome"><a href="#">Metagenome Sequencing</a></div>
                            <!-- <div class="swiper-slide" id="exome"><a href="#">Single Cell Multi-omics analysis</a></div>
                            <div class="swiper-slide" id="exome"><a href="#">ATAC analysis</a></div>
                            <div class="swiper-slide" id="exome"><a href="#">Spatial Gene Expression analysis</a></div>
                            10.25 html 추가 -->
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
                            <li><a href="#" onclick="setTabContent(0)">Whole Genome Sequencing</a></li>
                            <li><a href="#" onclick="setTabContent(1)">Whole Exome Sequencing</a></li>
                            <li><a href="#" onclick="setTabContent(2)">Transcriptome Sequencing</a></li>
                            <li><a href="#" onclick="setTabContent(3)">Epigenome Sequencing</a></li>
                            <!-- <li><a href="#" onclick="setTabContent(4)">Single Cell Multi-omics analysis</a></li>
                            <li><a href="#" onclick="setTabContent(5)">ATAC analysis</a></li>
                            <li><a href="#" onclick="setTabContent(6)">Spatial Gene Expression analysis</a></li> -->
                            <!--10.25 html 추가-->
                            <li><a href="#" onclick="setTabContent(4)">Metagenome Sequencing</a></li>
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
                        //<!--10.05 스크립트 추가-->
                        $(document).mouseup(function (e){
                            var LayerPopup = $(".tab-modal");
                            if(LayerPopup.has(e.target).length === 0){
                                LayerPopup.hide();
                            }
                        });

                    </script>
                </div>
            </div>
            <div class="info-box-wrap tab-content">
                <!--Genome-->
                <div class="info-box show">
                    <p class="main-title font-h4">Whole Genome Sequencing</p>
                    <p class="subject">Whole Genome Sequencing (WGS) is a procedure for reading the entire genome and analyzing related genetic information.</p>
                    <p class="desc img_bottom">Information about mutations obtained through WGS is used for genetic discovery and personalized medicine research in relation to disease. Currently, we have more than 18,000 research institutes as clients in 153 countries around the world, as well as world-class analytical infrastructure, including WGS analysis facilities for more than 300,000 people per year and computing systems that can store up to 30 PB. Based on these resources, we are opening the door to a new era of genome information-based precision medicine powered by big data.</p>
                    <!--10.05 이미지 경로 변경 // div class 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-ngs-genome.png" alt="Whole Genome Sequencing">
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">Whole Genome Resequencing</p>
                    <p class="desc list_bottom">Resequencing is a procedure that allows variation analysis, such as SNP (Single Nucleotide Polymorphism), InDel (Insertion & Deletion), CNV (Copy Number<br> Variation), and SV (Structural Variation) based on reference genomes.
                    </p>
                    <div class="list-area">
                        <p class="font-h8 title">Sequencing Platform</p>
                        <ul class="list-circle-dot">
                            <li>NovaSeq X Plus / NovaSeq 6000</li>
                            <li>NextSeq 500</li>
                            <li>DNBSEQ-T7</li>
                            <li>UG100</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">Whole Genome De novo Sequencing</p>
                    <p class="desc list_bottom">This is a procedure that can uncover information about the entire genome of microorganisms or animals and plants that still isn't known.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Sequencing Platform</p>
                        <ul class="list-circle-dot">
                            <li>NovaSeq X Plus / NovaSeq 6000</li>
                            <li>NextSeq 500 / MiSeq</li>
                            <li>PacBio Revio / Sequel lle</li>
                            <li>PromethION</li>
                        </ul>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" onclick="setTabContent(1)" class="item next">
                                    <div class="title">Whole Exome Sequencing</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Exome-->
                <div class="info-box">
                    <p class="font-h4 main-title">Whole Exome Sequencing</p>
                    <p class="subject">WES (Whole Exome Sequencing) is a procedure for selective analysis in an exon area known to be where genes exist.</p>
                    <p class="desc img_bottom">It is a more effective and economical way of performing research than whole genome resequencing because it selectively analyzes only the genes
                        obtained from current studies. It also supports whole exome sequencing using Capture Kit (Agilent SureSelect Exome Capture kit, Truseq Exome Enrichment Kit,<br>
                        Twist Human Core Exome Kit) and provides mutation analysis for SNP and InDel.
                    </p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-ngs-wes.png" alt="Whole Exsome Sequencing">
                    </div>
                    <!--09.29 divider 제거-->
                    <!--<hr class="divider">-->
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="title font-h8">Main Capture Kit</p>
                            <ul class="list-circle-dot">
                                <li>Agilent SureSelect Exome Capture kit</li>
                                <li>Twist Human Core Exome kit</li>
                                <li>Capture the whole exon and provide mutation analysis for SNP and InDel as well.</li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="title font-h8">Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li>NovaSeq X Plus / NovaSeq 6000</li>
                                <li>NextSeq 500</li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" onclick="setTabContent(0)" class="item prev">
                                    <div class="title">Whole Genome Sequencing</div>
                                </a>
                                <a href="#" onclick="setTabContent(2)" class="item next">
                                    <div class="title">Transcriptome Sequencing</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Transcriptome-->
                <div class="info-box">
                    <p class="font-h4 main-title">Transcriptome Sequencing</p>
                    <p class="subject">As a technique for analyzing RNA obtained from gene expression, it allows checking the difference in expression profile and various mutation information between samples.</p>
                    <p class="desc img_bottom">As one of the most frequently used techniques conducted with NGS, it requires a high level of technical skill such as sample preparation, storage, and processing<br> due to the unstable specificity of RNA.<br>
                        Based on the expression profile and mutation information between samples, new insights into gene possible research and expression regulation can be obtained,<br> and it can be applied to biomarker development, diagnosis, and monitoring of diseases.<br>
                        Macrogen is equipped with a wide range of library kits, NGS systems, and computing systems to meet the needs of staff related to transcriptome sequencing,<br> based on years of experience.
                    </p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-ngs-test1.png" alt="TranscriptomeSequencing소개이미지">
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5 ">mRNA / Total RNA Sequencing</p>
                    <p class="desc">
                        The exact data value can be known through the mRNA expression value identified based on the read. It can be used for research such as novel transcriptome,<br>
                        fusion gene, alternative splicing, and mutation information as well as inter-gene expression profiles. Recently, studies on gene expression<br>
                        at the single cell level is also being actively carried out.
                    </p>
                    <p class="sub-title figure_bottom font-h8">Library Construction Kit</p>
                    <div class="list-area-border">
                        <div class="list">
                            <p class="font-h8">Illumina</p>
                            <ul class="list-circle-dot">
                                <li>TruSeq Stranded mRNA</li>
                                <li>TruSeq RNA Exome</li>
                                <li>TruSeq Stranded Total RNA with RiboZero Human/Mouse/Rat</li>
                                <li>TruSeq Stranded Total RNA with RiboZero Gold</li>
                                <li>TruSeq Stranded Total RNA with RiboZero Globin</li>
                                <li>TruSeq Stranded Total RNA with RiboZero Plant</li>
                                <li>Illumina Stranded total RNA (Ribo-Zero Plus)</li>
                                <li>TruSeq Stranded Total RNA (NEB Microbe)</li>
                            </ul>
                        </div>
                        <div class="list">
                            <p class="font-h8">Others</p>
                            <ul class="list-circle-dot">
                                <li>SureSelectXT RNA Direct</li>
                                <li>SureSelect XT HS2 RNA</li>
                                <li>SMART-Seq mRNA</li>
                                <li>SMART-Seq Total RNA Mid Input (SMARTer Stranded RNA)</li>
                                <li>Watchmaker mRNA</li>
                                <li>Watchmaker total RNA with Polaris Depletion (HMR)</li>
                            </ul>
                        </div>
                    </div>
                    <div class="list-area margin_reset">
                        <p class="title font-h8">Sequencing Platform</p>
                        <ul class="list-circle-dot">
                            <li>NovaSeq X Plus / NovaSeq 6000</li>
                            <li>NextSeq 500</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Small RNA Sequencing</p>
                    <p class="desc">
                        In addition to mRNA from which genes are transcribed, non-coding RNA that does not contain gene information, especially small RNA, has been found to be key<br>
                        factors in gene expression control and are actively studied. By analyzing the key types of the small RNA family, miRNA, siRNA, piRNA and snRNA, we can gain insights<br>
                        into gene expression control and apply them to the development and diagnosis of biomarkers.
                    </p>
                    <p class="font-h8 sub-title figure_bottom ">Library Construction Kit</p>
                    <div class="list-area-border">
                        <div class="list">
                            <p class="font-h8">Illumina</p>
                            <ul class="list-circle-dot">
                                <li>TruSeq Small RNA</li>
                            </ul>
                        </div>
                        <div class="list">
                            <p class="font-h8">Others</p>
                            <ul class="list-circle-dot">
                                <li>SMARTer smRNA</li>
                                <li>NEBNext Small RNA</li>
                                <li>QIAseq miRNA</li>
                            </ul>
                        </div>
                    </div>
                    <div class="list-area margin_reset">
                        <p class="title font-h8">Sequencing Platform</p>
                        <ul class="list-circle-dot">
                            <li>NovaSeq X Plus / NovaSeq 6000</li>
                            <li>NextSeq 500</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Isoform Sequencing</p>
                    <p class="desc">
                        For genes composed of exons and introns, new transcripts continue to be discovered by the combination of exon regions that are expressed. Isoform sequencing using a long read platform allows us to identify full-length transcripts that have not been revealed before, so it is gaining attention in regard to functional studies of gene.
                    </p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Exosomal RNA Sequencing</p>
                    <p class="desc">
                        An exosome is a cell-derived endoplasmic reticulum of less than 200nm, and it contains various types of biomolecules including proteins, DNA, and RNA derived from the origin cell. By using these characteristics, it can be used as a biomarker for diagnosis or for disease monitoring. Recently, the fields of application for treatment, as well as cosmetic applications, are broadening.
                    </p>
                    <div class="btn-area">
                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(1)">
                                    <div class="title">Whole Exome Sequencing</div>
                                </a>
                                <a href="#" class="item next" onclick="setTabContent(3)">
                                    <div class="title">Epigenome Sequencing</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Epigenome-->
                <div class="info-box">
                    <p class="font-h4 main-title">Epigenome Sequencing</p>
                    <p class="subject">This is a technique for determining whether the function of a specific gene is properly expressed by external environmental factors.</p>
                    <p class="desc img_bottom">The key epigenetic regulatory mechanisms for gene transcription include DNA methylation and histone protein acetylation, and they can be analyzed more effectively using the NGS technique. This is a service with a strong chance of lowering the quality compared to Whole Genome Sequencing since the analysis proceeds through modification of the DNA sample with such substances as Bisulfite. Macrogen is capable of providing high-quality analytical data based on NGS performance that is ranked first in Korea and fifth in the world, and ATAC Sequencing is currently the only service available in the country.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-ngs-test2.png" alt="Epigenome Sequencing">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Methylation Sequencing</p>
                    <p class="desc">There are two NGS methods for detecting methylation: Whole Genome Bisulfite Sequencing (WGBS) and Enzymatic Methylation Sequencing (EM-Seq). WGBS utilizes sodium bisulfite, which converts unmethylated cytosines to uracil, to treat DNA before analyzing the nucleotide sequence to observe the level of methylation. EM-Seq, on the other hand, employs enzymes such as TET2 to prevent oxidation of methylated cytosines to uracil and APOBEC to deaminate only unmethylated cytosines to uracil, thus assessing the methylation level of DNA.</p>
                    <p class="sub-title figure_bottom font-h8">Library Construction Kit</p>
                    <div class="list-area">
                        <ul class="list-circle-dot">
                            <li>EZ DNA Methylation-Gold Kit (conversion) - xGen™ Methylation-Sequencing DNA Library Preparation Kit (library preparation)</li>
                            <li>NEBNext® Enzymatic Methyl-seq Kit</li>
                        </ul>
                    </div>
                    <!-- 2023-05-09::내용추가 -->
                    <hr class="divider">
                    <p class="font-h5 sub-title">ATAC analysis</p>
                    <p class="desc">
                        ATAC is a technique used to analyze accessible DNA regions through NGS (Next Generation Sequencing).<br><br>
                        Macrogen provides a high level of genetic sequencing data quickly based on its NGS (next generation sequencing) performance, which ranks first in Korea and fifth in the world, and supports personalized sample tests. By assessing the open state of closed chromatin condensed into histone proteins for gene expression, the accessible region of RNA polymerase can be inferred, or the transcription factor binding site and nucleosome (nucleosome) location information can be acquired. In order for the genetic information stored in DNA to actually play a role, it should be expressed as a transcript (RNA). The DNA expression is controlled by changes in the DNA sequence itself, but it can also be regulated by changes in the helix structure or changes in surrounding proteins without changing the DNA sequence. The study of changes in gene function through structural changes or changes in surrounding proteins without changes in the DNA sequence is known as epigenetics.
                    </p>
                    <!-- //2023-05-09::내용추가 -->

                    <div class="btn-area">
                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(2)">
                                    <div class="title">Transcriptome Sequencing</div>
                                </a>
                                <a href="#" class="item next" onclick="setTabContent(4)">
                                    <div class="title">Metagenome Sequencing</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 2023-05-09::Single Cell Multi-omics analysis 삭제-->
                <!-- 2023-05-09::ATAC analysis 삭제-->
                <!-- 2023-05-09::Spatial Gene Expression analysis 삭제-->
                
                <!--Metagenome-->
                <div class="info-box">
                    <p class="font-h4 main-title">Metagenome Sequencing</p>
                    <p class="subject">This is a method for identifying microbial communities in different environments that allows you to check the diversity of species in the environment by sequencing a set of genomes that exist in various environments at once.</p>
                    <p class="desc img_bottom">It allows you to find out what species and distribution of a specific group are in the meta sample in which various genomes are mixed, including feces, soil, seawater, and food, and also to understand their interactions and roles. It can also be used as a technique to confirm the microbial community that exists in various environments and assess the diversity and distribution of bacteria and fungi. It also supports the analysis for eukaryotes using the same principle of targeting marker genes. A dedicated team of bioinformatics equipped with superior NGS techniques and equipment delivers results that meet the needs of clients.
                    </p>
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_ngs_metagenome.png" alt="Metagenome Sequencing">
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">Metagenome Amplicon Sequencing</p>
                    <p class="desc list_bottom">After amplifying a specific region of a marker gene such as 16S rRNA or ITS gene and creating an Amplicon library, we analyze the distribution and diversity through sequencing. Eukaryote analysis is also supported using the same principle of targeted marker genes. A dedicated bioinformatics team performs the job. Taxonomic assignment and diversity analysis that guarantees a high level of accuracy and reproducibility through ASV analysis is also possible, as well as advanced analysis that meets statistical analysis and trends.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Sequencing Platform</p>
                        <ul class="list-circle-dot">
                            <li>16S rRNA V3-V4 Regions, 18S rRNA, ITS Regions, Customized regions → Illumina NovaSeq X Plus / NovaSeq 6000 / MiSeq</li>
                            <li>16S rRNA Full length → PacBio Revio / Sequel lle</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">Metagenome Shotgun Sequencing</p>
                    <p class="desc list_bottom">Through targeted sequencing of the entire genome as well as marker gene, this sequencing method enables the analysis of assembly, gene prediction,<br>
                        and functional annotation in addition to distribution and diversity of microbiota. A dedicated bioinformatics team performs the analysis directly.<br>
                        For taxonomic assignment, it can increase precision by calculating the normalized abundance using the genome size of the target taxon.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Sequencing Platform</p>
                        <ul class="list-circle-dot">
                            <li>NovaSeq X Plus / NovaSeq 6000 / NextSeq 500 / MiSeq</li>
                            <li>PacBio Sequel IIe / Revio</li>
                        </ul>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                        <!-- <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                        <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a> -->
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(3)">
                                    <div class="title">Epigenome Sequencing</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var swiper = new Swiper("._swiperTab", {
            slidesPerView: "auto",
            spaceBetween: 0,
            centeredSlides: false,
            watchActiveIndex: true,
            slideToClickedSlide: true,
            navigation: {
                nextEl: "._slideRight",
                prevEl: "._slideLeft",
            },
        });

        $(document).ready(function (){
            var idx = $('._swiperTab .swiper-slide').length;
            var sum= 0;

            // slide wrap width
            for (var j = 0; j < idx; j++) {
                sum = sum + $(".swiper-slide:eq("+j+")").outerWidth(true);
            }
            $('.swiper-wrapper').css('width',sum)

            // slide width
            for (var i = 0; i <= idx; i++) {
                var target = $(".swiper-slide:eq("+"i"+")");
                var idxWidth = $(".swiper-slide:eq("+"i"+")").outerWidth(true) - 40;
                target.css('width',idxWidth)
            }
        })

        function setTabContent (idx){
            $('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');
            swiper[0].slideTo(idx);

            //<!--탭메뉴 클릭시 페이지 변경-->
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

        $('.swiper-notification').remove();
        
		
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
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>