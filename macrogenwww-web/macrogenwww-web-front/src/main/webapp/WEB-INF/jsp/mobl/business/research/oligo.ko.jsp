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
            <div class="font-h1">Oligo</div>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--OLigo 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">최신 자동화 시스템으로 마크로젠의 고품질 Oligo를 빠르고 합리적인 비용으로 이용할 수 있습니다</p>
                <p class="subject font-body-h img_bottom">고객 맞춤형 Oligo 제작을 통해 고품질의 Oligo를 제공하여 생물학 및 의학분야의 기술발전에 앞장서겠습니다</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img-oligo-intro.png" alt="oligoIntro">
                </div>
                <p class="desc font-body">마크로젠은 고품질 원료와 최적화된 자동화 시스템을 이용하여 다양한 Oligo 합성서비스를 제공합니다. 실험에 사용되는 다양한 Oligo를 원하는 염기서열로 합성하여 제공하는 고객맞춤 서비스입니다.
                    합성된 Oligo는 DNA  Sequencing, PCR, SNP 연구, Gene Synthesis, NGS 서비스, qPCR 서비스, Biochip, siRNA 발현 등 생물학 및 의학분야에서 다양하게 활용되고 있습니다. 마크로젠은 고품질의
                    Oligo를 제공하기 위하여 좋은 원료와 자동화 시스템을 이용하여 생산하고 있으며, 빠르고 효율이 좋은 MOPC 정제를 모든 Oligo에 무상으로 제공하고 있습니다. MOPC 정제는 자체 개발한 Cartridge 정제
                    법으로 PAGE, HPLC 정제와 비슷한 수준의 효율을 보입니다. 또한, 철저한 품질관리를 위해 MALDI-TOF 를 이용하여 모든 Oligo의 QC를 진행하며, 자동 분주 시스템을 통해 정량의 Oligo를 제공하여 더욱 편리한 고객의 실험여건을 보장합니다.
                    합성된 Oligo는 결과 레포트와 함께 제공됩니다.</p>
            </div>
            <!--OLigo 공통 e -->

            <!--OLigo 탭 네비 s-->
            <div class="select-nav-box _content-anchor" id="tab_anchor">
            	<div class="select-tab-tit-box">
            		<div class="select_tit active">DNA</div>
            		<div class="select_tit">RNA</div>
            	</div>
                <p class="title font-h4">Oligo Synthesis</p> 
                <div class="select-box DNA active">
                    <div class="selected-value _selected-value">
                        <span class="text">Standard Oligo</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Standard Oligo</a></li>
                        <li class="option-value"><a href="#">Modified Oligo</a></li>
                        <li class="option-value"><a href="#">Premade Oligo</a></li>
                        <li class="option-value"><a href="#">Plate Oligo</a></li>
                        <li class="option-value"><a href="#">Duplex Oligo</a></li>
                        <li class="option-value"><a href="#">RAPD Kits</a></li>
                    </ul>
                </div>
                <div class="select-box RNA">
                    <div class="selected-value _selected-value">
                        <span class="text">Single Strand RNA</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Single Strand RNA</a></li>
                        <li class="option-value"><a href="#">Double Strand RNA</a></li>
                    </ul>
                </div>

            </div>
            <!--OLigo 탭 네비 e-->

            <!--DNA 탭 메뉴 s-->
            <div class="info-box-wrap tab-content active">
                <!--Standard Oligo-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Standard Oligo</p>
                    <p class="subject font-body-h-b">Standard Oligo 서비스는 각종 실험에 사용되는 Oligo를 고객이 원하는 서열로 합성하여 제공하는 서비스입니다.</p>
                    <p class="desc font-body img_bottom">마크로젠의 Oligo 합성 서비스는 합성부터 정제, 분주 등 전 과정을 신속하게 제공하기 위해 자체 개발한 최상의 자동화 시스템을 이용하며, 주문부터 배송까지 모든 프로세스를 모니터링할 수 있는  온라인 주문 시스템 LIMS를 지원합니다.  또한 MALDI-TOF mess spectrometry를 통해 모든 올리고의 품질을 관리합니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-standard.png" alt="Standard Oligo cffnb">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50nmole, 200nmole, 1umole 스케일 서비스 제공</p></li>
                                <li><p>주문 후 24시간 내 Oligo 배송(영업사원 배송지역/ 50mer 이하/ 오후 5시 이전 주문)</p></li>
                                <li><p>자동 정량분주 시스템(Liquid Handling System)에 의한 정확한 농도제공</p></li>
                                <li><p>LIMS(Laboratory Information Management System)를 기반으로 주문, 합성진행, 배송, 합성결과 확인가능</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
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
                <!--Modified Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Modified Oligo</p>
                    <p class="subject font-body-h-b">Modified Oligo는 Standard oligo의 3'과 5', Internal 또는 양쪽 말단에 특수 물질이 결합하여 있는 형태로 제공되는 Oligo 서비스입니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-modified.png" alt="Modified Oligo">
                    </div>
                    <p class="desc font-body">마크로젠의 Modified Oligo 서비스는 자체적으로 제작이 이루어 집니다.
                        Fluorescent Dyes, Non-fluorescent modifications, Dark quenchers, Internal modification 등의 Modified oligo를 매일 합성을 진행하여 신속한 실험 여건을 제공합니다.
                        또한, 주문 페이지를 통하여 Oligo 제작의 모든 상황을 확인할 수 있으며, 합성되는 모든 Modified oligo는 MALDI-TOF를 이용한 100&#37; QC과정을 거쳐 믿을 수 있는 품질의 Modified oligo를 제공합니다.
                    </p>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a>
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
                <!--Premade Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Premade Oligo</p>
                    <p class="subject font-body-h-b">Premade Oligo는 자주 사용되는 Universal Oligo를 PAGE 정제로 미리 제작하여, 주문 시 곧바로 제공할 수 있도록 준비된 올리고 입니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-premade.png" alt="Premade Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>5nmol of ≥ 95&#37; pure primer(PAGE Purification).</p></li>
                                <li><p>MALDI-TOF QC</p></li>
                                <li><p>HPLC로 purify 확인</p></li>
                                <li><p>Sequencing용 primer 70종, 미생물동정용 primer 17종, Random Primer 5종</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">마크로젠의 Premade Oligo는 PAGE 정제를 통해 순도 높은 Oligo를 제공합니다.
                                다양한 실험에 기본적으로 사용되는 Universal Oligo를 사전에 제작하여 신속하게 받아볼 수 있도록 Sequencing용 primer 70종, 미생물 동정용 primer 17종, Random primer 5종이 준비되어 있습니다. 또한, 합성되는 모든 oligo는 MALDI-TOF를 이용한 100% QC과정을 거쳐 믿을 수 있는 품질의 oligo를 제공합니다.
                            </p>
                        </div>
                    </div>

                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
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
                <!--Plate Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Plate Oligo</p>
                    <p class="subject font-body-h-b">플레이트 올리고(Plate Oligo)는 올리고를 96-well plate 형태로 제공하는 서비스입니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-plate.png" alt="Plate Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50nmole, 200nmole, 1umole 스케일 서비스 제공</p></li>
                                <li><p>Purification은 MOPC만 선택 가능</p></li>
                                <li><p>자동 정량 분주시스템(Liquid Handling System)에 의한 정확한 농도 제공</p></li>
                                <li><p>LIMS(Laboratory Information Management System)를 통한 주문, 합성 진행, 배송 및 합성 결과 확인
                                    가능</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">Plate Oligo 서비스는 Deep-well plate에 Oligo가 담겨진 상태에서 건조가 이루어지기 때문에 Plate 그대로 제공되어 연구자들이 손쉽게 실험에 사용할 수 있습니다.
                                올리고 건조 시에는 자체 개발한 건조 시스템이 사용되며, 합성된 모든 oligo는 MALDI-TOF를 이용한 100&#37; QC과정을 거쳐 믿을 수 있는 품질의 oligo를 제공합니다.
                            </p>
                        </div>

                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
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
                <!--Duplex Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Duplex Oligo</p>
                    <p class="subject font-body-h-b">Duplex Oligo(Annealing service)는 상보적인 두 개의 Single Strand DNA를 하나의 Double Strand DNA 형태로 제공하는 서비스입니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-duplex.png" alt="Duplex Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50nmole, 200nmole, 1umole 스케일 서비스 제공</p>/<li>
                                <li><p>자동 정량 분주시스템(Liquid Handling System)에 의한 정확한 농도 제공</p></li>
                                <li><p>LIMS(Laboratory Information Management System)를 통한 주문, 합성 진행, 배송 및 합성 결과 확인
                                    가능</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">Duplex Oligo 서비스는 Annealing 과정을 거쳐 상보적인 서열의 2개의 Oligo를 하나의 결합된 Oligo 형태로 제공됩니다.
                                Standard Oligo의 경우 최대 130bp, Modified Oligo는 최대 60bp 까지 Duplex Oligo 서비스가 가능하며, 합성과 Annealing 과정에서 2회의 QC를 거쳐 고객에 제공됩니다.
                            </p>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(3)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(5)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--RAPD Kits-->
                <div class="info-box">
                    <p class="font-h4 main-title">RAPD Kits</p>
                    <p class="subject font-body-h-b">RAPD Kits는 유전자 지도 작성 및 DNA 지문 채취 등 다양한 연구목적에 적합한 20개의 개별 10 mer Oligo를 제공하는 서비스입니다.
                    </p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-rapdkit.png" alt="RAPD Kits">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>10nmol of ≥ 95&#37; pure primer(PAGE Purification)</p></li>
                                <li><p>MALDI TOF QC</p></li>
                                <li><p>RAPD 10mer KIT 60종</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">RAPD(Random Amplified Polymorphic DNAs) Kits는 약 10bp의 작은 oligo를 이용하여 2개의 유전자 서열에 의해 맞추어 지는 게놈 부위만을 증폭시키는 기법에 활용되는 Oligo입니다. 마크로젠은 총 60set의 RAPD Kits가 준비되어 있으며, PAGE 정제를 통해 순도높은 Oligo를 제공합니다.
                                또한, 합성된 모든 Oligo의 100&#37; MALDI QC를 진행하여 믿을 수 있는 품질의 Oligo를 생산합니다.
                            </p>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper">
                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i>
                                <span>주문하기</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(4)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- DNA 탭 메뉴 e-->
            <!-- RNA 탭 메뉴 s -->
            <div class="info-box-wrap tab-content">
                <!--Single Strand RNA-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Single Strand RNA</p>
                    <p class="subject font-body-h-b">Single Strand RNA 서비스는 각종 실험에 사용되는 Oligo를 고객이 직접 design 한 서열로 합성하여 제공하는 서비스입니다.</p>
                    <p class="desc font-body img_bottom">마크로젠의 RNA Oligo 합성 서비스는 고품질의 원료를 이용하여 자체적으로 합성을 진행하고 HPLC정제를 통해 고순도의 RNA Oligo를 제공합니다. 또한, 주문부터 배송까지 모든 프로세스를 체계적으로 관리하고 MALDI-TOF mass spectrometry를 통해 모든 올리고의 품질을 관리합니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-single-strand.png" alt="Single Strand RNA">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>10nmole, 30nmole, 50nmol</p></li>
                                <li><p>Purification : Cartridge, HPLC</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
                        </div>
                        <div class="btn-wrapper">
                         	<a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>주문하기</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(7)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Double Strand RNA-->
                <div class="info-box">
                    <p class="font-h4 main-title">Double Strand RNA</p>
                    <p class="subject font-body-h-b">Double Strand RNA(Annealing service)는 직접 design 한 상보적인 두 개의 Single Strand RNA를 하나의 Double Strand RNA 형태로 제공하는 서비스 입니다.</p>
                    <p class="desc font-body img_bottom">Double Strand RNA는 Annealing 과정을 거쳐 상보적인 서열 2개의 Oligo를 하나의 결합된 Oligo 형태로 제공됩니다. 최대 50bp까지 Double Strand RNA 서비스가 가능하며, 합성과 Annealing 과정에서 2회의 QC를 거쳐 고객에게 제공됩니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-double-strand.png" alt="Double Strand RNA">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>10nmole, 30nmole, 50nmol</p></li>
                                <li><p>Purification : Cartridge, HPLC</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                 <div class="col" onclick="setTabContent(6)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- RNA 탭 메뉴 e -->
        </div>
    </div>

