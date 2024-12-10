<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<%-- 모든 URL에 대한 메타테그 --%>
<c:set var="headerCurrentUrl" value="${pageContext.request.requestURL}"/>
<c:set var="headerTitle" value="Macrogen"/>
<c:set var="headerDescription" value="Macrogen, a global leader in digital healthcare powered by Big Data and AI, is dedicated to delivering a $100 'DNA blueprint' to advance precision medicine."/>
<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok"/>
<c:set var="canonicalUrl" value="${pageContext.request.requestURL}"/>

<%-- 메인 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/main')}">
	<c:set var="headerTitle" value="Macrogen"/>
	<c:set var="headerDescription" value="Macrogen, a global leader in digital healthcare powered by Big Data and AI, is dedicated to delivering a $100 'DNA blueprint' to advance precision medicine."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok"/>
</c:if>

<%-- 회사소개 > 기업개요 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/overview')}">
	<c:set var="headerTitle" value="Macrogen I Company Overview"/>
	<c:set var="headerDescription" value="Macrogen, a global leader in digital healthcare powered by Big Data and AI, is dedicated to delivering a $100 'DNA blueprint' to advance precision medicine."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok"/>
</c:if>

<%-- 회사소개 > 경영진 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/bod')}">
	<c:set var="headerTitle" value="Macrogen I Leadership"/>
	<c:set var="headerDescription" value="Macrogen, a global leader in digital healthcare powered by Big Data and AI, is dedicated to delivering a $100 'DNA blueprint' to advance precision medicine."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, Seo Jeongsun, Kim Changhoon, Gentok"/>	
</c:if>

<%--회사소개 > 연혁 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/history')}">
	<c:set var="headerTitle" value="Macrogen I History"/>
	<c:set var="headerDescription" value="With 27 years of expertise, Macrogen has established itself as a global leader in sequencing, shaping the future of digital healthcare and advancing precision medicine."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, Gentok"/>	
</c:if>

<%-- 회사소개 > 비전 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/vision')}">
	<c:set var="headerTitle" value="Macrogen I Vision"/>
	<c:set var="headerDescription" value="Macrogen drives precision medicine by leveraging Big Data genomic insights to predict, diagnose, and deliver personalized healthcare solutions."/>
	<c:set var="headerKeyword" value="Precision medicine, Big Data, disease prediction, genomics, genetic testing, genomic information, disease diagnosis"/>	
</c:if>

<%-- 회사소개 > 인증 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/certification')}">
	<c:set var="headerTitle" value="Macrogen I Certification"/>
	<c:set var="headerDescription" value="Our technological excellence has been recognized around the world"/>
	<c:set var="headerKeyword" value="Quality management, ISO 9001, KOLAS, IOC/IEC 1725, CLIA, CAP, GMP, clinical trial, genetic testing, certification, NGS clinical laboratory certification, CSP"/>	
</c:if>

<%-- 글로벌네트워크 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/global-network')}">
	<c:set var="headerTitle" value="Macrogen I Global Network"/>
	<c:set var="headerDescription" value="Macrogen provides timely and systematic services tailored to the needs of customers  no matter where they are in the world."/>
	<c:set var="headerKeyword" value="Macrogen, Songdo Global Campus, Sejong Campus, Genome Center, Macrogen Europe, Macrogen Japan, Macrogen Spain, Macrogen Swiss, Macrogen France, Macrogen Italy, Macrogen Spain, Macrogen APAC, Macrogen subsidiary, Macrogen Chile, Macrogen USA, Psomagen"/>	
</c:if>

<%-- Resource > 특허 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/rnd/patent')}">
	<c:set var="headerTitle" value="Macrogen I Patents"/>
	<c:set var="headerDescription" value="We are strengthening our business by securing patents quickly to support our growth and innovation"/>
	<c:set var="headerKeyword" value="Macrogen job, Macrogen career, NGS, oligo, international sales, domestic sales, clinical sales, clinical technical services, CES, microbiome, IT, engineer, platform, service planning, web development, JAVA, research institute"/>	
