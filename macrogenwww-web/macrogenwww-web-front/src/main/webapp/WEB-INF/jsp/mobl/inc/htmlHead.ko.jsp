<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<%-- 모든 URL에 대한 메타테그 --%>
<c:set var="headerCurrentUrl" value="${pageContext.request.requestURL}"/>
<c:set var="headerTitle" value="마크로젠"/>
<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>
<c:set var="canonicalUrl" value="${pageContext.request.requestURL}"/>	

<%-- 메인 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/main')}">
	<c:set var="headerTitle" value="마크로젠"/>
	<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>	
</c:if>

<%-- 회사소개 > 기업개요 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/overview')}">
	<c:set var="headerTitle" value="마크로젠 기업개요"/>
	<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>
</c:if>

<%-- 회사소개 > 경영진 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/bod')}">
	<c:set var="headerTitle" value="마크로젠 경영진"/>
	<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 서정선, 김창훈, 젠톡"/>	
</c:if>

<%--회사소개 > 연혁 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/history')}">
	<c:set var="headerTitle" value="마크로젠 연혁"/>
	<c:set var="headerDescription" value="마크로젠은 설립 이래 27년간 글로벌 유전체 분석 리더로서 자리매김하고, 디지털 헬스케어 기업으로 도약하며 인류 건강의 새 역사를 만들고 있습니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>	
</c:if>

<%-- 회사소개 > 비전 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/vision')}">
	<c:set var="headerTitle" value="마크로젠 비전"/>
	<c:set var="headerDescription" value="마크로젠은 빅데이터 유전체 정보 기반의 연구개발 및 의료기관 협업을 통해 질병을 예측하고 진단하며, 맞춤 치료의 방안을 제시하는 미래 정밀의학 분야의 선도기업입니다."/>
	<c:set var="headerKeyword" value="정밀의학, 빅데이터, 질병예측, 유전체분석, 유전자검사, 유전체정보, 질병진단"/>	
</c:if>

<%-- 회사소개 > 인증 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/certification')}">
	<c:set var="headerTitle" value="마크로젠 인증"/>
	<c:set var="headerDescription" value="마크로젠은 세계 최고 수준의 서비스를 제공하기 위해 글로벌 및 국내인증 및 CSP 프로그램을 취득해오고 있습니다. "/>
	<c:set var="headerKeyword" value="품질경영, ISO9001, KOLAS, IOC/IEC1725, CLIA, CAP, GMP, 임상시험검체분석기관, 유전자검사 정확도평가 인증, NGS임상검사실 인증, CSP"/>	
</c:if>

<%-- 글로벌네트워크 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/global-network')}">
	<c:set var="headerTitle" value="마크로젠 글로벌 네트워크"/>
	<c:set var="headerDescription" value="마크로젠은 전세계 주요 도시에 위치한 해외법인 및 지사, 지놈센터 네트워크를 통해 현지 고객 니즈에 부합하는 맞춤형 서비스를 제공하고 있습니다."/>
	<c:set var="headerKeyword" value="마크로젠, 송도 글로벌 캠퍼스, 세종캠퍼스, 지놈센터, 마크로젠 유럽, 마크로젠 일본, 마크로젠 스페인, 스위스 지놈센터, 폴란드 지놈센터, 프랑스 지놈센터, 이탈리아 지놈센터, 스페인 지놈센터, APAC 법인, 칠레 지놈센터, 소마젠"/>	
</c:if>

<%-- 채용 > 인재상 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/qualified-image')}">
	<c:set var="headerTitle" value="마크로젠 채용"/>
	<c:set var="headerDescription" value="마크로젠과 함께 건강한 미래를 만들어 갈 인재와 최고의 전문가를 찾고 있습니다. 각 직무별 채용정보 확인하고 지금 바로 지원하세요."/>
	<c:set var="headerKeyword" value="마크로젠 채용, 채용정보, NGS, oligo, 해외영업, 국내영업, 임상영업, 임상기술서비스, CES, 마이크로바이옴, IT, 엔지니어, 플랫폼, 서비스기획, 웹개발, JAVA, 연구소"/>	
</c:if>