<!--비즈니스 스크립트 리펙토링 s-->
<script>
    /*변수*/
    var selectBox = $(".select-box");
    var option = $(".option-value");
    var tabTitle = $(".select_tit");

    var contentAnchor = $(".content-anchor");
    var anchorOption = $(".anchor-value");
    var anchor = $("._anchor");
    var offset = anchor.offset();
    var infoSectionList = [];
    
    function onClickTabTitle() {
    	/* 탭 타이틀 클릭시 이벤트 */
    	tabTitle.on('click', function() {
    		var idx = $(this).index(); 
    		$(this).addClass('active').siblings().removeClass('active');
    		
    		if($(this).text() === 'DNA') {
    			$('.select-box.DNA').addClass('active').siblings().removeClass('active');
    			$('.info-box-wrap').eq(idx).addClass('active').siblings().removeClass('active');
    			$('.select-box.DNA .option-value').eq(0).trigger('click');
    		}
    		else if ($(this).text() === 'RNA') {
    			$('.select-box.RNA').addClass('active').siblings().removeClass('active');
    			$('.info-box-wrap').eq(idx).addClass('active').siblings().removeClass('active');
    			$('.select-box.RNA .option-value').eq(0).trigger('click');
    		}
    	});
    }

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
        option.on('click', function (event) {
        	event.stopPropagation();
            $(this).addClass('active').siblings().removeClass('active')
            var idx = $(this).index('.option-value');
            var $info = $(".info-box-wrap > div");
            $info.addClass('show').siblings().removeClass('show');
            $info.eq(idx).addClass('show').siblings().removeClass('show');
            textChange($(this));
            setInfoSectionList($(this).text());
            if(selectBox.hasClass('open')) selectBox.removeClass('open').children('.select-option').slideUp(200).removeClass('open');
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
        console.log($('._selected-value').find('span').text())
    }

    /*이전 다음 이동*/
    function setTabContent(idx) {
        var $Select = $('._select-option li');
        var $Selected = $('._selected-value span');
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
    	onClickTabTitle();
        onClickSelectBox();
        onClickSelectOption();
        onClickBody();
        onClickFixedAnchor();
        fnMousewheel();
        setInfoSectionList($('._selected-value span').text())
    }

    init()


</script>

<!--비즈니스 스크립트 리펙토링 e-->

</body>