</c:if>

<%-- Resource > 논문 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/rnd/thesis')}">
	<c:set var="headerTitle" value="Macrogen I Publications"/>
	<c:set var="headerDescription" value="Since its establishment, Macrogen has published 156 papers in SCI journals, including 19 in Nature and its sister journals,"/>
	<c:set var="headerKeyword" value="Macrogen job, Macrogen career, NGS, oligo, international sales, domestic sales, clinical sales, clinical technical services, CES, microbiome, IT, engineer, platform, service planning, web development, JAVA, research institute"/>	
</c:if>

<%-- Resource > 정밀의학연구소 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/rnd/institute/precision-medicine')}">
	<c:set var="headerTitle" value="Macrogen I R&D"/>
	<c:set var="headerDescription" value="Macrogen leads precision medicine with world-class analysis infrastructure and R&D competitiveness."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, precision medicine, bioinformatics, Macrogen R&D, DNA, sequencing, genomics, single-cell analysis"/>	
</c:if>

<%-- Resource > 생명정보학연구소 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/rnd/institute/bioinformatics')}">
	<c:set var="headerTitle" value="Macrogen I R&D"/>
	<c:set var="headerDescription" value="Macrogen leads precision medicine with world-class analysis infrastructure and R&D competitiveness."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, precision medicine, bioinformatics, Macrogen R&D, DNA, sequencing, genomics, single-cell analysis"/>	
</c:if>

<%-- 퍼스널 헬스케어 > 질병예측 유전자검사 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/healthcare/personal-genetic')}">
	<c:set var="headerTitle" value="Genetic Testing"/>
	<c:set var="headerDescription" value="We provide disease prediction genetic testing services, including major cancers, allowing early awareness of genetic risks."/>
	<c:set var="headerKeyword" value="Cancer genetic testing, disease prediction genetic testing, Macrogen, lung cancer, stomach cancer, colorectal cancer, genetic risk, cancer genetic risk"/>	
</c:if>

<%-- 퍼스널 헬스케어 > 건강관리 플랫폼 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/healthcare/dtc-genetic')}">
	<c:set var="headerTitle" value="GenTok I Healthcare Platform"/>
	<c:set var="headerDescription" value="By leveraging genetic testing and microbiome analysis, Macrogen empowers you to gain profound insights into your innate characteristics and current health status."/>
	<c:set var="headerKeyword" value="Gentok, Macrogen, genetic testing, DNA testing, microbiome testing, TheBiome, TheBiome Gold, body microbiome, gut microbiome, oral microbiome, vaginal microbiome"/>	
</c:if>

<%-- 퍼스널 헬스케어 > DTC 바이옴검사 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/healthcare/dtc-biome')}">
	<c:set var="headerTitle" value="Microbiome Testing"/>
	<c:set var="headerDescription" value="'the Biome Gold' gut microbiome analysis service monitors the current gut health status for health management."/>
	<c:set var="headerKeyword" value="TheBiome, TheBiome Gold, gut microbiome, microbiome, oral microbiome, vaginal microbiome"/>	
</c:if>

<%-- 반려동물 헬스케어 > 반려동물 유전자 분석 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/healthcare/pet-genetic')}">
	<c:set var="headerTitle" value="Pet DNA Testing"/>
	<c:set var="headerDescription" value="PET DNA testing service that helps keep your pets healthy and happy."/>
	<c:set var="headerKeyword" value="TheBiome, MyPetGene, pet genetic testing, pets, dog, cat, genetic testing, microbiome testing, pet DNA testing"/>	
</c:if>

<%-- 연구분석서비스 > NGS --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/research/ngs')}">
	<c:set var="headerTitle" value="Macrogen I NGS"/>
	<c:set var="headerDescription" value="Superior NGS service with a high level of precision and speed based on world-class analytical infrastructure"/>
	<c:set var="headerKeyword" value="Whole Genome Sequencing, Whole Exome Sequencing,Transcriptome Sequencing, Epigenome Sequencing, Metagenome Sequencing, ATAC analysis, Spatial Gene Expression analysis"/>	
