<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

  <div class="full-bg business_bg microarray">
    <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header header-bg-white" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

    <div class="frame frameB">
      <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Service</li> 
        <li class="breadcrumb-item">연구분석서비스</li>
        <li class="breadcrumb-item">Microarray</li>
    </ol>
</nav>

      <h2 class="hero-title">Microarray</h2>
      <!-- <a href="#_tab-box" class="btn btn-round btn-service">
        <span>SERVICE</span>
        <i class="icon icon-arrow-bottom-short-white"></i>
      </a> -->
    </div>
  </div>
  <div class="container">
    <div class="section_business">
      <!--메인 컨텐츠-->
      <div class="subject-box">
    <p class="title font-h4">국내 유일의 Microarray 분석 시설을 통해<br>
        빠르고 정밀한 서비스를 제공합니다
    </p>
    <p class="subject">다양한 연구 목적으로 제작된 Microarray를 활용하여 유용한 유전체 정보를 해석하는 서비스입니다. </p>
    <div class="img">
        <img src="/publishing/pc-ko/dist/img/business/img-microarray-intro.png" alt="MicroarrayIntro">
    </div>
    <p class="desc">
        마크로젠은 정밀한 DNA Microarray 기술을 활용해 유전자분석 서비스를 제공합니다. DNA chip, Biochip, gene-array 등 다양한 용어로 불리는 Microarray는 눈에 보이지 않는 미세한 탐침(Probe)를 칩에 배열시킨 뒤 DNA, RNA, 단백질 등의 반응을 통해 유전자의 발현패턴을 측정하고 변이 여부 등을 확인하는 기술입니다. Microarray 분석은 탐침(Probe) 고밀도로 집적하여 작은 칩 형태로 제작할 수 있는 기술과 실험수행 및 결과로부터 유의미한 유전학적 정보들을 정확하게 선별해낼 수 있는 능력이 필수적입니다.
        <br><br>
        마크로젠은 국내에서 유일하게 Microarray 제품 주요 공급업체인 Illumina, Affymetrix, Agilent사의 제품을 모두 보유하고 있으며 해당 장비를 기반으로 mRNA, miRNA, SNP, CGH, DNA Methylation 등 다양한 연구목적의 유전자분석 서비스를 제공합니다. 전 세계 연구자 고객을 대상으로 수행해온 다수의 실험 및 분석 경험을 바탕으로 고품질 데이터 결과 제공합니다.</p>
