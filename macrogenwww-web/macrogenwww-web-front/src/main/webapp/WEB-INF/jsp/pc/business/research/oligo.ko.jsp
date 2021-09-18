<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

  <div class="full-bg business_bg">
    <!--
<header class="header" id="header">
    <div class="inner">
        <div class="section_gnb">
            <h1 class="logo"><a href="#">마크로젠 로고</a></h1>
            <nav>
                <ul id="gnb">
                    <li><a href="#" class="font-bold">macrogen</a></li> &lt;!&ndash; active 시, 활성화 &ndash;&gt;
                    <li><a href="#" class="font-bold">business</a></li>
                    <li><a href="#" class="font-bold">r&d</a></li>
                    <li><a href="#" class="font-bold">newsroom</a></li>
                    <li><a href="#" class="font-bold">ir</a></li>
                    <li><a href="#" class="font-bold">esg</a></li>
                </ul>
            </nav>
        </div>
        <div class="section_btn">
            <ul class="sns">
                <li><a href="#"><i class="icon icon-facebook-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-youtube-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-blog-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-linkedin-circle-white"></i></a></li>
            </ul>
            <div class="btn_eng">
                <a href="#" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
            </div>
        </div>
    </div>
    <div class="gnb-2depth" id="gnb2Depth">
        <div class="box">
            <div class="item">
                <div class="title"><a href="#">회사소개</a></div>
                <ul>
                    <li><a href="#">기업개요</a></li>
                    <li><a href="#">경영진</a></li>
                    <li><a href="#">연혁</a></li>
                    <li><a href="#">비전</a></li>
                    <li><a href="#">마크로젠 CI</a></li>
                    <li><a href="#">인증</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="title"><a href="#">글로벌 네트워크</a></div>
            </div>
            <div class="item">
                <div class="title"><a href="#">지속가능경영</a></div>
                <ul>
                    <li><a href="#">ESG경영</a></li>
                    <li><a href="#">윤리경영</a></li>
                    <li><a href="#">사회공헌</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="title"><a href="#">채용</a></div>
                <ul>
                    <li><a href="#">인재상</a></li>
                    <li><a href="#">직무소개</a></li>
                    <li><a href="#">채용안내</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<script>
    $('#gnb2Depth').hide();
    $('#gnb li a').on({
        "mouseenter focusin" : function () {
            $('#header').addClass('active header-bg-white');
            $('#gnb2Depth').slideDown('500','linear');
            $('body, html').scroll(function(){
                $('#header').removeClass('active');
                $('#gnb2Depth').slideUp('500','linear');
            });
        },
    })
    $('#header').on({
        "mouseleave focusout" : function () {
            setTimeout(function() {
                $('#header').removeClass('active header-bg-white');
                }, 300);
            $('#gnb2Depth').slideUp('400','linear');
        }
    })
