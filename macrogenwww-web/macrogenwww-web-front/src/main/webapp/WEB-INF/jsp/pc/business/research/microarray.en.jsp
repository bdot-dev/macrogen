<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

  <div class="full-bg business_bg microarray">
    <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

    <div class="frame frameB">
      <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">Research</li>
        <li class="breadcrumb-item">OLIGO</li>
    </ol>
</nav>

      <div class="hero-title">MICROARRAY</div>
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
    <p class="title font-h4">With the only microarray analysis facilities in Korea,<br>
        Macrogen offers unprecedented precision and speed.
    </p>
    <p class="subject">This is a service that interprets useful genomic information using microarrays produced for various types of research.</p>
    <!--10.05 이미지 경로 변경-->
    <div class="img">
        <img src="/publishing/pc-en/dist/img/business/img-microarray-intro.png" alt="MicroarrayIntro">
    </div>
    <p class="desc">Macrogen provides various gene analysis services using precise DNA microarray technology. Known by various terms such as DNA chip, biochip, and gene-array, microarray is a technology that measures the expression pattern of genes and verifies whether there is a mutation by arranging invisible probes on a chip and reacting DNA, RNA, protein, etc. For microarray analysis, correct execution of tests and the capacity to correctly select significant genetic information from test results, as well as the technology to integrate probes at high density and produce them in a small chip form, are essential.
        <br><br>
        Macrogen is the only company in Korea that has all the products of Illumina, Affymetrix and Agilent, which are the main suppliers of microarray products. Based on this equipment, we offer genetic testing services for research purposes such as mRNA, miRNA, SNP, CGH, and DNA methylation. Based on extensive test and analysis experience for research customers around the world, Macrogen guarantees that it will provide only high-quality data results.</p>
