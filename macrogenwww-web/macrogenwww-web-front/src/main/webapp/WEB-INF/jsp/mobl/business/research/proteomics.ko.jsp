<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
<div class="wrap">
    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/ngs-bg.png);">
        <header class="header header-white">
		    <div class="inner">
		        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
		        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
		    </div>
		</header>
		<div class="frame">
            <h2 class="font-h1">Proteomics</h2>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
        </div>
		
	</div>
	
	<div class="container">
        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
        <div class="section_business">
            <!--상단 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">최신 분석법인 Olink 패널을 이용하여 빠르고 합리적인 비용으로 단백질 Multiplex-Screening 서비스를 제공합니다.</p>
                <p class="subject font-body-h img_bottom">
                    Olink 는 항체 기반 면역 분석법인 PEA(Proximity Extension Assay)기술을 이용하여 단백체 정보를 해석하는 서비스 입니다.
                </p>
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img_proteomics01.png" alt=""/>
                </div>
                <p class="subject font-body-h">마크로젠은 최신 단백질(Protein) 분석 기술을 이용해 단백질 스크리닝 서비스를 제공합니다. 단백질은 RNA에서 번역(Translation)을 통해 만들어지는 유전정보의 최종산물 입니다. 하지만 유전적 정보와 환경적 정보가 결합되어 나타나는 표현형인 단백질은 실제 생명현상을 반영하여 활용도는 높지만 그동안 접근성이 낮아 연구의 어려움이 있었습니다.<br><br>마크로젠은 기존 단백질(Protein) 분석 기술이 가지고 있던 단점들을 보완한 Olink 분석 서비스를 통해 전 세계 연구자들에게 Proteomic solution을 제공해드리고 있으며, Genomic 데이터와 단백질(Protein)데이터를 통합하는 멀티오믹스(Multi-omics) 분석을 통해 환자 개인에게 최적화된 맞춤의학을 실현시키는 목표를 가지고 있습니다.</p>
            </div>
            <!--//상단 공통 e -->

            <div class="select-nav-box _content-anchor" id="tab_anchor">
                <p class="title font-h4">SERVICE</p>
            </div>

            <!-- 탭 컨텐츠 s-->
            <div class="info-box-wrap tab-content">
                <!--컨텐츠탭01-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Olink</p>
                    <p class="subject font-body-h-b">관심있는 분야의 여러 단백질을 한번에 분석하여 바이오마커에 대한 식별 및 정량화하는 고품질 면역 분석법 입니다.</p>
                    <div class="img"><img src="/publishing/mobile-ko/dist/img/business/img_proteomics02.png" alt=""/></div>
                    <p class="desc font-body mb64">마크로젠은 Olink 패널을 이용하여 Protein screening에서 타깃 발굴 및 검증에 이르기까지 효율적인 단백질 바이오마커(Protein Biomarker) 발굴을 위한 다양한 솔루션을 제공합니다.<br><br>Olink의 PEA(Proximity Extension Assay)는 항체 기반 면역분석법을 DNA기반 중합효소연쇄반응(PCR)법과 결합 시킨 방법으로 DNA oligo nucleotide(barcode)로 표지된 한 쌍의 항체(antibody)가 샘플에 존재하는 표적 단백질에 동시에 결합하면 이후 실시간 정량 PCR(qPCR) 또는 NGS 플랫폼을 이용하여 판독하는 기술입니다. <br>그 결과 수백 개의 단백질 바이오마커의 농도를 동시에 정량화할 수 있고 높은 특이성을 가진 다중분석이 가능하여 단백질 바이오마커 발견 및 개발을 위한 도구로 활용할 수 있습니다.</p>
                    <div class="table-scroll">
                        <table class="table">
                            <colgroup>
                                <col width="32%">
                                <col width="33%">
                                <col width="34%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">제품</th>
                                    <th scope="col">컨텐츠</th>
                                    <th scope="col">특징</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Olink® Explore 384<br>Olink® Explore 1536<br>Olink® Explore 3072</td>
                                    <td>~370 Proteins<br>~1,480 Proteins<br>~2,960 Proteins
                                    </td>
                                    <td>전체 Olink Protein library 에서 <br>대량 스크리닝 하여 NGS 기술로 분석</td>
                                </tr>
                                <tr>
                                    <td>Olink® Target 96</td>
                                    <td>92 Proteins</td>
                                    <td>15개 주요 pathway에 대한 연구 가능<br>(Mouse 패널1개 포함)</td>
                                </tr>
                                <tr>
                                    <td>Olink® Target 48 Cytokine</td>
                                    <td>45 Proteins</td>
                                    <td>감염 관련 질병과 Cytokine 관련 연구에 <br>적합하며 절대정량값 제공 가능</td>
                                </tr>
                                <tr>
                                    <td>Olink® FLEX</td>
                                    <td>15~21 Proteins</td>
                                    <td>Olink에서 선별하여 구성한 200개 <br>단백질 중에서 Custom 제작<br>절대정량값 제공 가능</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="border-gray-box mb0">
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/business/img_proteomics03.png" alt="">
                            <span class="btnZoom" data-img="img_proteomics03"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <p class="p_text01 mb64">※ Olink® Target 96 패널 종류 입니다.</p>
                    <p class="font-h4 main-title">Analysis</p>
                    <div class="table-scroll">
                        <table class="table">
                            <colgroup>
                                <col width="40%">
                                <col width="60%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">분석항목</th>
                                    <th scope="col">내용</th>
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
                <!-- //컨텐츠탭01 -->
            </div>
            <!--// 탭 컨텐츠 e-->
        </div>

        <!-- 2023 추가 비지니스 확대이미지 -->
        <div class="toast-popup">
            <p>이미지를 확대할 수 있습니다</p>
        </div>
        <!--modalImageViewer-->
        <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer" data-bs-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                    <div class="parent">
                        <div class="zoom_img"><img src="" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
        <!--//modalImageViewer-->
        <!-- //2023 추가 비지니스 확대이미지 -->
        <script src="/publishing/mobile-ko/dist/js/business.js"></script>

    </div>

</div>

</body>
</html>