<%-- 채용 > 인사제도 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/hrm')}">
	<c:set var="headerTitle" value="마크로젠 채용"/>
	<c:set var="headerDescription" value="마크로젠과 함께 건강한 미래를 만들어 갈 인재와 최고의 전문가를 찾고 있습니다. 각 직무별 채용정보 확인하고 지금 바로 지원하세요."/>
	<c:set var="headerKeyword" value="마크로젠 채용, 채용정보, NGS, oligo, 해외영업, 국내영업, 임상영업, 임상기술서비스, CES, 마이크로바이옴, IT, 엔지니어, 플랫폼, 서비스기획, 웹개발, JAVA, 연구소"/>	
</c:if>

<%-- 채용 > 채용안내 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/recruit')}">
	<c:set var="headerTitle" value="마크로젠 채용"/>
	<c:set var="headerDescription" value="마크로젠과 함께 건강한 미래를 만들어 갈 인재와 최고의 전문가를 찾고 있습니다. 각 직무별 채용정보 확인하고 지금 바로 지원하세요."/>
	<c:set var="headerKeyword" value="마크로젠 채용, 채용정보, NGS, oligo, 해외영업, 국내영업, 임상영업, 임상기술서비스, CES, 마이크로바이옴, IT, 엔지니어, 플랫폼, 서비스기획, 웹개발, JAVA, 연구소"/>	
</c:if>

<%-- Resource > 특허 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/rnd/patent')}">
	<c:set var="headerTitle" value="마크로젠 특허"/>
	<c:set var="headerDescription" value="마크로젠은 국내 및 해외 특허 출원을 통해 신속하게 권리를 확보함으로써 본격 시장진출에 앞서 안정적인 사업 기반을 마련해 가고 있습니다. "/>
	<c:set var="headerKeyword" value="특허, 마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어"/>	
</c:if>

<%-- Resource > 논문 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/rnd/thesis')}">
	<c:set var="headerTitle" value="마크로젠 논문"/>
	<c:set var="headerDescription" value="마크로젠은 설립 이후 지금까지 유전체 연구분야에서 총 156편의 논문을 SCI급 학술지에 게재했으며, 그 중 19편은 네이처와 그 자매지에 발표되는 성과를 달성하였습니다."/>
	<c:set var="headerKeyword" value="논문, 네이쳐, 마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, SCI급, SCI, 네이처"/>	
</c:if>

<%-- Resource > 정밀의학연구소 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/rnd/institute/precision-medicine')}">
	<c:set var="headerTitle" value="마크로젠 R&D"/>
	<c:set var="headerDescription" value="마크로젠은 세계 최고 수준의 분석 인프라와 R&D 경쟁력으로 미래 정밀의학을 선도합니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 정밀의학, 생명정보학, 마크로젠 연구소, DNA, 시퀀싱, 유전체분석, 싱글셀분석"/>	
</c:if>

<%-- Resource > 생명정보학연구소 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/rnd/institute/bioinformatics')}">
	<c:set var="headerTitle" value="마크로젠 R&D"/>
	<c:set var="headerDescription" value="마크로젠은 세계 최고 수준의 분석 인프라와 R&D 경쟁력으로 미래 정밀의학을 선도합니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 정밀의학, 생명정보학, 마크로젠 연구소, DNA, 시퀀싱, 유전체분석, 싱글셀분석"/>	
</c:if>

<%-- 퍼스널 헬스케어 > 질병예측 유전자검사 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/healthcare/personal-genetic')}">
	<c:set var="headerTitle" value="질병예측 유전자검사"/>
	<c:set var="headerDescription" value="폐암, 위암, 대장암 등 주요 암을 포함한 질병예측 유전자검사 서비스로 유전적 위험을 미리 알고 건강한 생활습관을 가질 수 있도록 돕습니다."/>
	<c:set var="headerKeyword" value="암 유전자검사, 질병예측 유전자검사, 마크로젠, 폐암, 위암, 대장암, 유전적 위험, 암 유전적 위험도"/>	
</c:if>

<%-- 퍼스널 헬스케어 > 건강관리 플랫폼 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/healthcare/dtc-genetic')}">
	<c:set var="headerTitle" value="젠톡 I 건강관리 플랫폼"/>
	<c:set var="headerDescription" value="유전자검사를 통해 타고난 나의 특성을 알고, 몸 속 미생물 분석으로 현재 건강 상태를 모니터링하며 건강관리를 할 수 있도록 돕습니다."/>
	<c:set var="headerKeyword" value="젠톡, 마크로젠, 젠톡 유전자검사, 몸BTI, 유전자검사, 마이크로바이옴 검사, 더바이옴, 더바이옴 골드, 몸속미생물, 장내미생물, 구강미생물, 질내미생물"/>	
