<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/ngs-bg.png);">
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
            <h2 class="font-h1">NGS</h2>
            <div class="font-body-h">Next Generation Sequencing</div>
            <div class="btn-wrap"><a href="#_tab-box" class="btn-service"><span class="sr-only">SERVICE</span></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--ngs 공통 e -->
            <div class="subject-box">
                <p class="title font-h4">글로벌 수준의 분석 인프라를 통해 빠르고 정확한 NGS서비스의 경쟁력을 갖추고 있습니다.</p>
                <p class="subject font-body-h img_bottom">NGS(Next Generation Sequencing)는 유전체를 무수한 조각으로 나누어 읽고, 이를 통해 얻은 염기서열을 조립하여 유전체 서열을 분석하는 차세대 염기서열 분석 방법입니다. </p>
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img-ngs-intro.png" alt="cesintro">
                </div>
                <p class="desc font-body">
                    마크로젠은 NGS 정보 기반 연구개발 및 의료기관 협업을 통해 개인의 질병을 예측하고 진단하며, 유전적 특성에 따른 맞춤치료 방안을 제시하는 정밀의학 분야 글로벌 선도기업입니다. 해당 기술은 2000년 이후 상용화되며 관련 기술의 비약적 발전을 이루어냈습니다. 이에 따라 단기간 내 많은 양의 유전체 정보를 얻을 수 있게 되었고, 유전체 분석의 시간과 비용이 감소하게 되었습니다. 따라서 인간을 비롯한 다양한 생명체의 유전체 분석 수요가 증가했고, 이를 다양한 연구 분야에 활용할 수 있게 되었습니다. 최근 의학 분야를 중심으로 NGS 기반 임상 연구가 활발해지면서 해당 기술을 통한 유전자 변이 확인 및 새로운 유전자의 기능을 밝히기 위한 연구가 진행되고 있습니다. 이는 유전체 정보를 바탕으로 환자 개인에게 최적화된 치료가 가능한 정밀의학 실현을 앞당길 것입니다.
                    <br><br>
                    마크로젠은 다양한 장비를 통해 매년 대량의 유전체 데이터를 생산해내고 있습니다. 빠르고 정확한 유전체 분석 서비스를 제공하여 연구자의 리서치에 도움을 드리며, 일반인 대상 진단 서비스도 제공하고 있습니다. 또한 Whole Genome, Exome, Transcriptome, Epigenome, Metagenome, Single Cell Multi-Omics Sequencing 등 연구목적에 맞는 유전체 분석 서비스와 해당 데이터를 기반으로 바이오인포메틱스 결과를 제공하고 있습니다. 마크로젠은 오랜 기간 축적된 경험과 노하우를 바탕으로 전 세계 연구자들에게 Total Genomic Solution을 제시함으로써 NGS 기술을 활용한 정밀의학 분야를 선도합니다.
                </p>
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
                <!--Whole Genome Sequencing-->
                <div class="info-box show">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">Whole Genome Resequencing</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('Resequencing')"><a href="#">Whole Genome Resequencing</a></li>
                            <li class="anchor-value" onclick="TitleMove('Sequencing')"><a href="#">Whole Genome De novo Sequencing</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <p class="main-title font-h4" id="Genome">Whole Genome Sequencing</p>
                    <p class="subject font-body-h-b">WGS는 유전체 전체를 한 번에 읽어 유전정보를 분석하는 방법입니다.</p>
                    <p class="desc font-body img_bottom">WGS을 통해 얻어진 변이 정보는 질병과 관련한 유전자 발굴 및 맞춤의학 연구에 활용되고 있습니다. 현재 전 세계 153개국 1만 8천여 연구기관 고객을 보유하고 있으며, 연간 30만 명의 WGS 분석 시설, 총 30PB를 저장할 수 있는 컴퓨팅 시설 등 글로벌 톱 수준의 분석 인프라를 통해 유전체 정보 기반 정밀의학 빅데이터 시대를 만들어 가고 있습니다.</p>
                    <!--10.05 이미지 경로 변경 // div class 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-ngs-genome.png" alt="Whole Genome Sequencing">
                    </div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="Resequencing">Whole Genome Resequencing</p>
                        <p class="desc font-body list_bottom">참조 유전체(Reference Genome)를 활용하여 SNP(Single Nucleotide Polymorphism), InDel(Insertion &#38; Deletion), CNV(Copy Number Variation), SV(Structural Variation) 등 다방면의 변이 분석이 가능한 방법입니다.
                        </p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li><p>NovaSeq X Plus / NovaSeq 6000</p></li>
                                <li><p>NextSeq 500</p></li>
                                <li><p>DNBSEQ-T7</p></li>
                                <li><p>UG100</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="Sequencing">Whole Genome De novo Sequencing</p>
                        <p class="desc font-body list_bottom">참조 유전체(Reference Genome) 정보가 없는 미생물이나 동식물 등 새로운 생물 종의 전체 유전체 정보를 알아내는 방법입니다.</p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li><p>NovaSeq X Plus / NovaSeq 6000</p></li>
                                <li><p>NextSeq 500 / MiSeq</p></li>
                                <li><p>PacBio Revio / Sequel lle</p></li>
                                <li><p>PromethION</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
                        </div>
                        <div class="btn-wrapper">
                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Whole Exsome Sequencing-->
                <div class="info-box">
                    <p class="font-h4 main-title">Whole Exome Sequencing</p>
                    <p class="subject font-body-h-b">WES(Whole Exsome Sequencing)는 유전자가 존재한다고 알려져 있는 Exon 영역 (Exome)만을 선택적으로 분석하는 방법입니다.</p>
                    <p class="desc font-body img_bottom">기존 연구를 통해 얻은 유전자를 선택적으로 분석함으로써 WGS보다 효율적이고 경제적인 연구 방법입니다. Capture Kit(Agilent SureSelect Exome Capture kit, Truseq Exome Enrichment Kit, <br>Twist Human Core Exome Kit)을 사용한 전체 Exome 분석이 가능하며 SNP 및 InDel 등의 변이 분석을 함께 제공합니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-ngs-wes.png" alt="Whole Exsome Sequencing">
                    </div>
                    <!--09.29 divider 제거-->
                    <!--<hr class="divider">-->
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="title font-body-h-b">Main Capture Kit</p>
                            <ul class="list-circle-dot">
                                <li><p>Agilent SureSelect Exome Capture kit</p></li>
                                <li><p>Twist Human Core Exome kit</p></li>
                                <li><p>전체 exome 부분에 대한 Capture가 가능하며 SNP 및 InDel 등의 변이 분석을 함께 제공해 드리고 있습니다.</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="title font-body-h-b">Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li><p>NovaSeq X Plus / NovaSeq 6000</p></li>
                                <li><p>NextSeq 500</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
                        </div>
                        <div class="btn-wrapper">
                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Transcriptome Sequencing-->
                <div class="info-box">
                    <p class="font-h4 main-title">Transcriptome Sequencing</p>
                    <p class="subject font-body-h-b">유전자의 발현으로 얻어진 RNA를 분석하는 방법으로, 샘플 간의 발현량 차이(expression profile) 및 각종 변이 정보를 확인할 수 있습니다.</p>
                    <p class="desc font-body img_bottom">NGS로 진행되는 실험 중 가장 자주 이용되는 방법이며 RNA의 불안정한 특이성 때문에 샘플 준비 및 보관, 처리 작업 등 고도의 기술력을 요구하는 분야입니다. <br>샘플 간의 발현량 차이(expression profile) 및 변이 정보를 통해 유전자 가능 연구와 발현 조절에 대한 통찰력을 얻을 수 있고, 바이오마커(Biomarker) 개발, 병 진단, 모니터링에 적용할 수 있습니다. 마크로젠은 다년간의 연구 경험을 통해 연구자의 Transcriptome Sequencing 관련 니즈를 충족시키기 위한 각종 library kit 및 NGS 장비, 컴퓨팅 시설 등을 갖추고 있습니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-ngs-test1.png" alt="TranscriptomeSequencing소개이미지">
                    </div>
                    <hr class="divider">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text"></span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">mRNA / Total RNA Sequencing</a></li>
                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">Small RNA Sequencing</a></li>
                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">Isoform Sequencing</a></li>
                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">Exosomal RNA Sequencing</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->

                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="target1">mRNA / Total RNA Sequencing</p>
                        <p class="desc font-body data_bottom">Read 수로 mRNA의 발현 값을 표현해 정확한 데이터 값을 알 수 있습니다. 유전자간 발현량뿐만 아니라 novel transcriptome, fusion gene, alternative splicing과 변이 정보 확인 등의 연구에 활용할 수 있습니다. 최근에는 단일 세포(Single Cell) 수준의 유전자 발현에 대한 연구도 활발히 진행되고 있습니다.</p>
                        <p class="font-body-h-b _sub-title">Library Construction Kit</p>
                        <div class="accordion-container">
                            <div class="list">
                                <div class="accordion-container">
                                    <div class="accordion-item">
                                        <a class="accordion-button active" href="#">Illumina</a>
                                        <div class="accordion-content" style="display: block;">
                                            <ul class="list">
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
                                    </div>
                                    <div class="accordion-item">
                                        <a class="accordion-button" href="#">Others</a>
                                        <div class="accordion-content" style="display: none;">
                                            <ul class="list">
                                                <li>SureSelectXT RNA Direct</li>
                                                <li>SureSelect XT HS2 RNA</li>
                                                <li>SMART-Seq mRNA</li>
                                                <li>SMART-Seq Total RNA Mid Input (SMARTer Stranded RNA)</li>
                                                <li>Watchmaker mRNA</li>
                                                <li>Watchmaker total RNA with Polaris Depletion (HMR)</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="title font-body-h-b">Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li><p>NovaSeq X Plus / NovaSeq 6000</p></li>
                                <li><p>NextSeq 500</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="target2">Small RNA Sequencing</p>
                        <p class="desc font-body data_bottom">
                            유전자가 전사된 mRNA뿐 아니라 유전자 정보를 담고 있지 않은 non-coding RNA, 특히 small RNA는 유전자 발현 조절 기전의 핵심 인자로 밝혀지며 활발히 연구되는 분야입니다. Small RNA family의 대표 종류인 miRNA나 siRNA를 비롯해 piRNA, snRNA 등을 분석함으로써 유전자 발현 조절에 대한 통찰력을 얻을 수 있고, 바이오마커(Biomarker) 개발 및 질병 진단에 적용할 수 있습니다.
                        </p>
                        <p class="font-body-h-b _sub-title">Library Construction Kit</p>
                        <div class="accordion-container">
                            <div class="accordion-item">
                                <a class="accordion-button active" href="#">Illumina</a>
                                <div class="accordion-content" style="display: block;">
                                    <ul class="list">
                                        <li>TruSeq Small RNA</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <a class="accordion-button" href="#">Others</a>
                                <div class="accordion-content" style="display: none;">
                                    <ul class="list">
                                        <li>SMARTer smRNA</li>
                                        <li>NEBNext Small RNA</li>
                                        <li>QIAseq miRNA</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="title font-body-h-b">Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li><p>NovaSeq X Plus / NovaSeq 6000</p></li>
                                <li><p>NextSeq 500</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target3">Isoform Sequencing</p>
                        <p class="desc font-body">
                            엑손(Exon)과 인트론(Intron) 으로 구성된 유전자는 발현되는 엑손 영역의 조합에 의해 새로운 transcript가 계속 발견되고 있습니다. Long read platform을 활용한 Isoform sequencing은 기존에 <br>밝혀내지 못하던 전장(full length) transcript를 확인 할 수 있어 유전자의 가능연구에 각광을 받고 있습니다.
                        </p>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target4">Exosomal RNA Sequencing</p>
                        <p class="desc font-body">
                            엑소좀(Exosome)은 세포 유래의 200 nm 미만의 소포체이며, 엑소좀 안에는 기원한 세포에서 유래한 단백질과 DNA, RNA 등 다양한 생체분자들을 함유하고 있습니다. 이러한 특징을 이용하여 진단을 위한 바이오마커(Biomarker)나 질병의 모니터링에 활용가능하며, 최근엔 치료제와 화장품 개발에도 활용되는 등 적용 분야를 넓혀가고 있습니다.
                        </p></div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
                        </div>
                        <div class="btn-wrapper">
                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(3)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Epigenome Sequencing-->
                <div class="info-box">
                    <p class="font-h4 main-title">Epigenome Sequencing</p>
                    <p class="subject font-body-h-b">외부환경요인에 의하여 특정 유전자의 기능이 제대로 발현되었는가를 확인하는 방법입니다. </p>
                    <p class="desc font-body img_bottom">유전자의 전사에(Transcription) 대한 후성유전학적인 조절기전은 DNA의 메틸화(methylation) 및 히스톤 단백질(histone protein)의 아세틸화(acetylation)가 가장 대표적이며 NGS기술을 이용하여 더 효과적으로 분석할 수 있습니다. Bisulfite 등의 물질로 DNA시료의 변형을 통해 분석을 진행함에 따라 Whole Genome Sequencing에 비해 그 품질이 저하될 가능성이 높은 서비스 입니다. 마크로젠은 국내 1위, 세계 5위 수준의 NGS 수행능력을 기반으로 높은 품질의 분석 데이터를 제공할 수 있으며 또한 ATAC Sequencing은 현재 국내 유일하게 서비스가 가능합니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-ngs-test2.png" alt="Epigenome Sequencing">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Methylation Sequencing</p>
                    <p class="desc font-body list_bottom">methylation을 확인할 수 있는 NGS 방법에는 WGBS(Whole Genome Bisulfite Sequencing)와 EM-Seq(Enzymatic Methylation Sequencing)이 있습니다.
                        WGBS는 메틸화되지 않은 시토신(Cytosine)을 우라실(Uracil)로 변환시키는 물질인 아황산수소 나트륨(Sodium Bisulfite)를 활용하여 DNA를 처리한 후 염기서열을 분석하여 DNA의 메틸화 정도를 관찰하는 방법입니다.
                        EM-Seq은 메틸화된 시토신(Cytosine)은 TET2로 산화시켜 우라실(Uracil)로 변환되는 것을 막고, 메틸화되지 않은 시토신(Cytosine)만 우라실(Uracil)로 변환시키는 효소인 APOBEC을 처리하는 방식으로 DNA의 메틸화 정도를 확인하는 방법입니다.</p>
                    <p class="font-body-h-b _sub-title">Library Construction Kit</p>
                    <div class="list-area">
                        <ul class="list-circle-dot">
                            <li><p>EZ DNA Methylation-Gold Kit (conversion) - xGen™ Methylation-Sequencing DNA Library Preparation Kit (library preparation)</p></li>
                            <li><p>NEBNext® Enzymatic Methyl-seq Kit</p></li>
                        </ul>
                    </div>
                    <!--2023-05-06::컨텐츠 추가-->
                    <hr class="divider">
                    <p class="font-h5 sub-title">ATAC analysis</p>
                    <p class="desc font-body">
                        ATAC는 차세대염기서열분석을 통해 DNA 풀림 구조를 분석하는 방법입니다.<br><br>
                        마크로젠은 국내 1위 세계 5위의 차세대염기서열분석(Next generation sequencing, NGS) 수행능력을 기반으로 높은 수준의 유전자 분석 데이터를 빠르게 제공하며, 고객 샘플 맞춤형 실험이 가능합니다. 유전자 발현을 위해 히스톤 단백질로 응축된 DNA(closed chromatin)가 풀려있는(open chromatin) 상태를 분석함으로써 RNA 중합 효소(polymerase)의 접근 가능한 영역을 유추하거나 전사 인자(transcripton factor) 결합 부위 및 뉴클레오솜(nucleosome) 위치에 대한 정보를 얻을 수 있습니다. DNA에 저장된 유전 정보가 실제로 역할을 하기 위해서는 먼저 전사체(RNA)로 발현이 되어야 합니다. DNA 발현은 DNA 서열 자체 변화로 조절되지만, DNA 염기서열의 변화 없이 나선 구조의 변화나 주변 단백질의 변화를 통해서도 조절할 수 있습니다. DNA 염기서열의 변화 없이 구조의 변화나 주변 단백질의 변화를 통한 유전자 기능의 변화를 연구하는 학문을 후성유전학(Epigenetics)이라 합니다.
                    </p>
                    <!--//2023-05-06::컨텐츠 추가-->
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
                        </div>
                        <div class="btn-wrapper">
                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(2)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(4)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 2023-05-05::Single cell Multi-omics analysis 삭제-->
                <!-- 2023-05-05::ATAC analysis 삭제 -->
                <!-- 2023-05-06::Spatial Gene Expression analysis 삭제-->
                
                <!--Metagenome Sequencing-->
                <div class="info-box">
                    <p class="font-h4 main-title">Metagenome Sequencing</p>
                    <p class="subject font-body-h-b">다양한 환경에 존재하는 유전체 집합을 한 번에 시퀀싱하여, 환경 내 서식하는 생물 종의 다양성을 확인할 수 있는 군집유전체 분석 서비스 입니다.</p>
                    <p class="desc font-body img_bottom">
                        분변, 토양, 해수, 식품 등 여러 유전체가 섞여있는 상태의 Meta시료 내에 특정 분류군이 어떤 종과 분포로 구성되어 있는지 알 수 있으며 이들의 상호작용과 역할까지 확인할 수 있습니다. 다양한 환경에 존재하는 미생물 군집(Microbial community)을 확인하는 방법으로 활용되며 주로 박테리아, 사상균, 효모(Fungi)의 다양성 및 분포도에 대한 분석을 할 수 있습니다. 이외에도 마커 유전자를 타겟하는 동일한 원리를 사용하여 진핵생물(Eukaryote) 에 대한 분석도 가능 합니다. <br>마크로젠은 다양한 장비를 사용한 NGS기술과 바이오인포매틱스(Bioinformatics) 전문팀을 통하여 고객의 연구 목적과 요청에 맞는 결과물을 제공해 드리고 있습니다.
                    </p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_ngs_metagenome.png" alt="Metagenome Sequencing">
                    </div>
                    <hr class="divider">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text"></span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('Amplicon')"><a href="#">Metagenome Amplicon Sequencing</a></li>
                            <li class="anchor-value" onclick="TitleMove('Shotgun')"><a href="#">Metagenome Shotgun Sequencing</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="Amplicon">Metagenome Amplicon Sequencing</p>
                        <p class="desc font-body list_bottom">
                            16S rRNA나 ITS gene 등 마커 유전자의 특정 영역을 증폭하여 Amplicon library제작 후 Sequencing을 통한 분포도 및 다양성 분석을 수행 합니다. <br>마커 유전자를 타겟하는 동일한 원리를 사용하여 진핵생물(Eukaryote)에 대한 분석도 가능 합니다. 마크로젠은 바이오인포매틱스(Bioinformatics) 전문 인력이 직접 분석을 수행하며, ASV 분석을 통한 높은 정확도 및 재현성이 보장되는 Taxonomic assignment 및 Diversity 분석이 가능하며 통계분석 및 트렌드에 맞는 Advanced 분석도 가능합니다.
                        </p>
                        <div class="list-area">
                            <p class="font-body-h-b title"> Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li><p>16S rRNA V3-V4 Regions, 18S rRNA, ITS Regions, Customized regions → Illumina NovaSeq X Plus / NovaSeq 6000 / MiSeq</p></li>
                                <li><p>16S rRNA Full length → PacBio Revio / Sequel lle</p></li>
                            </ul>
                        </div>
                        <hr class="divider">
                    </div>
                    <div class="section-anchor">
                        <p class="sub-title font-h5" id="Shotgun">Metagenome Shotgun Sequencing</p>
                        <p class="desc font-body list_bottom">
                            마커 유전자뿐만 아니라 전장유전체를 타겟하여 시퀀싱함으로써 균총분포도 및 다양성과 더불어 assembly, gene prediction &#38; funtional annotation 까지 가능한 분석 방법 입니다.<br>바이오인포매틱스(Bioinformatics) 전문 인력이 직접 분석을 수행하며 Taxonomic assignment 분석 시 target taxon의 genome size를 이용한 normalized abundance 값을 계산하여 제공함으로써 보다 정밀한 분석이 가능합니다.
                        </p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Sequencing Platform</p>
                            <ul class="list-circle-dot">
                                <li><p>NovaSeq X Plus / NovaSeq 6000 / NextSeq 500 / MiSeq</p></li>
                                <li><p>PacBio Sequel IIe / Revio</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:ngskr@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
                        </div>
                        <div class="btn-wrapper">
                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(3)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--ngs 컨텐츠 e-->
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
        //<!--탭메뉴 클릭시 페이지 변경-->
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