</c:if>

<%-- 연구분석서비스 > CES --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/research/ces')}">
	<c:set var="headerTitle" value="Macrogen I CES"/>
	<c:set var="headerDescription" value="We provide a superior quality of CES services, based on extensive experience and expertise accumulated over 20 years"/>
	<c:set var="headerKeyword" value="Standard Sequencing, Identification, CES, Fragment , Customized Sequencing, Human ID"/>	
</c:if>

<%-- 연구분석서비스 > MICROARRAY --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/research/microarray')}">
	<c:set var="headerTitle" value="Macrogen I Microarray"/>
	<c:set var="headerDescription" value="Provides various microarray services including mRNA, miRNA, SNP, CGH, DNA Methylation."/>
	<c:set var="headerKeyword" value="MICROARRAY"/>	
</c:if>

<%-- 연구분석서비스 > Proteomics --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/research/proteomics')}">
	<c:set var="headerTitle" value="Macrogen I Proteomics"/>
	<c:set var="headerDescription" value="The latest in proteomics analysis, Macrogen offers multiplex screening with a quick turnaround for a reasonable cost."/>
	<c:set var="headerKeyword" value="Olink, Proteomics"/>	
</c:if>

<%-- 연구분석서비스 > GENE SYNTHESIS --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/research/gene-synthesis')}">
	<c:set var="headerTitle" value="Macrogen I Gene Synthesis"/>
	<c:set var="headerDescription" value="The gene synthesis service synthesizes genes according to the customer’s gene sequence order."/>
	<c:set var="headerKeyword" value="Gene Synthesis, Mutagenesis, Cloning"/>	
</c:if>

<%-- 연구분석서비스 > OLIGO --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/research/oligo')}">
	<c:set var="headerTitle" value="Macrogen I Oligo"/>
	<c:set var="headerDescription" value="Macrogen offers high-quality and quick Oligo using a state-of-the-art automated system."/>
	<c:set var="headerKeyword" value="Premade Oligo, Plate Oligo, Modified Oligo, Standard Oligo, DNA Oligo Synthesis, RNA Oligo Synthesis, Peptide Synthesis, Single Strand RNA, Double Strand RNA, RAPD Kits, Duplex Oligo"/>	
</c:if>

<%-- 연구분석서비스 > 모델동물사업부 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/research/model')}">
	<c:set var="headerTitle" value="Macrogen I CRISPR"/>
	<c:set var="headerDescription" value="Macrogen offers high-quality and quick Oligo using a state-of-the-art automated system."/>
	<c:set var="headerKeyword" value="CRISPR Knock-In/Out, Genetically Engineered Mouse, GEM, 모델동물, 크리스터, Crispr, 유전자변형마우스"/>	
</c:if>

<%-- 임상분석서비스 > 정밀의학 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/diagnosis/cancer')}">
	<c:set var="headerTitle" value="Macrogen  I Precision Medicine"/>
	<c:set var="headerDescription" value="We contribute to future medical innovation by integrating Big Data of genomic, medical, and lifestyle information to predict diseases."/>
	<c:set var="headerKeyword" value="Precision medicine, cancer risk prediction, cancer causation analysis, cancer monitoring,"/>	
</c:if>

<%-- 임상분석서비스 > 암 유전체 검사 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/diagnosis/cancer-genome')}">
	<c:set var="headerTitle" value="Genetic Testing for Cancer Risk"/>
	<c:set var="headerDescription" value="We predict cancer risk based on personal genome analysis and offers personalized treatment information through mutation analysis of cancer-related genes."/>
	<c:set var="headerKeyword" value="Cancer genome testing, hereditary cancer susceptibility testing, BRCA1/2, gastric cancer test panel, cancer panel"/>	