</c:if>

<%-- 퍼스널 헬스케어 > DTC 바이옴검사 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/healthcare/dtc-biome')}">
	<c:set var="headerTitle" value="마이크로바이옴 검사"/>
	<c:set var="headerDescription" value="더바이옴 골드 - 장내 미생물 분석 서비스를 통해 현재 장 건강상태를 모니터링하며 건강관리를 할 수 있습니다."/>
	<c:set var="headerKeyword" value="더바이옴, 더바이옴 골드, 장내 미생물, 마이크로바이옴, 구강미생물, 질내미생물"/>	
</c:if>

<%-- 반려동물 헬스케어 > 반려동물 유전자 분석 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/healthcare/pet-genetic')}">
	<c:set var="headerTitle" value="반려동물 유전자검사"/>
	<c:set var="headerDescription" value="반려동물의 유전질환을 조기에 예측해 식습관 개선, 운동 등 맞춤 관리를 통한 질병예방이 가능합니다. "/>
	<c:set var="headerKeyword" value="더바이옴, 마이펫진, 반려동물 유전자검사, 반려동물, 강아지, 고양이, 유전자검사, 마이크로바이옴검사"/>	
</c:if>

<%-- 연구분석서비스 > NGS --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/research/ngs')}">
	<c:set var="headerTitle" value="마크로젠 I NGS"/>
	<c:set var="headerDescription" value="국내 최대 규모의 최첨단 장비를 통해  NGS 유전체 분석 서비스와 바이오인포메틱스 결과를 함께 제공합니다."/>
	<c:set var="headerKeyword" value="Whole Genome Sequencing, Whole Exome Sequencing,Transcriptome Sequencing, Epigenome Sequencing, Metagenome Sequencing, ATAC analysis, Spatial Gene Expression analysis"/>	
</c:if>

<%-- 연구분석서비스 > CES --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/research/ces')}">
	<c:set var="headerTitle" value="마크로젠 I CES"/>
	<c:set var="headerDescription" value="자동화시스템과 20년 이상의 풍부한 경험을 바탕으로 빠르고 정확한 CES 유전체 분석 서비스를 제공합니다."/>
	<c:set var="headerKeyword" value="Standard Sequencing, Identification, CES, Fragment , Customized Sequencing, Human ID"/>	
</c:if>

<%-- 연구분석서비스 > MICROARRAY --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/research/microarray')}">
	<c:set var="headerTitle" value="마크로젠 I Microarray"/>
	<c:set var="headerDescription" value="mRNA, miRNA, SNP, CGH, DNA Methylation등 다양한 연구목적의 유전자 분석 서비스를 제공합니다."/>
	<c:set var="headerKeyword" value="MICROARRAY"/>	
</c:if>

<%-- 연구분석서비스 > Proteomics --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/research/proteomics')}">
	<c:set var="headerTitle" value="마크로젠 I Proteomics"/>
	<c:set var="headerDescription" value="최신 단백질 분석기술을 이용해 단백질 스크리닝 서비스를 제공합니다."/>
	<c:set var="headerKeyword" value="오링크, Olink, Proteomics, 단백질 분석, 단백체 분석"/>	
</c:if>

<%-- 연구분석서비스 > GENE SYNTHESIS --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/research/gene-synthesis')}">
	<c:set var="headerTitle" value="마크로젠 I 유전자합성"/>
	<c:set var="headerDescription" value="DNA 시퀀싱뿐만 아니라 무료 Cloning을 통해 Plasmid DNA 상태의 유전자 합성 서비스를 제공합니다."/>
	<c:set var="headerKeyword" value="유전자 합성, Gene Synthesis, Mutagenesis, 백신 제조, 유전자 치료, 형질 발현, Cloning"/>	
</c:if>

<%-- 연구분석서비스 > OLIGO --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/research/oligo')}">
	<c:set var="headerTitle" value="마크로젠 I 올리고"/>
	<c:set var="headerDescription" value="고품질 원료와 최적화된 자동화 시스템을 이용하여 다양한 올리고 합성 서비스를 선보입니다."/>
	<c:set var="headerKeyword" value="Premade Oligo, Plate Oligo, Modified Oligo, Standard Oligo, DNA Oligo Synthesis, RNA Oligo Synthesis, Peptide Synthesis, Single Strand RNA, Double Strand RNA, RAPD Kits, Duplex Oligo"/>	
