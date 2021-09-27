<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

  <div class="full-bg business_bg oligo">
    <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

    <div class="frame frameB">
      <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">연구서비스</li>
        <li class="breadcrumb-item">OLIGO</li>
    </ol>
</nav>

      <div class="hero-title">OLIGO</div>
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
    <p class="title font-h4">최신 자동화 시스템으로 마크로젠의 고품질 Oligo DNA를<br>
        빠르고 합리적인 비용으로 이용할 수 있습니다
    </p>
    <p class="subject">고객 맞춤형 DNA 제작을 통해 고품질의 Oligo를 제공하여 생물학 및 의학분야의 기술발전에 앞장서겠습니다</p>
    <div class="img">
        <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-intro.png" alt="oligoIntro">
    </div>
    <p class="desc">마크로젠은 고품질 원료와 최적화된 자동화 시스템을 이용하여 다양한 Oligo 합성서비스를 제공합니다. 실험에 사용되는 다양한 Oligo를 원하는 염기서열로 합성하여 제공하는 고객맞춤 서비스입니다.
        합성된 Oligo는 DNA  Sequencing, PCR, SNP 연구, Gene Synthesis, NGS 서비스, qPCR 서비스, Biochip, siRNA 발현 등 생물학 및 의학분야에서 다양하게 활용되고 있습니다. 마크로젠은 고품질의
        Oligo를 제공하기 위하여 좋은 원료와 자동화 시스템을 이용하여 생산하고 있으며, 빠르고 효율이 좋은 MOPC 정제를 모든 Oligo에 무상으로 제공하고 있습니다. MOPC 정제는 자체 개발한 Cartridge 정제
        법으로 PAGE, HPLC 정제와 비슷한 수준의 효율을 보입니다. 또한, 철저한 품질관리를 위해 MALDI-TOF 를 이용하여 모든 Oligo의 QC를 진행하며, 자동 분주 시스템을 통해 정량의 Oligo를 제공하여 더욱 편리한 고객의 실험여건을 보장합니다.
        합성된 Oligo는 결과 레포트와 함께 제공됩니다.</p>