</c:if>

<%-- 임상분석서비스 > NGS 유전자 패널 검사실 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/diagnosis/ngs-panel')}">
	<c:set var="headerTitle" value="NGS-based Genetic Panel Lab"/>
	<c:set var="headerDescription" value="Macrogen Implements precision medicine through a personalized gene panel lab based on NGS."/>
	<c:set var="headerKeyword" value="NGS panel"/>	
</c:if>

<%-- 임상분석서비스 > GCLP --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/diagnosis/gclp')}">
	<c:set var="headerTitle" value="GCLP"/>
	<c:set var="headerDescription" value="Macrogen provides biomarker discovery and sample analysis services for clinical trials. Managed at CAP, CLIA, and CSP levels."/>
	<c:set var="headerKeyword" value="clinical diagnosis business, genetic testing, Bioinformatics analysis"/>	
</c:if>

<%-- 싱글셀분석서비스 > Single Cell Multi-omics Analysis --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/singlecell-multi')}">
	<c:set var="headerTitle" value="Single Cell Multi-omics Analysis"/>
	<c:set var="headerDescription" value="Macrogen provides personalized single cell multi-omics analysis services based on extensive experience and innovation."/>
	<c:set var="headerKeyword" value="single cell RNA sequencing,  single nucleus RNA sequencing, single cell immune profiling, single cell surface protein profiling, single cell ATAC sequencing, single cell Multiome sequencing, 싱Single cell Multi-omics analysis"/>	
</c:if>

<%-- 싱글셀분석서비스 > Spatial Transcriptome Analysis --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/spatital')}">
	<c:set var="headerTitle" value="Spatial Transcriptome Analysis"/>
	<c:set var="headerDescription" value="Spatial Transcriptome Analysis can simultaneously check spatial information and transcriptome information in tissues."/>
	<c:set var="headerKeyword" value="Spatial Transcriptome Analysis, Visium CytAssist, Visium, 10x Genomics"/>	
</c:if>

<%-- 싱글셀분석서비스 > Single Cell --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/business/singlecell')}">
	<c:set var="headerTitle" value="Single Cell (In situ / Spatial)"/>
	<c:set var="headerDescription" value="Macrogen offers single-cell sequencing and spatial transcriptomics optimized for your research needs."/>
	<c:set var="headerKeyword" value="Single cell multiomics, Nanostring, Spatial Transcriptomics, In Situ"/>	
</c:if>

<%-- 뉴스 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/newsroom/news')}">
	<c:set var="headerTitle" value="Macrogen I Press releases"/>
	<c:set var="headerDescription" value="Get the latest updates on Macrogen"/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen news"/>	
</c:if>

<%-- 공지사항 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/newsroom/notice')}">
	<c:set var="headerTitle" value="Macrogen I Updates"/>
	<c:set var="headerDescription" value="Get the latest updates on Macrogen"/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen news"/>	
</c:if>

<%-- 재무정보 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/ir/financial')}">
	<c:set var="headerTitle" value="Macrogen I Investors"/>
	<c:set var="headerDescription" value="Get the latest updates on Macrogen"/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen news, IR, disclosures, earnings"/>	
</c:if>

<%-- 공시정보 > 공고 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/ir/announcement')}">
	<c:set var="headerTitle" value="Macrogen I Investors"/>
	<c:set var="headerDescription" value="Stay updated with the latest investor relations information from Macrogen"/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen news, IR, disclosures, earnings"/>	
</c:if>

<%-- 공시정보 > 공시정보 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/ir/disclosure')}">
	<c:set var="headerTitle" value="Macrogen I Investors"/>
	<c:set var="headerDescription" value="Stay updated with the latest investor relations information from Macrogen"/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen news, IR, disclosures, earnings"/>	
</c:if>