</div>

      <!--탭 슬라이드-->
      <div class="tab-box" id="_tab-box">
        <p class="font-h4 title">SERVICE</p>
        <div class="slide-tab-wrap">
          <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
            <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
              <div class="swiper-slide active"><a href="#">Expression Microarray</a></div>
              <div class="swiper-slide "><a href="#">Genome Microarray</a></div>
              <div class="swiper-slide"><a href="#">Epigenome Microarray</a></div>
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
      </script>
      <div class="info-box-wrap tab-content">
        <!--Expression Microarray-->
        <div class="info-box show">
          <p class="font-h4 main-title">Expression Microarray</p>
          <p class="subject">This is a technique for analyzing genomes with characteristics for which the expression level varies, depending on the biological environment.</p>
          <!--10.05 이미지 경로 변경-->
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-microarray-expression.png" alt="Expression Microarray">
          </div>
          <hr class="divider">
          <p class="font-h5 sub-title">mRNA Expression Microarray</p>
          <p class="desc list_bottom">mRNA (messenger RNA) is a type of RNA produced when DNA goes through transcription. It includes the coding region that contains protein information. Analysis of mRNA’s expression pattern is crucial to finding the gene that carries out the main function in a certain environment and the gene’s pathway. With an mRNA expression microarray, the level of the whole gene expression can be analyzed. Even when genetic information whose expression changes according to changes in the biological environment needs to be checked, our microarray screening can provide results quickly. </p>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title figure_bottom">mRNA Expression Microarray Platforms</p>
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
                    - Model Org/Non-Human</td>
                  <td class="text-start">- SurePrint G3 Gene Expression<br>
                    - SurePrint G3 Exon<br>
                    - Customization<br>
                    - etc</td>
                </tr>
                <tr>
                  <td>Affymetrix</td>
                  <td class="text-start">- Gene ST (Whole Transcript)<br>
                    - GenomeArray (3'IVT)<br>
                    - etc</td>
                </tr>
                <tr>
                  <td>Life Technologies</td>
                  <td class="text-start">- Taqman mRNA Expression<br>
                    - Openarray Customization</td>
                </tr>
                </tbody>
              </table>
            </div>
            <div class="list-area">
              <p class="font-h8 title figure_bottom">Analysis</p>
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
                  <td class="text-start">Basic statistics(Fold change, group mean, sd etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">Identifying differentially expressed genes(T-test, LPE test, ANOVA etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">Multiple testing correction (FDR, Bonferroni etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">Clustering Analysis for DEG ( Hierarchical clustering, K-means etc.)</td>
                </tr>
                <tr>
                  <td rowspan="2">Functional analysis</td>
                  <td class="text-start">KEGG pathway, GeneOntologyannotation(DAVID, goProfiles, GOstats etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">GeneSet Enrichment Analysis</td>
                </tr>
                <tr>
                  <td>Customized analysis</td>
                  <td class="text-start">Integrative analysis (mRNA-miRNA, methylation~mRNA, mRNA-CNV etc.)</td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
          <p class="font-h5 sub-title list-area-group-top">microRNA Expression Microarray</p>
          <p class="desc list_bottom">번역(Translation)This is an analytical technique that can quickly screen information about various microRNA that control gene expression during the translation process. microRNA is a single-sequence small RNA composed of 21 – 25 nucleotides. microRNA controls gene expression by interrupting mRNA’s function of forming protein via the translation process. Study of microRNA can broaden understanding of RNA silencing. The miRNA Expression Microarray can be used to analyze the whole miRNAs from various organisms. In addition to miRNA analysis in cells or tissues, interest is recently growing in exosome samples for the study of the role of miRNA in inter-cell interactions. Macrogen provides reliable results based on its experience in exosomalRNA miRNA analysis.</p>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title figure_bottom">miRNA Expression Microarray Platforms</p>
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
                    - Model Org/Non-Human</td>
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
            <div class="list-area">
              <p class="font-h8 title figure_bottom">Analysis</p>
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
                  <td class="text-start">Basic statistics(Fold change, group mean, sd etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">Identifying differentially expressed genes(T-test, LPE test, ANOVA etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">Multiple testing correction (FDR, Bonferroni etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">Clustering Analysis for DEG ( Hierarchical clustering, K-means etc.)</td>
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

          <div class="btn-area">
            <a href="mailto:array@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
             <a href="https://dna.macrogen.com/quotation/retrieveChipQuotation.do?menuCd=QUO500" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="mailto:array@macrogen.com" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item next" onclick="setTabContent(1)">
                  <div class="title">Genome Microarray </div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>

        <!--Genome Microarray-->
        <div class="info-box">
          <p class="font-h4 main-title">Genome Microarray</p>
          <p class="subject">This is a technique to analyze DNA sequence variants or structural changes.</p>
          <!--10.05 이미지 경로 변경-->
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-microarray-genome.png" alt="Genome Microarray">
          </div>
          <hr class="divider">
          <p class="font-h5 sub-title">SNP Genotyping Microarray</p>
          <p class="desc list_bottom">For the human genome composed of about 3 billion pairs of bases, most DNA sequences of individuals match, but about 0.1% is SNP (Single Nucleotide Polymorphism), which is where the differences lie. Such SNP causes genetic diversity of an individual and the difference of sensitivity to different diseases. With the SNP Genotyping Microarray, millions of SNPs can be analyzed simultaneously. Macrogen has the largest SNP chip data automation production facilities in Korea and provides accurate results by applying strict data quality control processes.</p>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title figure_bottom">SNP Genotyping Microarray Platforms</p>
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
            <div class="list-area">
              <p class="font-h8 title figure_bottom">Analysis</p>
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
                  <td rowspan="3">SNP analysis</td>
                  <td class="text-start">SNP analysis</td>
                </tr>
                <tr>
                  <td class="text-start">Single Based Association Study (PLINK, R)</td>
                </tr>
                <tr>
                  <td class="text-start">Gene Based Association Study (SKAT, Score-Seqetc)</td>
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
          <p class="font-h4 main-title list-area-group_top">CGH Microarray</p>
          <p class="desc list_bottom">CNV (Copy Number Variation) means the DNA variation that a certain sequence section more than 1Kb is lost or amplified and repeated in the chromosome. Such copy number variation can cause various genetic diseases, as well as the proliferation of cancer cells. When analyzing CGH chip data, you can find the CNV that is the cause of diseases or specific phenotypes by using databases such as DGV and ClinVar, and CNV on genes and chromosomes can be analyzed using the CGH Microarray. Our CGH microarray systems allow us to select products according to the needs of our clients while providing CNV verification services for cell lines used in therapy.</p>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title figure_bottom">CGH Microarray Platforms </p>
              <p class="sub-list-title">Agilent CGH</p>
              <ul class="list-circle-dot figure_bottom">
                <li>High resolution (60 mer) & sensitivity CGH/CNV chips are provided</li>
                <li>CGH/CNV chips related to organisms other than human are provided and can be customized</li>
                <li>CGH test using FFPE samples available</li>
              </ul>
              <table class="table">
                <colgroup>
                  <col style="width:33.3333%;">
                  <col style="width:33.3333%;">
                  <col style="width:33.3333%;">
                </colgroup>
                <thead>
                <tr>
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
            <div class="list-area">
              <p class="font-h8 title figure_bottom">Analysis</p>
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
          <div class="btn-area">
            <a href="mailto:array@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveChipQuotation.do?menuCd=QUO500" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="mailto:array@macrogen.com" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(0)">
                  <div class="title">Expression Microarray</div>
                </a>
                <a href="#" class="item next" onclick="setTabContent(2)">
                  <div class="title">Epigenome Microarray</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>

        <!--Epigenome Microarray-->
        <div class="info-box">
          <p class="font-h4 main-title">Epigenome Microarray</p>
          <p class="subject">This method quantifies and analyzes the level of methylation of numerous DNA sites at the same time.</p>
          <!--10.05 이미지 경로 변경-->
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-microarray-epigenome.png" alt="EpigenomeMicroarray">
          </div>
          <hr class="divider">
          <p class="font-h4 main-title">DNA Methylation Microarray</p>
          <p class="desc list_bottom">DNA methylation is a chemical transformation that controls gene expression. This phenomenon of methyl generated in cytosine at the CpG site exists around the promoter region of a gene. If the cause of a disease or phenotype is a change in the methyl group of a specific CpG site, then statistical analysis between groups can be used to identify the location of the CpG site within the entire DNA sequence. If methyl affects genes that play an important role in suppressing a tumor, such as tumor suppressor genes, then it can cause a fatal result - cancer. Macrogen can correctly identify whether there is genome methylation using the Illumina microarray and give biological meaning through statistical analysis of the results. We have the most extensive experience in methylation chip analysis in Korea and provide a premium service that analyzes correlation based on methylation data and gene expression data.</p>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">DNA Methylation Microarray Platforms</p>
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
            <div class="list-area">
              <p class="font-h8 title">Analysis</p>
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
                  <td class="text-start">Identifying differentially methylated CpGs(T-test,  ANOVA etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">Multiple testing correction (FDR, Bonferroni etc.)</td>
                </tr>
                <tr>
                  <td class="text-start">Clustering Analysis for DM CpGs( Hierarchical clustering, K-means etc.)</td>
                </tr>
                <tr>
                  <td>Functional analysis</td>
                  <td class="text-start">KEGG pathway, GeneOntologyannotation(DAVID, goProfiles, GOstats etc.)</td>
                </tr>
                <tr>
                  <td>Customized analysis</td>
                  <td class="text-start">Integrative analysis (methylation, etc.)</td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="btn-area">
            <a href="mailto:array@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveChipQuotation.do?menuCd=QUO500" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="mailto:array@macrogen.com" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(1)">
                  <div class="title">Genome Microarray</div>
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