</script>
-->


		<header class="header">
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
      <a href="#" class="btn btn-round btn-service">
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
      <div class="tab-box">
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
          <p class="desc img_bottom">합성된 Oligo는 DNA sequencing, SNP 연구, Gene Synthesis, NGS 분석, qPCR 분석, Biochip, siRNA 발현 등 생물학 및 의학분야에서 다양하게 활용되고 있습니다. 마크로젠의 Oligo 합성 서비스는 합성부터 정제, 분주 등 전 과정을 자체 개발한 자동화 시스템을 이용하여 최상의 Oligo 합성 서비스를 신속히 제공하며, 주문부터 배송까지 모든 프로세스를 온라인 주문 시스템(LIMS)을 통해 모니터링 할 수 있습니다. 또한, MALDI TOF mass spectrometry를 통해 모든 Oligo의 품질을 관리하고 있습니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-standard.png" alt="Standard Oligo cffnb">
          </div>
          <div class="list-area-group figure_bottom">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>50nmole, 200nmole, 1umole 스케일 서비스 제공</li>
                <li>주문 후 24시간 내 Oligo 배송(영업사원 배송지역/ 50mer 이하/ 오후 5시 이전 주문)</li>
                <li>자동 정량분주 시스템(Liquid Handling System)에 의한 정확한 농도제공</li>
                <li>LIMS(Laboratory Information Management System)를 기반으로 주문, 합성진행, 배송, 합성결과 확인가능</li>
              </ul>
            </div>
            <div class="list-area">
              <p class="font-h8 title">Guaranteed Yield</p>
              <ul class="list-circle-dot">
                <li>Standard Oligo는 최소 3mer에서 최대 130mer까지 합성가능 (5mer 이하 혹은 90mer 이상 Oligo는 MALDI Q/C 미 제공)
                </li>
                <li>Modified Oligo의 경우 최대 60mer까지 추천 (60mer 이상 올리고는 전화문의)</li>
              </ul>
            </div>
          </div>
          <table class="table">
            <colgroup>
              <col style="width:45%;">
              <col style="width:20%;">
              <col style="width:15%;">
              <col style="width:20%;">
            </colgroup>
            <thead>
            <tr>
              <th rowspan="2">Guaranteed Yiled <span>(OD)</span></th>
              <th colspan="3">Synthesis Scale <span>(25mer기준)</span></th>
            </tr>
            <tr>
              <th class="sub-title">0.05 µmole</th>
              <th class="sub-title">0.2 µmole</th>
              <th class="sub-title">1 µmole</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>MOPC(Standard Oligo)</td>
              <td>6</td>
              <td>8</td>
              <td>20</td>
            </tr>
            <tr>
              <td>MOPC(Modified Oligo)</td>
              <td>-</td>
              <td>6</td>
              <td>10</td>
            </tr>
            <tr>
              <td>PAGE</td>
              <td>-</td>
              <td>4</td>
              <td>8</td>
            </tr>
            <tr>
              <td>HPLC</td>
              <td>-</td>
              <td>4</td>
              <td>8</td>
            </tr>

            </tbody>
          </table>
          <p class="font-h8 sub-title">Oligo Synthesis Purification</p>
          <table class="table">
            <colgroup>
              <col style="width:33%;">
              <col style="width:33%;">
              <col style="width:33%;">
            </colgroup>
            <thead>
            <tr>
              <th>MOPC<span class="additional">(Macrogen Oligonucleotide Purification Cartridge)</span></th>
              <th>HPLC</th>
              <th>PAGE</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td class="text-start">
                - Standard Oligo와 일부 Modified Oligo 이용가능<br>
                - purity of ≥85%(LC 분석)<br>
                - 모든 Oligo에 기본사양으로 무료제공
              </td>
              <td class="text-start">
                - 모든 Standard Oligo 및 Modified Oligo 이용가능<br>
                - 50mer 이하 Oligo에 추천<br>
                - purity of ≥90%(LC 분석)
              </td>
              <td class="text-start">
                - 모든 Standard Oligo 및 Modified Oligo 이용가능<br>
                - 50mer 이하 Oligo에 추천<br>
                - purity of ≥90%(LC 분석)
              </td>
            </tr>
            </tbody>
          </table>
          <p class="font-h8 sub-title graph_bottom">100% QC</p>
          <p class="desc figure_bottom">Oligo의 품질보증을 위해 합성된 모든 Oligo는 OD측정과 MALDI-TOF MS 분석을 진행한 후 출고 및 배송을 진행합니다. 또한 주문한 Oligo는 결과 레포트가 함께 발송됩니다.<br>
            Oligo의 Quality Check 방법으로 분자량을 확인하는 MALDI-TOF MS 방법을 사용하며, N-1, N-2 등이 포함된 Oligo를 정밀히 분석합니다.</p>
          <div class="border-gray-box">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-common-qcgraph.png" alt="그래프">
          </div>
          <div class="btn-area">
            <a href="#" class="btn btn-white"><span>서비스문의</span></a>
            <a href="#" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="#" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
          <p class="subject">Standard oligo의 3'과 5', Internal 또는 양쪽 말단에 특수 물질이 결합되어 있는 형태로 제공되는 Oligo 서비스입니다.</p>
          <p class="desc img_bottom">마크로젠의 Oligo 합성 서비스는 합성부터 정제, 분주 등 전 과정을 신속하게 제공하기 위해 자체 개발한 최상의 자동화 시스템을 이용하며, 주문부터 배송까지 모든 프로세스를 모니터링할 수 있는
            온라인 주문 시스템 LIMS를 지원합니다. 또한 MALDI-TOF를 통해 모든 올리고의 품질을 관리합니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-modified.png" alt="Modified Oligo">
          </div>
          <table class="table table-row">
            <colgroup>
              <col style="width:33.3333%;">
              <col style="width:66.6666%;">
            </colgroup>
            <tbody>
            <tr>
              <th>Fluorescent dyes</th>
              <td class="text-start">- FAM,HEX,TET,JOE, TAMRA, CY3, CY5, CY3.5, CY5.5<br>
                - CAL Fluor560, CAL Flour610<br>
                - ATTO565 NHS-ester, ROX NHS-ester, TexasRed NHS-ester<br>
                -  Yakima Yellow </td>
            </tr>
            <tr>
              <th>Non fluorescent modifications </th>
              <td class="text-start">- Phosphorylatioin, Biotin, NH2C6, NH2C12, C3 Spacer, dSpacer<br>
                - Thiol C6 S-S<br>
                - Biotin-TEG </td>
            </tr>
            <tr>
              <th>Dark quenchers</th>
              <td class="text-start">- Black Hole Quencher(BHQ1, BHQ2, BHQ3)<br>
                - Blackberry Quencher(BBQ650)<br>
                - Dabcyl and Eclipes quencher</td>
            </tr>
            <tr>
              <th>Internal modification</th>
              <td class="text-start">- DeoxyInosine (dI)<br>
                - DeoxyUridine(dU)<br>
                - Phosphorothioate(PS bond)<br>
                - C3 Spacer, dSpacer, Thiol C6 S-S<br>
                - CY3. CY5</td>
            </tr>
            </tbody>
          </table>
          <div class="list-area-group">
            <div class="list-area">
              <p class="figure_bottom font-h8">Dual-labeled DNA Probes</p>
              <table class="table">
                <colgroup>
                  <col style="width:50%;">
                  <col style="width:50%;">
                </colgroup>
                <thead>
                <tr>
                  <th>5' Fluorophore</th>
                  <th>3' Quencher</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td class="text-center">FAM</td>
                  <td class="text-center">TAMRA, BHQ1, Dabcyl</td>
                </tr>
                <tr>
                  <td class="text-center">HEX</td>
                  <td class="text-center">TAMRA, BHQ1, BHQ2, Dabcyl</td>
                </tr>
                <tr>
                  <td class="text-center">TET</td>
                  <td class="text-center">TAMRA, BHQ1, BHQ2, Dabcyl</td>
                </tr>
                <tr>
                  <td class="text-center">JOE</td>
                  <td class="text-center">TAMRA, BHQ1, BHQ2, Dabcyl</td>
                </tr>
                <tr>
                  <td class="text-center">CY3</td>
                  <td class="text-center">BHQ1, BHQ2, BHQ3</td>
                </tr>
                <tr>
                  <td class="text-center">CY3.5</td>
                  <td class="text-center">BHQ2</td>
                </tr>
                <tr>
                  <td class="text-center">CY5</td>
                  <td class="text-center">BHQ2, BHQ3</td>
                </tr>
                <tr>
                  <td class="text-center">CY5.5</td>
                  <td class="text-center">BHQ2, BHQ3, BBQ650</td>
                </tr>
                <tr>
                  <td class="text-center">TAMRA</td>
                  <td class="text-center">BHQ1, BHQ2, Dabcyl</td>
                </tr>
                <tr>
                  <td class="text-center">CAL Fluor560</td>
                  <td class="text-center">BHQ1</td>
                </tr>
                <tr>
                  <td class="text-center">CAL Fluor610</td>
                  <td class="text-center">BHQ2, Dabcyl</td>
                </tr>
                <tr>
                  <td class="text-center">ATTO565 NHS-ester</td>
                  <td class="text-center">BHQ1, BHQ2, BBQ650</td>
                </tr>
                <tr>
                  <td class="text-center">ROX NHS-ester</td>
                  <td class="text-center">TAMRA, BHQ2, BBQ650</td>
                </tr>
                <tr>
                  <td class="text-center">TexasRed NHS-ester</td>
                  <td class="text-center">BHQ1, BHQ2, BBQ650</td>
                </tr>
                <tr>
                  <td class="text-center">Yakima Yellow</td>
                  <td class="text-center">BHQ1, BHQ2, Dabcyl</td>
                </tr>
                </tbody>
              </table>
            </div>
            <div class="list-area">
              <p class="figure_bottom font-h8">MGB Probe</p>
              <table class="table">
                <colgroup>
                  <col style="width:50%;">
                  <col style="width:50%;">
                </colgroup>
                <thead>
                <tr>
                  <th>5' Fluorophore</th>
                  <th>3' Quencher</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td class="text-center">FAM</td>
                  <td class="text-center">MGBEclipse</td>
                </tr>
                <tr>
                  <td class="text-center">HEX</td>
                  <td class="text-center">MGBEclipse</td>
                </tr>
                <tr>
                  <td class="text-center">TET</td>
                  <td class="text-center">MGBEclipse</td>
                </tr>
                <tr>
                  <td class="text-center">Yakima Yellow</td>
                  <td class="text-center">MGBEclipse</td>
                </tr>
                </tbody>
              </table>
            </div>
            <div class="list-area">
              <p class="figure_bottom font-h8">VIC, NED, LIZ, PET alternatives</p>
              <table class="table">
                <colgroup>
                  <col style="width:33.3333%;">
                  <col style="width:33.3333%;">
                  <col style="width:33.3333%;">
                </colgroup>
                <thead>
                <tr>
                  <th>Color</th>
                  <th>Macrogen</th>
                  <th>ABI</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td class="text-center">Green</td>
                  <td class="text-center">HEX, JOE</td>
                  <td class="text-center">VIC</td>
                </tr>
                <tr>
                  <td class="text-center">Yellow</td>
                  <td class="text-center">TAMRA</td>
                  <td class="text-center">NED</td>
                </tr>
                <tr>
                  <td class="text-center">Orange</td>
                  <td class="text-center">ATTO565</td>
                  <td class="text-center">PET</td>
                </tr>
                <tr>
                  <td class="text-center">Red</td>
                  <td class="text-center">CY5</td>
                  <td class="text-center">LIZ</td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="btn-area">
            <a href="#" class="btn btn-white"><span>서비스문의</span></a>
            <a href="#" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="#" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
          <p class="subject">Premade Oligo는 자주 사용되는 Universal Oligo를 PAGE 정제로 미리 제작하여, 주문 등록 시 즉시 제공할 수 있도록 준비된 Oligo 입니다.</p>
          <p class="desc img_bottom">합성된 Oligo는 DNA sequencing, SNP 연구, Gene Synthesis, NGS 분석, qPCR 분석, Biochip, siRNA 발현 등 생물학 및 의학분야에서 다양하게 활용되고 있습니다. 마크로젠의 Oligo 합성 서비스는 합성부터 정제, 분주 등 전 과정을 자체 개발한 자동화 시스템을 이용하여 최상의 Oligo 합성 서비스를 신속히 제공하며, 주문부터 배송까지 모든 프로세스를 온라인 주문 시스템(LIMS)을 통해 모니터링 할 수 있습니다.  또한, MALDI TOF mass spectrometry를 통해 모든 Oligo의 품질을 관리하고 있습니다.</p>
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
              <p class="sub-title font-h8">Oligo Synthesis Purification</p>
              <div class="table-wrap">
                <table class="table">
                  <colgroup>
                    <col style="width:33%;">
                    <col style="width:33%;">
                    <col style="width:33%;">
                  </colgroup>
                  <thead>
                  <tr>
                    <th>Primer Name</th>
                    <th>Sequence</th>
                    <th>Base</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td class="text-center">a-Facter</td>
                    <td class="text-center">TACTATTGCCAGCATTGCTGC</td>
                    <td class="text-center">21</td>
                  </tr>
                  <tr>
                    <td class="text-center">AD Reverse</td>
                    <td class="text-center">AGATGGTGCACGATGCACAG</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">AOX1 Forward</td>
                    <td class="text-center">GACTGGTTCCAATTGACAAGC</td>
                    <td class="text-center">21</td>
                  </tr>
                  <tr>
                    <td class="text-center">AOX1 Reverse</td>
                    <td class="text-center">GCAAATGGCATTCTGACATCC</td>
                    <td class="text-center">21</td>
                  </tr>
                  <tr>
                    <td class="text-center">BGH-R</td>
                    <td class="text-center">TAGAAGGCACAGTCGAGG</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">Bluescript SK</td>
                    <td class="text-center">CGCTCTAGAACTAGTGGATC</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">Bluescript KS</td>
                    <td class="text-center">TCGAGGTCGACGGTATC</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">CMV-F</td>
                    <td class="text-center">CGCAAATGGGCGGTAGGCGTG</td>
                    <td class="text-center">21</td>
                  </tr>
                  <tr>
                    <td class="text-center">CYC1 Reverse</td>
                    <td class="text-center">GCGTGAATGTAAGCGTGAC</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">DsRed1-C</td>
                    <td class="text-center">AGCTGGACATCACCTCCCACAACG</td>
                    <td class="text-center">24</td>
                  </tr>
                  <tr>
                    <td class="text-center">DsRed1-N</td>
                    <td class="text-center">GTACTGGAACTGGGGGGACAG</td>
                    <td class="text-center">21</td>
                  </tr>
                  <tr>
                    <td class="text-center">EBV-RP</td>
                    <td class="text-center">GTGGTTTGTCCAAACTCATC</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">EGFP-N</td>
                    <td class="text-center">CGTCGCCGTCCAGCTCGACCAG</td>
                    <td class="text-center">22</td>
                  </tr>
                  <tr>
                    <td class="text-center">EGFP-C</td>
                    <td class="text-center">CATGGTCCTGCTGGAGTTCGTG</td>
                    <td class="text-center">22</td>
                  </tr>
                  <tr>
                    <td class="text-center">EGFP-CF</td>
                    <td class="text-center">CGTCCATGCCGAGAGTG</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">EGFP-NR</td>
                    <td class="text-center">CGTCGCCGTCCAGCTC</td>
                    <td class="text-center">16</td>
                  </tr>
                  <tr>
                    <td class="text-center">GAL1 Forward</td>
                    <td class="text-center">AATATACCTCTATACTTTAACGTC</td>
                    <td class="text-center">24</td>
                  </tr>
                  <tr>
                    <td class="text-center">Gal4AD</td>
                    <td class="text-center">TACCACTACAATGGATG</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">GLprimer1</td>
                    <td class="text-center">TGTATCTTATGGTACTGTAACTG</td>
                    <td class="text-center">23</td>
                  </tr>
                  <tr>
                    <td class="text-center">GLprimer2</td>
                    <td class="text-center">CTTTATGTTTTTGGCGTCTTCCA</td>
                    <td class="text-center">23</td>
                  </tr>
                  <tr>
                    <td class="text-center">LCO1490</td>
                    <td class="text-center">GGTCAACAAATCATAAAGATATTGG</td>
                    <td class="text-center">25</td>
                  </tr>
                  <tr>
                    <td class="text-center">HCO2198</td>
                    <td class="text-center">TAAACTTCAGGGTGACCAAAAAATCA</td>
                    <td class="text-center">26</td>
                  </tr>
                  <tr>
                    <td class="text-center">KAN2-FP</td>
                    <td class="text-center">ACCTACAACAAAGCTCTCATCAACC</td>
                    <td class="text-center">25</td>
                  </tr>
                  <tr>
                    <td class="text-center">KAN2-RP</td>
                    <td class="text-center">GCAATGTAACATCAGAGATTTTGAG</td>
                    <td class="text-center">25</td>
                  </tr>
                  <tr>
                    <td class="text-center">M13F-pUC(-40)</td>
                    <td class="text-center">GTTTTCCCAGTCACGAC</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">M13R-pUC(-40)</td>
                    <td class="text-center">CAGGAAACAGCTATGAC</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">M13F</td>
                    <td class="text-center">GTAAAACGACGGCCAGT</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">M13R</td>
                    <td class="text-center">GCGGATAACAATTTCACACAGG</td>
                    <td class="text-center">22</td>
                  </tr>
                  <tr>
                    <td class="text-center">M13-FP</td>
                    <td class="text-center">TGTAAAACGACGGCCAGT</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">MT Forward</td>
                    <td class="text-center">CATCTCAGTGCAACTAAA</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">pGEX5</td>
                    <td class="text-center">GGCAAGCCACGTTTGGTG</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">pGEX3</td>
                    <td class="text-center">GGAGCTGCATGTGTCAGAGG</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">pMalE</td>
                    <td class="text-center">TCAGACTGTCGATGAAGC</td>
                    <td class="text-center">18</td>
                  </tr>
                  </tbody>
                </table>
                <table class="table">
                  <colgroup>
                    <col style="width:33%;">
                    <col style="width:33%;">
                    <col style="width:33%;">
                  </colgroup>
                  <thead>
                  <tr>
                    <th>Primer Name</th>
                    <th>Sequence</th>
                    <th>Base</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td class="text-center">pQE-F</td>
                    <td class="text-center">CCCGAAAAGTGCCACCTG</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">pQE-R</td>
                    <td class="text-center">GTTCTGAGGTCATTACTGG</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">pBAD-F</td>
                    <td class="text-center">ATGCCATAGCATTTTTATCCA</td>
                    <td class="text-center">21</td>
                  </tr>
                  <tr>
                    <td class="text-center">AOX1 Reverse</td>
                    <td class="text-center">GCAAATGGCATTCTGACATCC</td>
                    <td class="text-center">21</td>
                  </tr>
                  <tr>
                    <td class="text-center">pBAD-FP</td>
                    <td class="text-center">ATGCCATAGCATTTTTATCC</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">pBAD-R</td>
                    <td class="text-center">GATTTAATCTGTATCAGG</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">pTrcHis Forward</td>
                    <td class="text-center">GAGGTATATATTAATGTATCG</td>
                    <td class="text-center">21</td>
                  </tr>
                  <tr>
                    <td class="text-center">pJET1.2F</td>
                    <td class="text-center">CGACTCACTATAGGGAGAGCGGC</td>
                    <td class="text-center">23</td>
                  </tr>
                  <tr>
                    <td class="text-center">pJET1.2R</td>
                    <td class="text-center">AAGAACATCGATTTTCCATGGCAG</td>
                    <td class="text-center">24</td>
                  </tr>
                  <tr>
                    <td class="text-center">pEGFP_N</td>
                    <td class="text-center">CCGTCCAGCTCGACCAG</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">pEGFP-FP</td>
                    <td class="text-center">TTTAGTGAACCGTCAGATC</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">pEGFP-RP</td>
                    <td class="text-center">AACAGCTCCTCGCCCTTG</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">pBacPAC-RP</td>
                    <td class="text-center">GTCTGTAAATCAACAACGC</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">pDONOR-FP</td>
                    <td class="text-center">TAACGCTAGCATGGATCTC</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">pESP-RP</td>
                    <td class="text-center">TCCAAAAGAAGTCGAGTGG</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">pET-24a</td>
                    <td class="text-center">GGGTTATGCTAGTTATTGCTCAG</td>
                    <td class="text-center">23</td>
                  </tr>
                  <tr>
                    <td class="text-center">pET-RP</td>
                    <td class="text-center">CTAGTTATTGCTCAGCGG</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">pREP-fwd</td>
                    <td class="text-center">GCTCGATACAATAAACGCC</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">pRH Forward</td>
                    <td class="text-center">CTGTCTCTATACTCCCCTATAG</td>
                    <td class="text-center">22</td>
                  </tr>
                  <tr>
                    <td class="text-center">pRH Reverse</td>
                    <td class="text-center">CAAAATTCAATAGTTACTATCGC</td>
                    <td class="text-center">23</td>
                  </tr>
                  <tr>
                    <td class="text-center">RVprimer3</td>
                    <td class="text-center">CTAGCAAAATAGGCTGTCCC</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">RVprimer4</td>
                    <td class="text-center">GACGATAGTCATGCCCCGCG</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">SP6</td>
                    <td class="text-center">ATTTAGGTGACACTATAG</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">SV40-pArev</td>
                    <td class="text-center">CCTCTACAAATGTGGTATGG</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">SV40-Promoter</td>
                    <td class="text-center">GCCCCTAACTCCGCCCATCC</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">STag 18mer Primer</td>
                    <td class="text-center">GAACGCCAGCACATGGAC</td>
                    <td class="text-center">18</td>
                  </tr>
                  <tr>
                    <td class="text-center">QE Promoter</td>
                    <td class="text-center">CCGAAAAGTGCCACCTG</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">T3</td>
                    <td class="text-center">ATTAACCCTCACTAAAG</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">T7terminator</td>
                    <td class="text-center">GCTAGTTATTGCTCAGCGG</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">T7promoter</td>
                    <td class="text-center">TAATACGACTCACTATAGGG</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">T7 EEV</td>
                    <td class="text-center">ATGTCGTAATAACCCCGCCCCG</td>
                    <td class="text-center">22</td>
                  </tr>
                  <tr>
                    <td class="text-center">T7</td>
                    <td class="text-center">AATACGACTCACTATAG</td>
                    <td class="text-center">17</td>
                  </tr>
                  <tr>
                    <td class="text-center">U-19mer Primer</td>
                    <td class="text-center">GTTTTCCCAGTCACGACGT</td>
                    <td class="text-center">19</td>
                  </tr>
                  <tr>
                    <td class="text-center">35S-A</td>
                    <td class="text-center">AAGGGTCTTGCGAAGGATAG</td>
                    <td class="text-center">20</td>
                  </tr>
                  <tr>
                    <td class="text-center">35S-B</td>
                    <td class="text-center">AGTGGAAAAGGAAGGTGGCT</td>
                    <td class="text-center">20</td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="list-area">
              <div class="table-wrap">
                <div class="table-title-box">
                  <p class="sub-title font-h8">미생물동정용 Primer</p>
                  <table class="table">
                    <colgroup>
                      <col style="width:33.3333%;">
                      <col style="width:33.3333%;">
                      <col style="width:33.3333%;">
                    </colgroup>
                    <thead>
                    <tr>
                      <th>Primer Name</th>
                      <th>Sequence</th>
                      <th>Base</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td class="text-center">27F</td>
                      <td class="text-center">AGAGTTTGATCMTGGCTCAG</td>
                      <td class="text-center">20</td>
                    </tr>
                    <tr>
                      <td class="text-center">337F</td>
                      <td class="text-center">GACTCCTACGGGAGGCWGCAG</td>
                      <td class="text-center">21</td>
                    </tr>
                    <tr>
                      <td class="text-center">518F</td>
                      <td class="text-center">CCAGCAGCCGCGGTAATACG</td>
                      <td class="text-center">20</td>
                    </tr>
                    <tr>
                      <td class="text-center">785F</td>
                      <td class="text-center">GGATTAGATACCCTGGTA</td>
                      <td class="text-center">18</td>
                    </tr>
                    <tr>
                      <td class="text-center">800R</td>
                      <td class="text-center">TACCAGGGTATCTAATCC</td>
                      <td class="text-center">18</td>
                    </tr>
                    <tr>
                      <td class="text-center">907R</td>
                      <td class="text-center">CCGTCAATTCMTTTRAGTTT</td>
                      <td class="text-center">20</td>
                    </tr>
                    <tr>
                      <td class="text-center">1100R</td>
                      <td class="text-center">GGGTTGCGCTCGTTG</td>
                      <td class="text-center">15</td>
                    </tr>
                    <tr>
                      <td class="text-center">1492R</td>
                      <td class="text-center">TACGGYTACCTTGTTACGACTT</td>
                      <td class="text-center">22</td>
                    </tr>
                    <tr>
                      <td class="text-center">NS1</td>
                      <td class="text-center">GTAGTCATATGCTTGTCTC</td>
                      <td class="text-center">19</td>
                    </tr>
                    <tr>
                      <td class="text-center">NS8</td>
                      <td class="text-center">TCCGCAGGTTCACCTACGGA</td>
                      <td class="text-center">20</td>
                    </tr>
                    <tr>
                      <td class="text-center">LR0R</td>
                      <td class="text-center">ACCCGCTGAACTTAAGC</td>
                      <td class="text-center">17</td>
                    </tr>
                    <tr>
                      <td class="text-center">LR7</td>
                      <td class="text-center">TACTACCACCAAGATCT</td>
                      <td class="text-center">17</td>
                    </tr>
                    <tr>
                      <td class="text-center">ITS1</td>
                      <td class="text-center">TCCGTAGGTGAACCTGCGG</td>
                      <td class="text-center">19</td>
                    </tr>
                    <tr>
                      <td class="text-center">ITS2</td>
                      <td class="text-center">GCTGCGTTCTTCATCGATGC</td>
                      <td class="text-center">20</td>
                    </tr>
                    <tr>
                      <td class="text-center">ITS3</td>
                      <td class="text-center">GCATCGATGAAGAACGCAGC</td>
                      <td class="text-center">20</td>
                    </tr>
                    <tr>
                      <td class="text-center">ITS4</td>
                      <td class="text-center">TCCTCCGCTTATTGATATGC</td>
                      <td class="text-center">20</td>
                    </tr>
                    <tr>
                      <td class="text-center">ITS5</td>
                      <td class="text-center">GGAAGTAAAAGTCGTAACAAGG</td>
                      <td class="text-center">20</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <div class="table-title-box">
                  <p class="sub-title font-h8">Random용 Primer</p>
                  <table class="table">
                    <colgroup>
                      <col style="width:33.3333%;">
                      <col style="width:33.3333%;">
                      <col style="width:33.3333%;">
                    </colgroup>
                    <thead>
                    <tr>
                      <th>Primer Name</th>
                      <th>Sequence</th>
                      <th>Base</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td class="text-center">Oligo dT(15)</td>
                      <td class="text-center">TTTTTTTTTTTTTTT</td>
                      <td class="text-center">15</td>
                    </tr>
                    <tr>
                      <td class="text-center">Oligo dT(18)</td>
                      <td class="text-center">TTTTTTTTTTTTTTTTTT</td>
                      <td class="text-center">21</td>
                    </tr>
                    <tr>
                      <td class="text-center">Oligo dT(20)</td>
                      <td class="text-center">TTTTTTTTTTTTTTTTTTTT</td>
                      <td class="text-center">20</td>
                    </tr>
                    <tr>
                      <td class="text-center">Random Hexamer</td>
                      <td class="text-center">NNNNNN</td>
                      <td class="text-center">6</td>
                    </tr>
                    <tr>
                      <td class="text-center">Random Nonamer</td>
                      <td class="text-center">NNNNNNNNN</td>
                      <td class="text-center">9</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="btn-area">
            <a href="#" class="btn btn-white"><span>서비스문의</span></a>
            <a href="#" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="#" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
          <p class="desc img_bottom">합성된 Oligo는 DNA sequencing, SNP 연구, Gene Synthesis, NGS 분석, qPCR 분석, Biochip, siRNA 발현 등 생물학 및 의학 분야에서 다양하게 활용되고 있습니다. 마크로젠의 Oligo 합성 서비스는
            합성부터 정제, 분주 등 전 과정을 신속하게 제공하기 위해 자체 개발한 최상의 자동화 시스템을 이용하며, 주문부터 배송까지 모든 프로세스를 모니터링할 수 있는 온라인 주문 시스템 LIMS를 지원합니다.
            또한MALDI-TOF를 통해 모든 올리고의  품질을 관리합니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-plate.png" alt="Plate Oligo">
          </div>
          <div class="list-area-group figure_bottom">
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
              <p class="font-h8 title">Guaranteed Yield</p>
              <p class="desc figure_bottom">Standard Oligo는 최소 3mer에서 최대 130mer까지 합성 가능 (5mer 이하 또는 90mer 이상 Oligo는 MALDI QC 미제공)</p>
            </div>

          </div>
          <table class="table">
            <colgroup>
              <col style="width:50%;">
              <col style="width:25%;">
              <col style="width:25%;">
            </colgroup>
            <thead>
            <tr>
              <th rowspan="2">Guaranteed Yiled <span>(OD)</span></th>
              <th colspan="2">Synthesis Scale <span>(25mer기준)</span></th>
            </tr>
            <tr>
              <th class="sub-title">0.05 µmole</th>
              <th class="sub-title">0.2 µmole</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>MOPC(Standard Oligo)</td>
              <td>6</td>
              <td>8</td>
            </tr>
            </tbody>
          </table>
          <p class="font-h8 sub-title">Oligo Synthesis Purification</p>
          <table class="table">
            <thead>
            <tr>
              <th>MOPC<span class="additional">(Macrogen Oligonucleotide Purification Cartridge)</span></th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td class="text-start">
                -- Standard Oligo와 일부 Modified Oligo 이용가능<br>
                - purity of ≥85%(LC 분석)<br>
                - 모든 Oligo에 기본사양으로 무료제공
              </td>
            </tr>
            </tbody>
          </table>
          <p class="font-h8 sub-title graph_bottom">100% QC</p>
          <p class="desc figure_bottom">Oligo의 품질보증을 위해 합성된 모든 Oligo는 OD측정과 MALDI-TOF MS 분석을 진행한 후 출고 및 배송을 진행합니다. 또한 주문한 Oligo는 결과 레포트가 함께 발송됩니다.<br>
            Oligo의 Quality Check 방법으로 분자량을 확인하는 MALDI-TOF MS 방법을 사용하며, N-1, N-2 등이 포함된 Oligo를 정밀히 분석합니다.</p>
          <div class="border-gray-box">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-common-qcgraph.png" alt="그래프">
          </div>
          <div class="btn-area">
            <a href="#" class="btn btn-white"><span>서비스문의</span></a>
            <a href="#" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="#" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
          <p class="desc img_bottom">합성된 Oligo는 DNA sequencing, SNP 연구, Gene Synthesis, NGS 분석, qPCR 분석, Biochip, siRNA 발현 등 생물학 및 의학 분야에서 다양하게 활용되고 있습니다. 마크로젠의 Oligo 합성 서비스는
            합성부터 정제, 분주 등 전 과정을 신속하게 제공하기 위해 자체 개발한 최상의 자동화 시스템을 이용하며, 주문부터 배송까지 모든 프로세스를 모니터링할 수 있는 온라인 주문 시스템 LIMS를 지원합니다.
            또한 MALDI-TOF를 통해 모든 올리고의 품질을 관리합니다.</p>
          <div class="img">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-oligo-duplex.png" alt="Duplex Oligo">
          </div>
          <div class="list-area-group figure_bottom">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>50nmole, 200nmole, 1umole 스케일 서비스 제공</li>
                <li>자동 정량 분주시스템(Liquid Handling System)에 의한 정확한 농도 제공</li>
                <li> LIMS(Laboratory Information Management System)를 통한 주문, 합성 진행, 배송 및 합성 결과 확인 가능</li>
              </ul>
            </div>
            <div class="list-area">
              <p class="font-h8 title">Guaranteed Yield </p>
              <ul class="list-circle-dot">
                <li>Standard Oligo는 최소 3mer에서 최대 130mer까지 합성 가능 (5mer 이하 또는 90mer 이상 Oligo는 MALDI QC 미제공)</li>
                <li>Modified Oligo의 경우 최대 60mer까지 추천 (60mer 이상 올리고는 전화문의)</li>
              </ul>
            </div>

          </div>
          <table class="table">
            <colgroup>
              <col style="width:45%;">
              <col style="width:20%;">
              <col style="width:15%;">
              <col style="width:20%;">
            </colgroup>
            <thead>
            <tr>
              <th rowspan="2">Guaranteed Yiled <span>(OD)</span></th>
              <th colspan="3">Synthesis Scale <span>(25mer기준)</span></th>
            </tr>
            <tr>
              <th class="sub-title">0.05 µmole</th>
              <th class="sub-title">0.2 µmole</th>
              <th class="sub-title">1 µmole</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>MOPC(Standard Oligo)</td>
              <td>6</td>
              <td>8</td>
              <td>20</td>
            </tr>
            <tr>
              <td>MOPC(Modified Oligo)</td>
              <td>-</td>
              <td>6</td>
              <td>10</td>
            </tr>
            <tr>
              <td>PAGE</td>
              <td>-</td>
              <td>4</td>
              <td>8</td>
            </tr>
            <tr>
              <td>HPLC</td>
              <td>-</td>
              <td>4</td>
              <td>8</td>
            </tr>

            </tbody>
          </table>
          <p class="font-h8 sub-title">Oligo Synthesis Purification</p>
          <table class="table">
            <colgroup>
              <col style="width:33%;">
              <col style="width:33%;">
              <col style="width:33%;">
            </colgroup>
            <thead>
            <tr>
              <th>MOPC<span class="additional">(Macrogen Oligonucleotide Purification Cartridge)</span></th>
              <th>HPLC</th>
              <th>PAGE</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td class="text-start">
                - Standard Oligo와 일부 Modified Oligo 이용가능<br>
                - purity of ≥85%(LC 분석)<br>
                - 모든 Oligo에 기본사양으로 무료제공
              </td>
              <td class="text-start">
                - 모든 Standard Oligo 및 Modified Oligo 이용가능<br>
                - 50mer 이하 Oligo에 추천<br>
                - purity of ≥90%(LC 분석)
              </td>
              <td class="text-start">
                - 모든 Standard Oligo 및 Modified Oligo 이용가능<br>
                - 50mer 이하 Oligo에 추천<br>
                - purity of ≥90%(LC 분석)
              </td>
            </tr>
            </tbody>
          </table>
          <p class="font-h8 sub-title graph_bottom">100% QC</p>
          <p class="desc figure_bottom">Oligo의 품질보증을 위해 합성된 모든 Oligo는 OD측정과 MALDI-TOF MS 분석을 진행한 후 출고 및 배송을 진행합니다. 또한 주문한 Oligo는 결과 레포트가 함께 발송됩니다.<br>
            Oligo의 Quality Check 방법으로 분자량을 확인하는 MALDI-TOF MS 방법을 사용하며, N-1, N-2 등이 포함된 Oligo를 정밀히 분석합니다.</p>
          <div class="border-gray-box">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-common-qcgraph.png" alt="그래프">
          </div>
          <div class="btn-area">
            <a href="#" class="btn btn-white"><span>서비스문의</span></a>
            <a href="#" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="#" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
          <p class="subject">RAPD Kits는 유전자 지도 작성 및 DNA 지문 채취 등 다양한 연구목적에 적합한 20개의 개별 10 mer Oligo를 제공하는 서비스입니다.</p>
          <p class="desc img_bottom">합성된 Oligo는 DNA sequencing, SNP 연구, Gene Synthesis, NGS 분석, qPCR 분석, Biochip, siRNA 발현 등 생물학 및 의학 분야에서 다양하게 활용되고 있습니다. 마크로젠의 Oligo 합성 서비스는
            합성부터 정제, 분주 등 전 과정을 신속하게 제공하기 위해 자체 개발한 최상의 자동화 시스템을 이용하며, 주문부터 배송까지 모든 프로세스를 모니터링할 수 있는 온라인 주문 시스템 LIMS를 지원합니다.
            또한 MALDI-TOF를 통해 모든 올리고의 품질을 관리합니다.
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
              <p class="font-h8 title">RAPD Kits list</p>
              <ul class="kit-area kit-area-25">
                <li>Kit A</li>
                <li>Kit B</li>
                <li>Kit C</li>
                <li>Kit D</li>
                <li>Kit E</li>
                <li>Kit F</li>
                <li>Kit G</li>
                <li>Kit H</li>
                <li>Kit I</li>
                <li>Kit J</li>
                <li>Kit K</li>
                <li>Kit L</li>
                <li>Kit M</li>
                <li>Kit N</li>
                <li>Kit O</li>
                <li>Kit P</li>
                <li>Kit Q</li>
                <li>Kit R</li>
                <li>Kit S</li>
                <li>Kit T</li>
                <li>Kit U</li>
                <li>Kit V</li>
                <li>Kit W</li>
                <li>Kit X</li>
                <li>Kit Y</li>
                <li>Kit Z</li>
              </ul>
              <ul class="kit-area kit-area-25">
                <li>Kit AA</li>
                <li>Kit AB</li>
                <li>Kit AC</li>
                <li>Kit AD</li>
                <li>Kit AE</li>
                <li>Kit AF</li>
                <li>Kit AG</li>
                <li>Kit AH</li>
                <li>Kit AI</li>
                <li>Kit AJ</li>
                <li>Kit AK</li>
                <li>Kit AL</li>
                <li>Kit AM</li>
                <li>Kit AN</li>
                <li>Kit AO</li>
                <li>Kit AP</li>
                <li>Kit AQ</li>
                <li>Kit AR</li>
                <li>Kit AS</li>
                <li>Kit AT</li>
                <li>Kit AU</li>
                <li>Kit AV</li>
                <li>Kit AW</li>
                <li>Kit AX</li>
                <li>Kit AY</li>
                <li>Kit AZ</li>
              </ul>
              <ul class="kit-area kit-area-8">
                <li>Kit BA</li>
                <li>Kit BB</li>
                <li>Kit BC</li>
                <li>Kit BD</li>
                <li>Kit BE</li>
                <li>Kit BF</li>
                <li>Kit BG</li>
                <li>Kit BH</li>

              </ul>
            </div>
          </div>

          <div class="btn-area">
            <a href="#" class="btn btn-white"><span>서비스문의</span></a>
            <a href="#" class="btn btn-white"><span>견적의뢰</span></a>
            <a href="#" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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

</body>