<%-- IR소식 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/ir/news')}">
	<c:set var="headerTitle" value="Macrogen I Investors"/>
	<c:set var="headerDescription" value="Stay updated with the latest investor relations information from Macrogen"/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen news, IR, disclosures, earnings"/>	
</c:if>

<%-- 투자자 문의 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/ir/investor-inquiries')}">
	<c:set var="headerTitle" value="Macrogen I Investors"/>
	<c:set var="headerDescription" value="Stay updated with the latest investor relations information from Macrogen"/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen news, IR, disclosures, earnings"/>	
</c:if>

<%-- ESG경영 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/esg-management')}">
	<c:set var="headerTitle" value="Macrogen I Sustainability"/>
	<c:set var="headerDescription" value="Creating a sustainable future together."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen ESG, sustainability"/>	
</c:if>

<%-- 윤리경영 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/ethical-management')}">
	<c:set var="headerTitle" value="Macrogen I Sustainability"/>
	<c:set var="headerDescription" value="Creating a sustainable future together."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen ESG, sustainability"/>	
</c:if>

<%-- 사회공헌 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/social-contribution')}">
	<c:set var="headerTitle" value="Macrogen I Sustainability"/>
	<c:set var="headerDescription" value="Creating a sustainable future together."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen ESG, sustainability"/>	
</c:if>

<%-- 온실가스 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/greenhouse-gas')}">
	<c:set var="headerTitle" value="Macrogen I Sustainability"/>
	<c:set var="headerDescription" value="Creating a sustainable future together."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen ESG, sustainability"/>	
</c:if>

<%-- CONTACT US --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/contact-us')}">
	<c:set var="headerTitle" value="Macrogen I Contact us"/>
	<c:set var="headerDescription" value="Macrogen, a global leader in digital healthcare powered by Big Data and AI, is dedicated to delivering a $100 'DNA blueprint' to advance precision medicine."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen Contact us"/>	
</c:if>

<%-- 개인정보 처리방침 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/policy/privacy')}">
	<c:set var="headerTitle" value="Privacy Statement"/>
	<c:set var="headerDescription" value="Macrogen, a global leader in digital healthcare powered by Big Data and AI, is dedicated to delivering a $100 'DNA blueprint' to advance precision medicine."/>
	<c:set var="headerKeyword" value=""/>	
</c:if>

<%-- 영상정보처리기기 운영·관리 방침 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/policy/image')}">
	<c:set var="headerTitle" value="Video Surveillance Operation and Management Policy"/>
	<c:set var="headerDescription" value="Macrogen, a global leader in digital healthcare powered by Big Data and AI, is dedicated to delivering a $100 'DNA blueprint' to advance precision medicine."/>
	<c:set var="headerKeyword" value=""/>	
</c:if>

<%-- Sitemap --%>
<c:if test="${fn:contains(headerCurrentUrl,'/en/company/sitemap')}">
	<c:set var="headerTitle" value="Macrogen I Sitemap"/>
	<c:set var="headerDescription" value="Macrogen, a global leader in digital healthcare powered by Big Data and AI, is dedicated to delivering a $100 'DNA blueprint' to advance precision medicine."/>
	<c:set var="headerKeyword" value="Macrogen, healthcare, genomics, DNA, genetic testing, gene, genome, sequencing, RNA, single-cell analysis, single cell, Macrogen, digital healthcare, gentok, Macrogen sitemap"/>	
</c:if>

<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="Referrer" content="origin"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta name="viewport" content="width=1366,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="apple-mobile-web-app-title" content="Macrogen" />
<meta name="viewport" content="width=1244"/>

<!-- SEO -->
<title>${headerTitle}</title>
<link rel="canonical" href="${headerCurrentUrl}">
<meta property="og:url" content="${headerCurrentUrl}">
<meta property="og:title" content="${headerTitle}">
<meta property="og:description" content="${headerDescription}">
<meta property="og:image" content="/resources/images/common/them.png">
<meta name="keywords" content="${headerKeyword}">
<meta name="description" content="${headerDescription}">
<!-- SEO -->