</c:if>

<%-- 연구분석서비스 > 모델동물사업부 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/research/model')}">
	<c:set var="headerTitle" value="마크로젠 I CRISPR"/>
	<c:set var="headerDescription" value="유전자 편집 혁신기술 CRISPR 시스템을 바탕으로 유전자 변형 마우스 생산 및 공급 서비스를 제공합니다."/>
	<c:set var="headerKeyword" value="CRISPR Knock-In/Out, Genetically Engineered Mouse, GEM, 모델동물, 크리스터, Crispr, 유전자변형마우스"/>	
</c:if>

<%-- 연구분석서비스 > 연구용 시약 및 소모품 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/research/reagent')}">
	<c:set var="headerTitle" value="마크로젠 I 연구용시약"/>
	<c:set var="headerDescription" value="전반적인 분자생물학 실험에 사용되는 키트, 시약, 플라스틱 웨어 등 용도별 제품을 제공합니다."/>
	<c:set var="headerKeyword" value="악센, Axen, 메틀러토레도, METLER TOLEDO"/>	
</c:if>

<%-- 임상분석서비스 > 정밀의학 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/diagnosis/cancer')}">
	<c:set var="headerTitle" value="마크로젠 I 정밀의학"/>
	<c:set var="headerDescription" value="유전체 정보, 의료 정보 및 생활정보의 통합 빅데이터를 구축하고 질병을 예측하여 미래 의학혁신에 이바지합니다."/>
	<c:set var="headerKeyword" value="정밀의학, 암발생위험예측, 암발생원인분석, 암발생모니터링, "/>	
</c:if>

<%-- 임상분석서비스 > 암 유전체 검사 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/diagnosis/cancer-genome')}">
	<c:set var="headerTitle" value="마크로젠 암유전체 검사"/>
	<c:set var="headerDescription" value="개인 유전체 분석을 통해 유전적 요인으로 발생할 수 있는 암에 대한 발생 위험을 예측하고, 암 발생 원인 유전자의 변이 분석으로 개인 맞춤형 치료 정보를 제공합니다."/>
	<c:set var="headerKeyword" value="암유전체검사, 유전성암감수성검사, BRCA1/2, 위암검사패널"/>	
</c:if>

<%-- 임상분석서비스 > NGS 유전자 패널 검사실 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/diagnosis/ngs-panel')}">
	<c:set var="headerTitle" value="NGS 유전자패널검사실"/>
	<c:set var="headerDescription" value="NGS을 기반으로 한 유전자 패널 검사실을 구축해 환자 개인 맞춤치료가 가능한 정밀의학 구현합니다."/>
	<c:set var="headerKeyword" value="NGS 기반 유전자 패널 검사실, NGS, 유전자검사 패널"/>	
</c:if>

<%-- 임상분석서비스 > GCLP --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/diagnosis/gclp')}">
	<c:set var="headerTitle" value="마크로젠 GCLP"/>
	<c:set var="headerDescription" value="임상시험의 바이오마커 발굴 및 검체 분석 서비스를 제공하고 있습니다. 국내 GCLP 및 글로벌 인증 CAP, CLIA, CSP 수준으로 관리합니다."/>
	<c:set var="headerKeyword" value="약물유전체분석, GCLP, 임상시허, 임상시험 검체분석기관, 검체분석, 검체분석기관, 검체보관"/>	
</c:if>

<%-- 싱글셀분석서비스 > Single Cell Multi-omics Analysis --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/singlecell-multi')}">
	<c:set var="headerTitle" value="Single Cell Multi-omics Analysis"/>
	<c:set var="headerDescription" value="싱글셀 유전자 분석은 하나의 세포에서 유전자 발현량 및 유전자 변화를 분석합니다."/>
	<c:set var="headerKeyword" value="단일세포 유전자 발현분석, single cell RNA sequencing,  single nucleus RNA sequencing, single cell immune profiling, single cell surface protein profiling, single cell ATAC sequencing, single cell Multiome sequencing, 싱글셀, 단일세포, 싱글셀 유전자 분석, 싱글셀 분석, Single cell Multi-omics analysis, 멀티오믹스"/>	
</c:if>

