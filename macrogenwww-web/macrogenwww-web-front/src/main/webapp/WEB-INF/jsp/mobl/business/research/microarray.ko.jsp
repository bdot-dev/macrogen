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
            <div class="font-h1">Microarray</div>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--MICROARRAY s-->
            <div class="subject-box">
                <p class="title font-h4">국내 유일의 Microarray 분석 시설을 통해 빠르고 정밀한 서비스를 제공합니다</p>
                <p class="subject font-body-h img_bottom">다양한 연구 목적으로 제작된 Microarray를 활용하여 유용한 유전체 정보를 해석하는 서비스입니다.</p>
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img-ces-microarray.png" alt="microarray">
                </div>
                <p class="desc font-body">마크로젠은 정밀한 DNA Microarray 기술을 활용해 유전자분석 서비스를 제공합니다. DNA chip, Biochip,
                    gene-array 등 다양한 용어로 불리는 Microarray는 눈에 보이지 않는 미세한 탐침(Probe)를 칩에 배열시킨 뒤 DNA, RNA, 단백질 등의 반응을 통해 유전자의
                    발현패턴을 측정하고 변이 여부 등을 확인하는 기술입니다. Microarray 분석은 탐침(Probe) 고밀도로 집적하여 작은 칩 형태로 제작할 수 있는 기술과 실험수행 및
                    결과로부터 유의미한 유전학적 정보들을 정확하게 선별해낼 수 있는 능력이 필수적입니다.
                    <br><br>
                    마크로젠은 국내에서 유일하게 Microarray 제품 주요 공급업체인 Illumina, Affymetrix, Agilent사의 제품을 모두 보유하고 있으며 해당 장비를 기반으로
                    mRNA, miRNA, SNP, CGH, DNA Methylation 등 다양한 연구목적의 유전자분석 서비스를 제공합니다. 전 세계 연구자 고객을 대상으로 수행해온 다수의 실험 및
                    분석 경험을 바탕으로 고품질 데이터 결과 제공합니다.</p>
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
                        <li class="option-value active"><a href="#">Expression Micoarray</a></li>
                        <li class="option-value"><a href="#">Genome Microarray</a></li>
                        <li class="option-value"><a href="#">Epigenome Microarray</a></li>
                    </ul>
                </div>
                <script>
    /*변수*/
    var selectBox = $(".select-box");
    var option = $(".option-value");


    /*드롭다운 클릭시 이벤트*/
    selectBox.on('click', function () {
        var select = $(this);
        if (select.hasClass('open')) {
            select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
        } else {
            select.addClass("open").children('.select-option').slideDown(200).addClass("open");
            $('body').on('click', function (e) {
                if (selectBox.hasClass('open')) {
                    if (!selectBox.has(e.target).length) {
                        selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                    }
                }

            })
        }
    });

    /*클릭시 텍스트 변경*/
    function textChange() {
        option.on('click', function () {
            var select = $(this).find('a').text();
            $('._selected-value').find('span').text(select);
        });
    }

    textChange();

    /*클릭시 탭메뉴 변경*/
    option.on('click', function () {
        var idx = $(this).index();
        $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
        $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

        /*셀렉트 내부 해당페이지 포인트컬러*/
        $(".option-value").addClass('active').siblings().removeClass('active');
        $(".option-value").eq(idx).addClass('active').siblings().removeClass('active');
        textChange();
    })

    /*이전 다음 이동*/
    function setTabContent(idx) {
        $('._selected-value').text($('._select-option li').eq(idx).text());
        <!--탭메뉴 클릭시 페이지 변경-->
        $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
        $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

        /*셀렉트 내부 해당페이지 포인트컬러*/
        $(".option-value").addClass('active').siblings().removeClass('active');
        $(".option-value").eq(idx).addClass('active').siblings().removeClass('active');

        /*페이지 변경후 상단 이동*/
        fnMove();

        /*클릭시 텍스트 변경*/
        console.log(idx);

    }

    /*탭메뉴 상단으로 이동*/
    function fnMove() {
        var offset = $("._content-anchor").offset();
        $('html, body').animate({scrollTop: offset.top - 95}, 100);
    }

    /*외부클릭시 셀렉트박스 초기화*/
    $("body").click(function (e) {
        if (!selectBox.has(e.target).length) {
            selectBox.removeClass("open").children('.select-option').slideUp(200);
        }
    });