<!-- pc, en -->
<!-- IE 10 이하 -->
<link rel="shortcut icon" href="/publishing/pc-en/dist/favicon/favicon.ico">
<!-- Android -->
<link rel="icon" type="image/png" sizes="36x36" href="/publishing/pc-en/dist/favicon/android-icon-36x36.png">
<link rel="icon" type="image/png" sizes="48x48" href="/publishing/pc-en/dist/favicon/android-icon-48x48.png">
<link rel="icon" type="image/png" sizes="72x72" href="/publishing/pc-en/dist/favicon/android-icon-72x72.png">
<link rel="icon" type="image/png" sizes="96x96" href="/publishing/pc-en/dist/favicon/android-icon-96x96.png">
<link rel="icon" type="image/png" sizes="144x144" href="/publishing/pc-en/dist/favicon/android-icon-144x144.png">
<link rel="icon" type="image/png" sizes="192x192" href="/publishing/pc-en/dist/favicon/android-icon-192x192.png">
<!-- apple -->
<link rel="apple-touch-icon" sizes="57x57" href="/publishing/pc-en/dist/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/publishing/pc-en/dist/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/publishing/pc-en/dist/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/publishing/pc-en/dist/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/publishing/pc-en/dist/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/publishing/pc-en/dist/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/publishing/pc-en/dist/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/publishing/pc-en/dist/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/publishing/pc-en/dist/favicon/apple-icon-180x180.png">
<!-- 브라우저용 표준 -->
<link rel="icon" type="image/png" sizes="16x16" href="/publishing/pc-en/dist/favicon/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="/publishing/pc-en/dist/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/publishing/pc-en/dist/favicon/favicon-96x96.png">
<!-- ms -->
<meta name="msapplication-TileImage" content="/publishing/pc-en/dist/favicon/ms-icon-70x70.png">
<meta name="msapplication-TileImage" content="/publishing/pc-en/dist/favicon/ms-icon-144x144.png">
<meta name="msapplication-TileImage" content="/publishing/pc-en/dist/favicon/ms-icon-150x150.png">
<meta name="msapplication-TileImage" content="/publishing/pc-en/dist/favicon/ms-icon-310x310.png">
<!-- manifest -->
<!-- <link rel="manifest" href="/publishing/pc-en/dist/favicon/manifest.json"> -->
<!-- Windows 8.1 + IE11 이상 -->
<meta name="msapplication-config" content="/publishing/pc-en/dist/favicon/browserconfig.xml">

<meta name="robots" content="ALL">
<meta property="og:type" content="website">



<c:set var="cssVar" value="renewal" />
<link type="text/css" rel="stylesheet" href="/publishing/pc-en/dist/css/macrogen_component_pc.css?${cssVar}"/>
<link type="text/css" rel="stylesheet" href="/publishing/pc-en/dist/css/macrogen_page_pc_ko.css?${cssVar}"/>
<link type="text/css" rel="stylesheet" href="/publishing/pc-en/dist/css/bootstrap-ie11.css" media="all and (-ms-high-contrast: active), (-ms-high-contrast: none)">
<link rel="stylesheet" href="/resources/css/footer.css" />
<script src="/publishing/pc-en/dist/js/bundle.js?${cssVar}"></script>
<![if !IE]><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script><![endif]>
<script nomodule>window.MSInputMethodContext && document.documentMode && document.write('<script src="https://cdn.jsdelivr.net/combine/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js,npm/ie11-custom-properties@4,npm/element-qsa-scope@1"><\/script><script crossorigin="anonymous" src="https://polyfill.io/v3/polyfill.min.js?features=default%2CNumber.parseInt%2CNumber.parseFloat%2CArray.prototype.find%2CArray.prototype.includes"><\/script>');</script>
<script src="/publishing/pc-en/dist/js/common.js?${cssVar}"></script>
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>