<%-- 싱글셀분석서비스 > Spatial Transcriptome Analysis --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/spatital')}">
	<c:set var="headerTitle" value="Spatial Transcriptome Analysis"/>
	<c:set var="headerDescription" value="위치 기반 전사체 분석은 가장 최신의 유전자 분석기술로, 세포들의 유전자 발현 정보와 세포들이 어느 위치에 존재하는지를 동시에 분석합니다."/>
	<c:set var="headerKeyword" value="전사체 발현 정보, Spatial Transcriptome Analysis, Visium CytAssist, Visium, 10x Genomics, 위치 기반 전사체 분석, 단일세포, 싱글셀"/>	
</c:if>

<%-- 싱글셀분석서비스 > Single Cell --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/business/singlecell')}">
	<c:set var="headerTitle" value="Single Cell (In situ / Spatial)"/>
	<c:set var="headerDescription" value="공간전사체 및 In Situ 분석을 통해 건강, 질병의 진단, 모니터링, 치료 등의 연구에 기여합니다."/>
	<c:set var="headerKeyword" value="Single cell multiomics, Nanostring, Spatial Transcriptomics, In Situ"/>	
</c:if>

<%-- 뉴스 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/newsroom/news')}">
	<c:set var="headerTitle" value="마크로젠 뉴스"/>
	<c:set var="headerDescription" value="인류 건강의 새 역사를 만드는 마크로젠의 새 소식을 가장 먼저 알려 드립니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>	
</c:if>

<%-- 공지사항 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/newsroom/notice')}">
	<c:set var="headerTitle" value="마크로젠 소식"/>
	<c:set var="headerDescription" value="인류 건강의 새 역사를 만드는 마크로젠의 새 소식을 가장 먼저 알려 드립니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>	
</c:if>

<%-- 재무정보 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/ir/financial')}">
	<c:set var="headerTitle" value="마크로젠 IR"/>
	<c:set var="headerDescription" value="마크로젠의 최신 IR 정보를 안내해드립니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, IR, 공시, 실적발표"/>	
</c:if>

<%-- 공시정보 > 공고 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/ir/announcement')}">
	<c:set var="headerTitle" value="마크로젠 IR"/>
	<c:set var="headerDescription" value="마크로젠의 최신 IR 정보를 안내해드립니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, IR, 공시, 실적발표"/>	
</c:if>

<%-- 공시정보 > 공시정보 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/ir/disclosure')}">
	<c:set var="headerTitle" value="마크로젠 IR"/>
	<c:set var="headerDescription" value="마크로젠의 최신 IR 정보를 안내해드립니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, IR, 공시, 실적발표"/>	
</c:if>

<%-- IR소식 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/ir/news')}">
	<c:set var="headerTitle" value="마크로젠 IR"/>
	<c:set var="headerDescription" value="마크로젠의 최신 IR 정보를 안내해드립니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, IR, 공시, 실적발표"/>	
</c:if>

<%-- 투자자 문의 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/ir/investor-inquiries')}">
	<c:set var="headerTitle" value="마크로젠 IR"/>
	<c:set var="headerDescription" value="투자에 관해 궁금한 점이 있으시면 문의해주세요. 성심을 다해 답변 드리겠습니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, IR, 공시, 실적발표, 투자자문의"/>	
</c:if>

<%-- ESG경영 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/esg-management')}">
	<c:set var="headerTitle" value="마크로젠 ESG"/>
	<c:set var="headerDescription" value="함께하는 미래, 지속가능한 미래를 만듭니다."/>
	<c:set var="headerKeyword" value="지속가능경영, ESG, 마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>	
</c:if>

<%-- 윤리경영 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/ethical-management')}">
	<c:set var="headerTitle" value="마크로젠 ESG"/>
	<c:set var="headerDescription" value="함께하는 미래, 지속가능한 미래를 만듭니다."/>
	<c:set var="headerKeyword" value="지속가능경영, ESG, 마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>	
</c:if>

<%-- 사회공헌 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/social-contribution')}">
	<c:set var="headerTitle" value="마크로젠 ESG"/>
	<c:set var="headerDescription" value="함께하는 미래, 지속가능한 미래를 만듭니다."/>
	<c:set var="headerKeyword" value="지속가능경영, ESG, 마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>	
</c:if>

<%-- 온실가스 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/greenhouse-gas')}">
	<c:set var="headerTitle" value="마크로젠 ESG"/>
	<c:set var="headerDescription" value="함께하는 미래, 지속가능한 미래를 만듭니다."/>
	<c:set var="headerKeyword" value="지속가능경영, ESG, 마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡"/>	
</c:if>