</script>

            </div>
            <!--MICROARRAY 탭 네비 e-->

            <div class="info-box-wrap tab-content">
                <!--Expression Microarray-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Expression Microarray</p>
                    <p class="subject font-body-h-b">생물학적 환경에 따라 발현 정도가 달라지는 특징을 가진 유전체를 분석하는 방법입니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-microarray-expression.png" alt="Expression Microarray">
                    </div>
                    <!--v0.5 content-anchor 추가 (주석제거예정)-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">mRNA Expression Microarray</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">mRNA Expression
                                Microarray</a></li>
                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">microRNA Expression
                                Microarray</a></li>
                        </ul>
                    </div>

                    <hr class="divider">

                    <div class="anchor-section">
                        <!--v0.5 id값 추가 완료(주석제거예정)-->
                        <p class="font-h5 sub-title" id="target1">mRNA Expression Microarray</p>
                        <p class="desc list_bottom font-body">mRNA(messenger RNA)는 DNA가 전사될 때 생성되는 RNA의 일종입니다. mRNA는 단백질
                            정보를 담고 있는 coding region을 포함합니다. 특정 환경에서 주요 기능을 수행하는 유전자와
                            그 유전자의 pathway를 찾기 위해서는 mRNA의 발현패턴을 분석하는 것이 중요합니다. mRNA Expression Microarray를 이용하여
                            Organism의 전체 유전자 발현 정도를 분석할 수 있습니다.
                            생물학적 환경 조건의 변화에 따라 발현이 달라지는 유전자 정보를 확인해야 할 때도 Microarray 스크리닝을 통해 빠르게 결과를 얻을 수 있습니다.</p>
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
                                                - Model Org/Non-Human
                                            </td>
                                            <td class="text-start">- SurePrint G3 Gene Expression<br>
                                                - SurePrint G3 Exon<br>
                                                - Customization<br>
                                                - 기타
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Affymetrix</td>
                                            <td class="text-start">- Gene ST (Whole Transcript)<br>
                                                - GenomeArray (3'IVT)<br>
                                                - 기타
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
                                            <th>분석항목</th>
                                            <th>내용</th>
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
                    <!--v0.5 id값 추가 완료(주석제거예정)-->
                    <div class="anchor-section">
                        <p class="font-h5 sub-title list-area-group-top" id="target2">microRNA Expression Microarray</p>
                        <p class="desc font-body list_bottom">번역(Translation) 과정에서 유전자의 발현을 조절하는 다양한 microRNA에 대한 정보를
                            빠르게 스크리닝하여 한번에 얻을 수 있는 분석방법입니다.
                            microRNA는 21-25개 뉴클레오타이드(Nucleotide)로 이루어진 단일서열의 작은 RNA로 mRNA가 번역과정을 거쳐 단백질이 형성되는 기능을 방해함으로써
                            유전자 발현을 제어하는 역할을 합니다.
                            해당 microRNA 연구를 통하여 RNA silencing에 대한 이해를 넓힐 수 있습니다.
                            miRNA Expression Microarray를 사용하여 다양한 Organism의 전체 miRNA를 손쉽게 분석할 수 있습니다.
                            세포나 조직에서의 miRNA 분석뿐만 아니라 최근에 세포간 상호작용에서의 miRNA의 역할에 대한 연구를 위해서 exosome샘플에 대한 관심도가 높아지고 있습니다.
                            마크로젠은 수많은 exosomalRNA miRNA 분석 경험을 통해 신뢰도 높은 결과를 제공하고 있습니다. </p>
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
                                            <th>분석항목</th>
                                            <th>내용</th>
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
                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com"
                                                    class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO500"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" target="_blank"
                                                    class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">다음</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Genome Microarray-->
                <div class="info-box">
                    <p class="font-h4 main-title">Genome Microarray</p>
                    <p class="subject font-body-h-b">DNA상의 다양한 염기서열 변이나 구조적 변화에 대해 분석하는 방법입니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-microarray-genome.png" alt="Genome Microarray">
                    </div>
                    <hr class="divider">
                    <!--v0.5 content-anchor 추가 (주석제거예정)-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">SNP Genotyping Microarray</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">SNP Genotyping
                                Microarray</a></li>
                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">CGH Microarray</a></li>
                        </ul>
                    </div>
                    <div class="anchor-section">
                        <!--v0.5 id 추가 (주석제거예정)-->
                        <p class="font-h5 sub-title" id="target3">SNP Genotyping Microarray</p>

                        <p class="desc list_bottom font-body">약 30억 쌍의 염기로 구성된 인간 유전체의 경우 개인의 DNA 염기서열이 대부분 일치하지만 0.1%
                            정도
                            차이가 나는 단일염기다형성(SNP, Single Nucleotide Polymorphism) 부위를 가지고 있습니다.
                            이러한 SNP에 의해 개인의 유전적 다양성이 나타나며 서로 다른 질병에 대한 감수성의 차이를 만들어 냅니다. SNP Genotyping Microarray를 사용하면
                            수백만
                            개의 SNP를 동시에 분석할 수 있습니다.
                            마크로젠은 국내 최대 SNP 칩 데이터 자동화 생산 시설을 갖추고 있으며, 데이터 QC 프로세스를 적용하여 정확한 분석 결과를 제공하고 있습니다.</p>
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
                                            <th>제조사</th>
                                            <th>연구 종</th>
                                            <th>분류</th>
                                            <th>플랫폼</th>
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
                    <!--v0.5 id 추가 (주석제거예정)-->
                    <div class="anchor-section">
                        <p class="font-h4 main-title" id="target4">CGH Microarray</p>
                        <p class="desc list_bottom font-body">복제 수 변이라 불리는 CNV(Copy Number Variation)는 염색체 내에 1Kb 이상의 특정
                            염기서열 부위가 결손 되거나 증폭되어 반복적으로 나타나는 DNA 변이를 의미합니다.
                            이러한 복제 수 변이는 암세포 증식 외에도 다양한 유전질환을 유발할 수 있습니다.
                            CGH 칩 데이터 분석 시 DGV, ClinVar등의 Database를 활용하여 다양한 질병이나 특정 Phenotype의 원인이 되는 CNV를 찾을 수 있으며 CGH
                            Microarray를 이용하여 유전자와 염색체상의 CNV를 분석할 수 있습니다.
                            마크로젠은 주요한 CGH Microarray 장비를 갖추고 있어 연구자의 필요에 따라 제품 선택이 가능하며, 세포 치료제에 사용되는 세포주에 대한 CNV검증서비스도
                            제공하고
                            있습니다.</p>
                        <div class="list-area-group">
                            <div class="list-area">
                                <p class="font-body-h-b title figure_bottom">CGH Microarray Platforms </p>
                                <p class="sub-list-title font-body-h-b">Agilent CGH</p>
                                <ul class="list-circle-dot table_bottom font-body">
                                    <li><p>High resolution(60mer) &#38; Sensitivity CGH/CNV chip 제공</p></li>
                                    <li><p>Human 이외에 organism과 관련된 CGH/CNV chip을 제공하고 있으며 Custom 제작도 가능</p></li>
                                    <li><p>FFPE 샘플을 이용한 CGH 실험가능</p></li>
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
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com"
                                                    class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO500"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" target="_blank"
                                                    class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">다음</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Epigenome Microarray-->
                <div class="info-box">
                    <p class="font-h4 main-title">Epigenome Microarray</p>
                    <p class="subject font-body-h-b">수많은 DNA 부위의 메틸화 정도를 동시에 수치화하여 분석하는 방법입니다. </p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-microarray-epigenome.png" alt="EpigenomeMicroarray">
                    </div>
                    <hr class="divider">
                    <p class="font-h4 main-title">DNA Methylation Microarray</p>
                    <p class="desc font-body list_bottom">DNA 메틸화(DNA methylation)란 유전자의 발현을 조절하는 화학적 변형으로서 유전자의 전사조절영역을
                        중심으로 존재하는 CpG site의 시토신(Cytosine)에 메틸기가 생성되는 현상입니다.
                        질병이나 표현형에 영향을 주는 원인이 특정 CpG 부위의 메틸기 변화에 있으면 그룹 간 통계 분석을 통해 해당 CpG부위가 어디인지 전체 DNA에서 찾을 수 있습니다.
                        종양억제유전자과 같이 종양을 억제하는 데 중요한 역할을 하는 유전자에 메틸기가 작용하게 되면 암을 유발하는 치명적인 결과를 초래할 수 있습니다. 마크로젠은 Illumina
                        Microarray를 이용하여 DNA의 메틸화 여부를 정확하게 확인하며, 통계분석을 통해 생물학적인 의미를 부여하는 작업을 진행합니다. 메틸레이션 칩 국내 최다 분석 경험을
                        보유하고 있으며 메틸레이션 데이터와 유전자 발현 데이터를 통해 상호연관성을 분석하는 프리미엄 서비스를 제공합니다.</p>
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
                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com"
                                                    class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO500"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:array@macrogen.com" target="_blank"
                                                    class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">이전</span></div>
                                <div class="col disabled"><span class="font-body-h-b">다음</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!--v0.5 스크립트추가(주석제거예정)-->
    <script>
        /*변수*/
        var contentAnchor = $(".content-anchor");
        var anchorOption = $(".anchor-value");
        var anchor = $("._anchor");
        var offset = anchor.offset();


        /*특정위치 show & hide*/
        function fnMousewheel() {
            var lastScroll = 0;

            $(window).on('scroll', function (e) {
                let listPos = $('.info-box').offset().top;
                let offset = $(this).scrollTop();

                if (offset > lastScroll) {
                    // console.log('down')
                    if (offset > listPos) {
                        contentAnchor.show().css({'position': 'fixed', 'top': '0px'});
                    } else {
                        contentAnchor.hide();
                    }
                } else {
                    // console.log('up')
                    if (offset > listPos) {
                        contentAnchor.show().css({'position': 'fixed', 'top': '70px'});
                    } else {
                        contentAnchor.hide();
                    }
                }
                lastScroll = offset;
            });
        }

        /*드롭다운 클릭시 이벤트*/
        contentAnchor.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.anchor-option').slideDown(200).addClass("open");
                $('body').on('click', function (e) {
                    if (contentAnchor.hasClass('open')) {
                        if (!contentAnchor.has(e.target).length) {
                            contentAnchor.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                        }
                    }

                })
            }
        });


        /*클릭시 페이지 이동 이동*/
        function TitleMove(target) {
            var id = $('#' + target);
            var offset = id.offset();
            $('html, body').animate({scrollTop: offset.top - 75}, 300);
        }

        /*클릭시 텍스트 변경*/
        anchorOption.on('click', function () {
            var select = $(this).find('a').text();
            $('._anchor-value').find('span').text(select);
        });
        fnMousewheel();

    </script>

</body>