</div>

      <!--탭 링크-->
      <div class="tab-box" id="_tab-box">
        <p class="font-h4 title">DNA Synthesis SERVICE</p>
        <div class="slide-tab-wrap">
          <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
            <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
              <div class="swiper-slide active"><a href="#">Standard Oligo</a></div>
              <div class="swiper-slide "><a href="#">Modified Oligo</a></div>
              <div class="swiper-slide"><a href="#">Premade Oligo</a></div>
              <div class="swiper-slide"><a href="#">Plate Oligo</a></div>
              <div class="swiper-slide"><a href="#">Duplex Oligo</a></div>
              <div class="swiper-slide"><a href="#">RAPD Kits</a></div>
            </div>
          </div>
        </div>
      </div>
      <!--탭 스크립트-->
      <script>
        $('._swiperTab .swiper-slide').on('click', function(){
          var idx = $(this).index();
          $(this).addClass('active').siblings().removeClass('active');
          $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
          $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
        });
      </script>

      <div class="info-box-wrap tab-content">
        <!--Standard Oligo-->
        <div class="info-box show">
          <p class="font-h4 main-title">Standard Oligo</p>
          <p class="subject">Standard Oligo 서비스는 각종 실험에 사용되는 Oligo를 고객이 원하는 서열로 합성하여 제공하는 서비스입니다.</p>
          <p class="desc img_bottom">마크로젠의 Oligo 합성 서비스는 합성부터 정제, 분주 등 전 과정을 신속하게 제공하기 위해 자체 개발한 최상의 자동화 시스템을 이용하며, 주문부터 배송까지 모든 프로세스를 모니터링할 수 있는  온라인 주문 시스템 LIMS를 지원합니다.  또한 MALDI-TOF mess spectrometry를 통해 모든 올리고의 품질을 관리합니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-standard.png" alt="Standard Oligo cffnb">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>50nmole, 200nmole, 1umole 스케일 서비스 제공</li>
                <li>주문 후 24시간 내 Oligo 배송(영업사원 배송지역/ 50mer 이하/ 오후 5시 이전 주문)</li>
                <li>자동 정량분주 시스템(Liquid Handling System)에 의한 정확한 농도제공</li>
                <li>LIMS(Laboratory Information Management System)를 기반으로 주문, 합성진행, 배송, 합성결과 확인가능</li>
              </ul>
            </div>
          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item next">
                  <div class="title">Identification 서비스</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
        <!--Modified Oligo-->
        <div class="info-box">
          <p class="font-h4 main-title">Modified Oligo</p>
          <p class="subject">Modified Oligo는 Standard oligo의 3'과 5', Internal 또는 양쪽 말단에 특수 물질이 결합하여 있는 형태로 제공되는 Oligo 서비스입니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-modified.png" alt="Modified Oligo">
          </div>
          <p class="desc">마크로젠의 Modified Oligo 서비스는 자체적으로 제작이 이루어 집니다.
            Fluorescent Dyes, Non-fluorescent modifications, Dark quenchers, Internal modification 등의 Modified oligo를 매일 합성을 진행하여 신속한 실험 여건을 제공합니다.
            또한, 주문 페이지를 통하여 Oligo 제작의 모든 상황을 확인할 수 있으며, 합성되는 모든 Modified oligo는 MALDI-TOF를 이용한 100% QC과정을 거쳐 믿을 수 있는 품질의 Modified oligo를 제공합니다.
          </p>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev">
                  <div class="title">Standard Oligo</div>
                </a>
                <a href="#" class="item next">
                  <div class="title">Premade Oligo</div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!--Premade Oligo-->
        <div class="info-box">
          <p class="font-h4 main-title">Premade Oligo</p>
          <p class="subject">Premade Oligo는 자주 사용되는 Universal Oligo를 PAGE 정제로 미리 제작하여, 주문 시 곧바로 제공할 수 있도록 준비된 올리고 입니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-premade.png" alt="Premade Oligo">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>5nmol of ≥ 95% pure primer(PAGE Purification).</li>
                <li>MALDI-TOF QC</li>
                <li>HPLC로 purify 확인</li>
                <li>Sequencing용 primer 70종, 미생물동정용 primer 17종, Random Primer 5종</li>
              </ul>
            </div>
            <div class="list-area">
              <p class="desc">마크로젠의 Premade Oligo는 PAGE 정제를 통해 순도 높은 Oligo를 제공합니다.
              다양한 실험에 기본적으로 사용되는 Universal Oligo를 사전에 제작하여 신속하게 받아볼 수 있도록 Sequencing용 primer 70종, 미생물 동정용 primer 17종, Random primer 5종이 준비되어 있습니다. 또한, 합성되는 모든 oligo는 MALDI-TOF를 이용한 100% QC과정을 거쳐 믿을 수 있는 품질의 oligo를 제공합니다.
              </p>
            </div>
          </div>

          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev">
                  <div class="title">Standard Oligo</div>
                </a>
                <a href="#" class="item next">
                  <div class="title">Premade Oligo</div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!--Plate Oligo-->
        <div class="info-box">
          <p class="font-h4 main-title">Plate Oligo</p>
          <p class="subject">플레이트 올리고(Plate Oligo)는 올리고를 96-well plate 형태로 제공하는 서비스입니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-plate.png" alt="Plate Oligo">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>50nmole, 200nmole, 1umole 스케일 서비스 제공</li>
                <li>Purification은 MOPC만 선택 가능</li>
                <li>자동 정량 분주시스템(Liquid Handling System)에 의한 정확한 농도 제공</li>
                <li>LIMS(Laboratory Information Management System)를 통한 주문, 합성 진행, 배송 및 합성 결과 확인 가능</li>
              </ul>
            </div>
            <div class="list-area">
            <p class="desc">Plate Oligo 서비스는 Deep-well plate에 Oligo가 담겨진 상태에서 건조가 이루어지기 때문에 Plate 그대로 제공되어 연구자들이 손쉽게 실험에 사용할 수 있습니다.
              올리고 건조 시에는 자체 개발한 건조 시스템이 사용되며, 합성된 모든 oligo는 MALDI-TOF를 이용한 100% QC과정을 거쳐 믿을 수 있는 품질의 oligo를 제공합니다.
            </p>
            </div>

          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev">
                  <div class="title">Premade Oligo</div>
                </a>
                <a href="#" class="item next">
                  <div class="title">Duplex Oligo</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
        <!--Duplex Oligo-->
        <div class="info-box">
          <p class="font-h4 main-title">Duplex Oligo</p>
          <p class="subject">Duplex Oligo(Annealing service)는 상보적인 두 개의 Single Strand DNA를 하나의 Double Strand DNA 형태로 제공하는 서비스입니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-duplex.png" alt="Duplex Oligo">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>50nmole, 200nmole, 1umole 스케일 서비스 제공</li>
                <li>자동 정량 분주시스템(Liquid Handling System)에 의한 정확한 농도 제공</li>
                <li> LIMS(Laboratory Information Management System)를 통한 주문, 합성 진행, 배송 및 합성 결과 확인 가능</li>
              </ul>
            </div>
            <div class="list-area">
              <p class="desc">Duplex Oligo 서비스는 Annealing 과정을 거쳐 상보적인 서열의 2개의 Oligo를 하나의 결합된 Oligo 형태로 제공됩니다.
                Standard Oligo의 경우 최대 130bp, Modified Oligo는 최대 60bp 까지 Duplex Oligo 서비스가 가능하며, 합성과 Annealing 과정에서 2회의 QC를 거쳐 고객에 제공됩니다.
              </p>
            </div>
          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev">
                  <div class="title">Plate Oligo</div>
                </a>
                <a href="#" class="item next">
                  <div class="title">RAPD Kits</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
        <!--RAPD Kits-->
        <div class="info-box">
          <p class="font-h4 main-title">RAPD Kits</p>
          <p class="subject">RAPD Kits는 유전자 지도 작성 및 DNA 지문 채취 등 다양한 연구목적에 적합한 20개의 개별 10 mer Oligo를 제공하는 서비스입니다.
          </p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-rapdkit.png" alt="RAPD Kits">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>10nmol of ≥ 95% pure primer(PAGE Purification)</li>
                <li>MALDI TOF QC</li>
                <li>RAPD 10mer KIT 60종</li>
              </ul>
            </div>
            <div class="list-area">
            <p class="desc">RAPD(Random Amplified Polymorphic DNAs) Kits는 약 10bp의 작은 oligo를 이용하여 2개의 유전자 서열에 의해 맞추어 지는 게놈 부위만을 증폭시키는 기법에 활용되는 Oligo입니다. 마크로젠은 총 60set의 RAPD Kits가 준비되어 있으며, PAGE 정제를 통해 순도높은 Oligo를 제공합니다.
              또한, 합성된 모든 Oligo의 100% MALDI QC를 진행하여 믿을 수 있는 품질의 Oligo를 생산합니다.
            </p>
            </div>
          </div>

          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev">
                  <div class="title">Duplex Oligo</div>
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