<%-- CONTACT US --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/contact-us')}">
	<c:set var="headerTitle" value="마크로젠 I Contact us"/>
	<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, 연락처, 유선문의, 문의번호, Contact us"/>	
</c:if>

<%-- 개인정보 처리방침 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/policy/privacy')}">
	<c:set var="headerTitle" value="마크로젠 I 개인정보처리방침"/>
	<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, 개인정보처리방침"/>	
</c:if>

<%-- 내부정보관리규정 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/policy/inside')}">
	<c:set var="headerTitle" value="마크로젠 I 내부정보관리규정"/>
	<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, 내부정보관리규정, 규정"/>	
</c:if>

<%-- 영상정보처리기기 운영·관리 방침 --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/policy/image')}">
	<c:set var="headerTitle" value="마크로젠 I 영상정보처리기기 운영.관리방침"/>
	<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, 방침, 영상정보처리기기, 방침"/>	
</c:if>

<%-- Sitemap --%>
<c:if test="${fn:contains(headerCurrentUrl,'/ko/company/sitemap')}">
	<c:set var="headerTitle" value="마크로젠 I 사이트맵"/>
	<c:set var="headerDescription" value="빅데이터·AI 기반 글로벌 디지털 헬스케어 리더, 마크로젠. $100 ‘DNA 몸 설계도 제공을 목표로, 예방 중심의 정밀의학 실현에 앞장섭니다."/>
	<c:set var="headerKeyword" value="마크로젠, 헬스케어, 유전체분석, DNA, 유전자검사, 유전자, 유전체, 시퀀싱, RNA, 싱글셀분석, 싱글셀, Macrogen, 디지털 헬스케어, 젠톡, 사이트맵"/>	
</c:if>



<!-- SEO -->
<title>${headerTitle}</title>
<link rel="canonical" href="${headerCurrentUrl}">
<meta property="og:url" content="${headerCurrentUrl}">
<meta property="og:title" content="${headerTitle}">
<meta property="og:description" content="${headerDescription}">
<meta name="keywords" content="${headerKeyword}">
<meta name="description" content="${headerDescription}">
<!-- // SEO -->


<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="Referrer" content="origin"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta name="format-detection" content="telephone=no"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, minimum-scale=1, user-scalable=0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="Macrogen" />

<meta name="robots" content="ALL">
<meta property="og:type" content="website">
<meta property="og:site_name" content="마크로젠">
<meta property="og:image" content="/publishing/pc-ko/dist/img/common/logo-default.svg">
<meta property="og:image" content="www.macrogen.co.kr/myimage.jpg">

<link rel="shortcut icon" href="/publishing/mobile-ko/dist/img/favicon/favicon.ico">
<link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/macrogen_component_mobile.css?1221"/>
<link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/macrogen_page_mobile_ko.css?1221"/>
<link rel="stylesheet" href="/resources/css/mobile_footer.css" />
<script src="/publishing/mobile-ko/dist/js/bundle.js?1221"></script>
<script src="/publishing/mobile-ko/dist/js/common.js?1221"></script>
<script type="text/javascript" src="https://unpkg.com/youtube-background/jquery.youtube-background.min.js"></script> 
<![if !IE]>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
<![endif]>
<script nomodule>window.MSInputMethodContext && document.documentMode && document.write('<link rel="stylesheet" href="/publishing/mobile-ko/dist/css/bootstrap-ie11.css"><script src="https://cdn.jsdelivr.net/combine/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js,npm/ie11-custom-properties@4,npm/element-qsa-scope@1"><\/script><script crossorigin="anonymous" src="https://polyfill.io/v3/polyfill.min.js?features=default%2CNumber.parseInt%2CNumber.parseFloat%2CArray.prototype.find%2CArray.prototype.includes"><\/script>');</script>

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
	  font-weight: 700;
	  src: local(※), url(/resources/fonts/NeuzeitGrotesk-Bold.woff2) format("woff2"), url(/resources/fonts/NeuzeitGrotesk-Bold.woff) format("woff");
	  unicode-range: U+0041-005A, U+0061-007A, U+0030-0039;
	}
	.wrap .non-bg .frame .font-h1.en, .macrogen.macrogen-sitemap .main-title.font-h1.en{
		font-family: "NeuzeitGrotesk";
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
<meta name="naver-site-verification" content="aaeba0b9789dc2e626a02b3d90cf622faaecff3b" />
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "62dfd455212fc4";
if(window.wcs) {
wcs_do();
}
</script>