</div>

      <!--탭 슬라이드-->
      <div class="tab-box" id="_tab-box">
        <p class="font-h4 title">SERVICE</p>
        <div class="slide-tab-wrap">
          <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
            <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
              <div class="swiper-slide active" id="expression"><a href="#">Expression Microarray</a></div><!-- 20230502 div에 id 붙여줌. 링크 hash -->
              <div class="swiper-slide" id="genome"><a href="#">Genome Microarray</a></div>
              <div class="swiper-slide" id="epigenome"><a href="#">Epigenome Microarray</a></div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="info-box-wrap tab-content">
        <!--Expression Microarray-->
        <div class="info-box show">
          <p class="font-h4 main-title">Expression Microarray</p>
          <p class="subject">생물학적 환경에 따라 발현 정도가 달라지는 특징을 가진 유전체를 분석하는 방법입니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/business/img-microarray-expression.png" alt="Expression Microarray">
          </div>
          <hr class="divider">
          <p class="font-h5 sub-title">mRNA Expression Microarray</p>
          <p class="desc list_bottom">mRNA(messenger RNA)는 DNA가 전사될 때 생성되는 RNA의 일종입니다. mRNA는 단백질 정보를 담고 있는 coding region을 포함합니다. 특정 환경에서 주요 기능을 수행하는 유전자와
            그 유전자의 pathway를 찾기 위해서는 mRNA의 발현패턴을 분석하는 것이 중요합니다. mRNA Expression Microarray를 이용하여 Organism의 전체 유전자 발현 정도를 분석할 수 있습니다.
            생물학적 환경 조건의 변화에 따라 발현이 달라지는 유전자 정보를 확인해야 할 때도 Microarray 스크리닝을 통해 빠르게 결과를 얻을 수 있습니다.</p>
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
                  <th>제조사</th>
                  <th>연구 종</th>
                  <th>플랫폼</th>
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
                    - 기타</td>
                </tr>
                <tr>
                  <td>Affymetrix</td>
                  <td class="text-start">- Gene ST (Whole Transcript)<br>
                    - GenomeArray (3'IVT)<br>
                    - 기타</td>
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
                  <th>분석항목</th>
                  <th>내용</th>
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
          <p class="desc list_bottom">번역(Translation) 과정에서 유전자의 발현을 조절하는 다양한 microRNA에 대한 정보를 빠르게 스크리닝하여 한번에 얻을 수 있는 분석방법입니다.
            microRNA는 21-25개 뉴클레오타이드(Nucleotide)로 이루어진 단일서열의 작은 RNA로 mRNA가 번역과정을 거쳐 단백질이 형성되는 기능을 방해함으로써 유전자 발현을 제어하는 역할을 합니다.
            해당 microRNA 연구를 통하여 RNA silencing에 대한 이해를 넓힐 수 있습니다.
            miRNA Expression Microarray를 사용하여 다양한 Organism의 전체 miRNA를 손쉽게 분석할 수 있습니다.
            세포나 조직에서의 miRNA 분석뿐만 아니라 최근에 세포간 상호작용에서의 miRNA의 역할에 대한 연구를 위해서 exosome샘플에 대한 관심도가 높아지고 있습니다.
            마크로젠은 수많은 exosomalRNA miRNA 분석 경험을 통해 신뢰도 높은 결과를 제공하고 있습니다. </p>
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
                  <th>제조사</th>
                  <th>연구 종</th>
                  <th>플랫폼</th>
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
                  <th>분석항목</th>
                  <th>내용</th>
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
            <a href="mailto:array@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveChipQuotation.do?menuCd=QUO500" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
           	<a href="mailto:array@macrogen.com" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
          <p class="subject">DNA상의 다양한 염기서열 변이나 구조적 변화에 대해 분석하는 방법입니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/business/img-microarray-genome.png" alt="Genome Microarray">
          </div>
          <hr class="divider">
          <p class="font-h5 sub-title">SNP Genotyping Microarray</p>
          <p class="desc list_bottom">약 30억 쌍의 염기로 구성된 인간 유전체의 경우 개인의 DNA 염기서열이 대부분 일치하지만  0.1% 정도 차이가 나는 단일염기다형성(SNP, Single Nucleotide Polymorphism) 부위를 가지고 있습니다.
            이러한 SNP에 의해 개인의 유전적 다양성이 나타나며 서로 다른 질병에 대한 감수성의 차이를 만들어 냅니다. SNP Genotyping Microarray를 사용하면 수백만 개의 SNP를 동시에 분석할 수 있습니다.
            마크로젠은 국내 최대 SNP 칩 데이터 자동화 생산 시설을 갖추고 있으며, 데이터 QC 프로세스를 적용하여 정확한 분석 결과를 제공하고 있습니다.</p>
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
                  <th>제조사</th>
                  <th>연구 종</th>
                  <th>분류</th>
                  <th>플랫폼</th>
                  <th>SNP contents</th>
                </tr>
                </thead>
				<tbody>
					<tr>
					  <td rowspan="12">Illumina</td>
					  <td rowspan="14" class="text-start table-bg">- Human<br>- Model Org.<br>- Non-Human</td>
					  <td rowspan="6">Genome Wide<br>SNP Array</td>
					  <td>Infinium Omni5Exome-4</td>
					  <td>4.5M</td>
					</tr>
					<tr>
					  <td>Infinium Omni5-4</td>
					  <td>4.3M</td>
					</tr>
					<tr>
					  <td>Infinium OmniExpress-24</td>
					  <td>715K</td>
					</tr>
					<tr>
					  <td>Infinium Global Screening Array</td>
					  <td>660K</td>
					</tr>
					<tr>
					  <td>Infinium Global Diversity Array</td>
					  <td>1.8M</td>
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
					  <td rowspan="2">Affymetrix</td>
					  <td rowspan="2">Genome Wide<br>SNP Array</td>
					  <td>Axiom PangenomiX Array</td>
					  <td>800K</td>
					</tr>
					<tr>
					  <td>Axiom Precision Medicine Diversity Array</td>
					  <td>850K</td>
					</tr>
					<tr>
					  <td rowspan="2">Thermofisher Scientifics</td>
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
                  <th>분석항목</th>
                  <th>내용</th>
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
          <p class="desc list_bottom">복제 수 변이라 불리는 CNV(Copy Number Variation)는 염색체 내에 1Kb 이상의 특정 염기서열 부위가 결손 되거나 증폭되어 반복적으로 나타나는 DNA 변이를 의미합니다.
            이러한 복제 수 변이는 암세포 증식 외에도 다양한 유전질환을 유발할 수 있습니다.
            CGH 칩 데이터 분석 시 DGV, ClinVar등의 Database를 활용하여 다양한 질병이나 특정 Phenotype의 원인이 되는 CNV를 찾을 수 있으며 CGH Microarray를 이용하여 유전자와 염색체상의 CNV를 분석할 수 있습니다.
            마크로젠은 주요한 CGH Microarray 장비를 갖추고 있어 연구자의 필요에 따라 제품 선택이 가능하며, 세포 치료제에 사용되는 세포주에 대한 CNV검증서비스도 제공하고 있습니다.</p>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title figure_bottom">CGH Microarray Platforms </p>
              <p class="sub-list-title">Agilent CGH</p>
              <ul class="list-circle-dot figure_bottom">
                <li>High resolution(60mer) &#38; Sensitivity CGH/CNV chip 제공</li>
                <li>Human 이외에 organism과 관련된 CGH/CNV chip을 제공하고 있으며 Custom 제작도 가능</li>
                <li>FFPE 샘플을 이용한 CGH 실험가능</li>
              </ul>
              <table class="table">
                <colgroup>
                  <col style="width:33.3333%;">
                  <col style="width:33.3333%;">
                  <col style="width:33.3333%;">
                </colgroup>
                <thead>
                <tr>
                  <th>제품</th>
                  <th>Probe수</th>
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
                  <th>분석항목</th>
                  <th>내용</th>
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
            <a href="mailto:array@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveChipQuotation.do?menuCd=QUO500" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="mailto:array@macrogen.com" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
          <p class="subject">수많은 DNA 부위의 메틸화 정도를 동시에 수치화하여 분석하는 방법입니다. </p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/business/img-microarray-epigenome.png" alt="EpigenomeMicroarray">
          </div>
          <hr class="divider">
          <p class="font-h4 main-title">DNA Methylation Microarray</p>
          <p class="desc list_bottom">DNA 메틸화(DNA methylation)란 유전자의 발현을 조절하는 화학적 변형으로서 유전자의 전사조절영역을 중심으로 존재하는 CpG site의 시토신(Cytosine)에 메틸기가 생성되는 현상입니다.
            질병이나 표현형에 영향을 주는 원인이 특정 CpG 부위의 메틸기 변화에 있으면 그룹 간 통계 분석을 통해 해당 CpG부위가 어디인지 전체 DNA에서 찾을 수 있습니다.  종양억제유전자과 같이 종양을 억제하는 데 중요한 역할을 하는 유전자에 메틸기가 작용하게 되면 암을 유발하는 치명적인 결과를 초래할 수 있습니다.  마크로젠은 Illumina Microarray를 이용하여 DNA의 메틸화 여부를 정확하게 확인하며, 통계분석을 통해 생물학적인 의미를 부여하는 작업을 진행합니다. 메틸레이션 칩 국내 최다 분석 경험을 보유하고 있으며 메틸레이션 데이터와 유전자 발현 데이터를 통해 상호연관성을 분석하는 프리미엄 서비스를 제공합니다.</p>
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
                  <th>제품</th>
                  <th>컨텐츠</th>
                  <th>특징</th>
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
                  <td>칩 당 8개 샘플 실험<br>
                    FFPE 시료 실험가능
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
                  <th>분석항목</th>
                  <th>내용</th>
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
            <a href="mailto:array@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
           <a href="https://dna.macrogen.com/quotation/retrieveChipQuotation.do?menuCd=QUO500" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="mailto:array@macrogen.com" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
        if(location.hash != "#_tab-box") {
        	
       		var loadtab = $('._swiperTab .swiper-slide').filter(location.hash);
       		loadtab.click();	// tab content view
       		setTabContent(loadtab.index());	// scroll 이동
        }
   		
        $(window).on("hashchange",function () { 
        	location.reload();
        });
    </script>
</body>