<style>
	[v-cloak] { display: none; }
	.document-dimed, .loading-dimed {position:fixed;top:0;left:0;bottom:0;right:0;z-index:999;background:#aaa;opacity:0.7;}
	.loading-dimed.visual {position:absolute;top:0;left:0;width:100%;height:100%;}
	.loading-dimed {z-index:2000;}
	.loading-dimed:after {content:'';position:absolute;top:50%;left:50%;z-index:1;width:40px;height:40px;margin:-20px 0 0 -20px;background:url('/images/loading.svg') no-repeat 0 0;}
	.loading-dimed:before {content:'';position:absolute;top:0;left:0;width:100%;height:100%;opacity:0;background:#000;}
	.document-dimed:before {content:'';position:absolute;top:0;left:0;width:100%;height:100%;opacity:0.8;background:#000;}


	@font-face {
	  font-family: "NeuzeitGrotesk";
	  font-style: normal;
	  font-weight: 300;
	  src: local(※), url(/resources/fonts/NeuzeitGrotesk-Light.woff2) format("woff2"), url(/resources/fonts/NeuzeitGrotesk-Light.woff) format("woff");
	  unicode-range: U+0041-005A, U+0061-007A, U+0030-0039;
	}
	@font-face {
	  font-family: "NeuzeitGrotesk";
	  font-style: normal;
	  font-weight: 400;
	  src: local(※), url(/resources/fonts/NeuzeitGrotesk-Regular.woff2) format("woff2"), url(/resources/fonts/NeuzeitGrotesk-Regular.woff) format("woff");
	  unicode-range: U+0041-005A, U+0061-007A, U+0030-0039;
	}
	@font-face {
	  font-family: "NeuzeitGrotesk";
	  font-style: normal;
	  font-weight: 700;
	  src: local(※), url(/resources/fonts/NeuzeitGrotesk-Bold.woff2) format("woff2"), url(/resources/fonts/NeuzeitGrotesk-Bold.woff) format("woff");
	  unicode-range: U+0041-005A, U+0061-007A, U+0030-0039;
	}
	@font-face {
	  font-family: "NeuzeitGrotesk";
	  font-style: normal;
	  font-weight: 900;
	  src: local(※), url(/resources/fonts/NeuzeitGrotesk-Black.woff2) format("woff2"), url(/resources/fonts/NeuzeitGrotesk-Black.woff) format("woff");
	  unicode-range: U+0041-005A, U+0061-007A, U+0030-0039;
	}
	.wrap .header.header-bg-white .inner .section_gnb nav ul li span, 
	.wrap .header-main.header-bg-white .inner .section_gnb nav ul li span, 
	.wrap .header .gnb-2depth .box .item ul li a, .wrap .header-main .gnb-2depth .box .item ul li a,
	.wrap .header .gnb-2depth .box .item .title a, .wrap .header-main .gnb-2depth .box .item .title a,
	.en .wrap .full-bg .frame .hero-title, .wrap .full-bg .frame.frameB .hero-title, h2.ir-diff,
	.macrogen.full-bg .frame .hero-title.en, .section_agreement .main-title, 
	.footer{
		font-family: "NeuzeitGrotesk", sans-serif;
	}
</style>
<script src="/common/js/jquery.form.min.js"></script>
<script src="/common/js/jquery.validate.min.js"></script>
<script src="/common/js/jquery.cookie.js"></script>

<script src="/common/js/moment.min.js"></script>
<script src="/common/js/moment-timezone-with-data.min.js"></script>

<script src="/common/js/vue${js.path.min}.js"></script>
<script src="/js/vueComponent/vue-filter.js" ></script>
<script src="/js/app/App.js"></script>
<script>
	$(function() {
		var option = {};
		option.locale = '${rc.locale}';
		App.init(option);
	});
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "62dfd455212fc4";
if(window.wcs) {
wcs_do();
}
</script>
<meta name="naver-site-verification" content="aaeba0b9789dc2e626a02b3d90cf622faaecff3b" />