<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>	
	<div class="wrap">
		<div class="full-bg business_bg bg-type">
			<!--header 수정시 메인 header 같이 수정해주세요-->
			<header class="header" id="header">
				<c:import url="/inc/header-inner-gnb" />
			</header>
			<div class="frame frameB">
	            <nav aria-label="breadcrumb">
	                <ol class="breadcrumb breadcrumb-white"> 
	                    <li class="breadcrumb-item">Home</li>
	                    <li class="breadcrumb-item">SERVICE</li>
	                    <li class="breadcrumb-item">Research Services</li>
	                    <li class="breadcrumb-item">Proteomics</li>
	                </ol>
	            </nav>
	            <div class="hero-title en">Proteomics</div>
	            <a href="#_tab-box" class="btn btn-round btn-service">
	                <span>SERVICE</span>
	                <i class="icon icon-arrow-bottom-short-white"></i>
	            </a>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business proteomics">
	            <div class="subject-box">
	                <p class="font-h4 title">Using the Olink Panel, the latest in proteomics analysis, Macrogen is able to offer multiplex screening with a quick turnaround for a reasonable cost.</p>
	                <p class="subject info">Olink is a panel based on Proximity Extension Assay, or PEA, to analyze proteomics data.</p>
	                <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_proteomics01.png" alt=""/></div>
	                <p class="subject02">Macrogen applies the latest in proteomics analysis to offer proteomics screening services. The proteome is the final product of genetic data, generated through the translation of RNA. Being the expression of both genetic and environmental data, thus reflecting the actual biological phenomena taking place, make them highly useful in research, but accessing them have been particularly challenging over the years.<br><br>Macrogen’s Olink panel has overcome these challenges to offer a proteomic solution to researchers around the world. Macrogen’s goal is to help realize tailored medicine that is optimized for each individual patient, by offering multiomics analysis that analyzes both genomic and proteomic data.</p>
	            </div>
	            
	            <!--탭 슬라이드-->
	            <div class="tab-box" id="_tab-box">
	                <p class="font-h4 title">SERVICE</p>
	            </div>
	            <!--//탭 슬라이드-->
	
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <!-- Olink -->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Olink</p>
	                    <p class="subject">The Olink panel is a high-quality immune system analysis that both identifies and quantifies biomarkers by analyzing at once a number of proteins of relevance.</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_proteomics02.png" alt=""/></div>
	                    <hr class="divider">
	                    <p class="desc02">Through its Olink panel, Macrogen provides a wide range of solutions involving an efficient identification of protein biomarkers, from protein screening to target identification to verification.<br><br>The Proximity Extension Assay, or PEA, leveraged by Olink combines an immune system analysis using antibodies with the PCR method using DNA. Once a pair of antibodies marked using a DNA oligo-nucleotide (barcode) attaches to the target protein in the sample, the quantitative PCR (or qPCR) method or NGS platform is used to read the results. This allows for the concentration of hundreds of protein biomarkers to be quantified in one go. Multi-layered analyses with high specificity can also be conducted, making the panel particularly useful for the discovery and development of protein biomarkers.</p>
	                    <div class="table_wrap">
	                        <table class="table">
	                            <colgroup>
	                                <col width="32%">
	                                <col width="33%">
	                                <col width="34%">
	                            </colgroup>
	                            <thead>
	                                <tr>
	                                    <th scope="col">Product</th>
	                                    <th scope="col">Contents</th>
	                                    <th scope="col">Features</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
	                                    <td>Olink® Explore 384<br>Olink® Explore 1536<br>Olink® Explore 3072</td>
	                                    <td>~370 Proteins<br>~1,480 Proteins<br>~2,960 Proteins
	                                    </td>
	                                    <td>Mass screening and NGS of data from <br>the entire Plink protein library can be offered</td>
	                                </tr>
	                                <tr>
	                                    <td>Olink® Target 96</td>
	                                    <td>92 Proteins</td>
	                                    <td>Research on 15 major pathways <br>(including one panel using mice) is possible</td>
	                                </tr>
	                                <tr>
	                                    <td>Olink® Target 48 Cytokine</td>
	                                    <td>45 Proteins</td>
	                                    <td>Appropriate for research on cyotokine and <br>infection-related diseases; Quantitative <br>values can be provided from the tests</td>
	                                </tr>
	                                <tr>
	                                    <td>Olink® FLEX</td>
	                                    <td>15~21 Proteins</td>
	                                    <td>From the 200 proteins carefully selected <br>from the Olink data base, further <br>customization can be carried out for the <br>panel; Quantitative values can be provided <br>from the tests</td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <div class="proteomics_diagram">
	                        <ul>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon1.png" alt="Cardiometabolic"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon2.png" alt="Cardiovascular Ⅱ"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon3.png" alt="Cardiovascular Ⅲ"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon4.png" alt="Cell Regulation"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon5.png" alt="Development"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon6.png" alt="Immune Response"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon7.png" alt="Immuno-Oncology"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon8.png" alt="Inflammation"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon9.png" alt="Metabolism"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon10.png" alt="Neurology"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon11.png" alt="Neuro Exploratory"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon12.png" alt="Organ Damage"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon13.png" alt="OncologyⅡ"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon14.png" alt="Oncology Ⅲ"/></li>
	                            <li><img src="/publishing/pc-ko/dist/img/business/img_proteomics_icon15.png" alt="Mouse Exploratory"/></li>
	                        </ul>
	                        <p>※It's a kind of Olink® Target 96 panel</p>
	                    </div>
	                    <div class="table_wrap">
	                        <div class="title">Analysis</div>
	                        <table class="table">
	                            <colgroup>
	                                <col width="40%">
	                                <col width="60%">
	                            </colgroup>
	                            <thead>
	                                <tr>
	                                    <th scope="col">Areas of Analysis</th>
	                                    <th scope="col">Description</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
	                                    <td rowspan="4">Data analysis of DE</td>
	                                    <td class="left">Basic statistics(Fold change, group mean, sd etc.)</td>
	                                </tr>
	                                <tr>
	                                    <td class="left">Identifying differentially expressed protein(T-test, Mann-Whitney U test, etc.)</td>
	                                </tr>
	                                <tr>
	                                    <td class="left">Multiple testing correction (FDR, Bonferroni etc.)</td>
	                                </tr>
	                                <tr>
	                                    <td class="left">Clustering Analysis for DEP ( Hierarchical clustering, etc.)</td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	                <!-- //Olink -->
	            </div>
	            <!-- //탭 컨텐츠 -->
	
	            
	        </div>
	    </div>
	</div>

</body>