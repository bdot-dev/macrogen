<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

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
        <li class="breadcrumb-item">Research</li>
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

  <div class="container oligo_sec">
    <div class="section_business">
      <!--메인 컨텐츠-->
<div class="subject-box">
    <p class="title font-h4">Macrogen offers high-quality and quick Oligo at a<br> reasonable price using a state-of-the-art automated system.</p>
    <p class="subject">We will continue to take the lead in technological innovation in the fields of biology and medicine by providing high-quality Oligo through Personalized Oligo Production.</p>
    <!--10.05 이미지 경로 변경-->
    <div class="img">
        <img src="/publishing/pc-en/dist/img/business/img-oligo-intro.png" alt="oligoIntro">
    </div>
    <p class="desc">Macrogen offers an oligo synthesis service at various scales using high-quality materials and an optimized process. This is a tailored service that provides various oligoes synthesized to the sequence required by the client. The synthesized oligos are used in various biology and medical fields such as DNA sequencing, PCR, SNP study, gene synthesis, NGS service, qPCR service, biochip, and siRNA expression. Macrogen uses superior materials and an automation system to provide high-quality oligos, and offers MOPC purification for all oligos free of charge. MOPC purification, an independently developed cartridge purification method, has efficiency similar to that of HPLC and PAGE purification. Furthermore, all oligos are subject to a quality control process using MALDI-TOF, and a set quantity of oligos are provided through an automatic dispensing system to ensure their quality and more convenient test conditions for clients. The synthesized oligos are also provided with result reports.</p>
</div>

      <!--탭 링크-->
      <div class="tab-box" id="_tab-box">
      	<div class="tab-tit">
        	<p class="font-h4 title active">DNA Oligo Synthesis</p>
        	<p class="font-h4 title">RNA Oligo Synthesis</p>
      	</div>
        <div class="slide-tab-wrap">
          <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal on">
            <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
              <div class="swiper-slide active"><a href="#">Standard Oligo</a></div>
              <div class="swiper-slide "><a href="#">Modified Oligo</a></div>
              <div class="swiper-slide"><a href="#">Premade Oligo</a></div>
              <div class="swiper-slide"><a href="#">Plate Oligo</a></div>
              <div class="swiper-slide"><a href="#">Duplex Oligo</a></div>
              <div class="swiper-slide"><a href="#">RAPD Kits</a></div>
            </div>
          </div>
          <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
            <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
              <div class="swiper-slide active"><a href="#">Single Strand RNA</a></div>
              <div class="swiper-slide "><a href="#">Double Strand RNA</a></div>
            </div>
          </div>
        </div>
      </div>
      <!--탭메뉴 스크립트-->
      <!--10.08 앵커포인트 스크립트 완료-->
      <script>
      	<!-- 탭 타이틀 -->
      	$('.tab-tit .title').on('click', function(){
      		var idx = $(this).index();
      		
      		$(this).addClass('active').siblings().removeClass('active');
      		$('.info-box-wrap').eq(idx).addClass('active').siblings().removeClass('active');
      		$('.slide-tab-wrap > div').eq(idx).addClass('on').siblings().removeClass('on');
      		$('.swiper-container.on .swiper-slide').eq(0).trigger('click')
      	})
      
        $('._swiperTab .swiper-slide').on('click', function(){
          var idx = $(this).index('.swiper-slide');

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
      </script>

      <div class="info-box-wrap tab-content active">
        <!--Standard Oligo-->
        <div class="info-box show">
          <p class="font-h4 main-title">Standard Oligo</p>
          <p class="subject">Standard oligo service is provided by synthesizing oligo used in various tests into the sequence as demanded by the client.</p>
          <p class="desc img_bottom">Macrogen's oligo synthesis service uses an unmatched automation system that is developed independently to quickly provide the entire process from synthesis to purification and dispensing, while supporting LIMS, an online ordering system that can monitor the entire process from order to delivery. The quality of all oligos is controlled through MALDI-TOF mass spectrometry.</p>
          <!--10.05 이미지 경로 변경-->
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-oligo-standard.png" alt="Standard Oligo cffnb">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>50 nmole, 200 nmole, and 1 umole scales are available.</li>
                <li>Delivery within 24 hours after order (delivered by sales personnel / 50 mer or less / order before 5:00pm)</li>
                <li>Accurate concentration provided by the automatic distribution system</li>
                <li>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</li>
              </ul>
            </div>
          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item next" onclick="setTabContent(1)">
                  <!--mar-180 네비게이션 텍스트 수정-->
                  <div class="title">Modified Oligo</div>
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
          <p class="subject">This is an oligo service that is provided in the form of a special material bonded to the 3' and 5', internal, or both ends of the standard oligo.</p>
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-oligo-modified.png" alt="Modified Oligo">
          </div>
          <p class="desc">The Modified Oligo service is conducted independently. Modified oligos including fluorescent dyes, non-fluorescent modifications, dark quenchers, and internal modification are synthesized on a daily basis to facilitate rapid test conditions. Additionally, the status of oligo production can be checked through the order page, and all modified oligos that are synthesized go through the complete quality control process using MALDI-TOF to ensure reliable quality.</p>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(0)">
                  <div class="title">Standard Oligo</div>
                </a>
                <a href="#" class="item next"onclick="setTabContent(2)">
                  <div class="title">Premade Oligo</div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!--Premade Oligo-->
        <div class="info-box">
          <p class="font-h4 main-title">Premade Oligo</p>
          <p class="subject">Premade oligo is produced by the PAGE purification of Universal Oligo and delivered immediately upon order.</p>
          <!--10.05 이미지 경로 변경-->
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-oligo-premade.png" alt="Premade Oligo">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>5nmol of ≥ 95% pure primer(PAGE Purification).</li>
                <li>MALDI-TOF QC</li>
                <li>Purification checked with HPLC</li>
                <li>70 types of primers for sequencing, 17 types of primers for identification of microorganisms, 5 types of random primers</li>
              </ul>
            </div>
            <div class="list-area">
              <p class="desc">Macrogen provides premade oligo with a high level of purity through PAGE. It includes 70 types of primers for sequencing, 17 types of primers for identification of microorganisms, and 5 types of random primers so that the Universal Oligo, which is basically used for various tests, can be prepared in advance and delivered quickly. Furthermore, all synthesized oligos undergo 100% quality control process using MALDI-TOF to ensure reliable quality.
              </p>
            </div>
          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(1)">
                  <div class="title">Modified Oligo</div>
                </a>
                <a href="#" class="item next" onclick="setTabContent(3)">
                  <div class="title">Plate Oligo</div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!--Plate Oligo-->
        <div class="info-box">
          <p class="font-h4 main-title">Plate Oligo</p>
          <p class="subject">We provide oligos in the form of 96-well plates.</p>
          <!--10.05 이미지 경로 변경-->
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-oligo-plate.png" alt="Plate Oligo">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>50 nmole, 200 nmole, and 1 umole scales are available.</li>
                <li>Only MOPC can be selected for purification.</li>
                <li>Liquid Handling System ensures an accurate level of concentration.</li>
                <li>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</li>
              </ul>
            </div>
            <div class="list-area">
            <p class="desc">The Plate Oligo service is provided by drying the oligo while it is on a deep-well plate for easier and more convenience use for tests.  When drying oligos, an independently developed drying system is used, and all synthesized oligos undergo 100% quality control process using MALDI-TOF to ensure more reliable quality.
            </p>
            </div>

          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(2)">
                  <div class="title">Premade Oligo</div>
                </a>
                <a href="#" class="item next" onclick="setTabContent(4)">
                  <div class="title">Duplex Oligo</div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!--Duplex Oligo-->
        <div class="info-box">
          <p class="font-h4 main-title">Duplex Oligo</p>
          <p class="subject">Duplex Oligo (Annealing service) is a service that provides two=complementary single strand DNA in the form of a double strand DNA.</p>
          <!--10.05 이미지 경로 변경-->
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-oligo-duplex.png" alt="Duplex Oligo">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>50 nmole, 200 nmole, and 1 umole scales are available.</li>
                <li>Liquid Handling System ensures an accurate level of concentration.</li>
                <li>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</li>
              </ul>
            </div>
            <div class="list-area">
              <p class="desc">The Duplex Oligo service provides two complementary single strand DNA in the form of a combined strand of DNA through an annealing process. The service is available up to 130bp for standard oligo and up to 60bp for modified oligo. The synthesis and annealing process undergoes quality control process twice before delivery to the client.
              </p>
            </div>
          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(3)">
                  <div class="title">Plate Oligo</div>
                </a>
                <a href="#" class="item next" onclick="setTabContent(5)">
                  <div class="title">RAPD Kits</div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!--RAPD Kits-->
        <div class="info-box">
          <p class="font-h4 main-title">RAPD Kits</p>
          <p class="subject">RAPD Kits is a service that provides 20 individual 10 mer oligos for various types of research efforts and studies such as genetic mapping
            and DNA fingerprinting.
          </p>
          <!--10.05 이미지 경로 변경-->
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-oligo-rapdkit.png" alt="RAPD Kits">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>10nmol of ≥ 95&#37; pure primer(PAGE Purification)</li>
                <li>MALDI TOF QC</li>
                <li>60 types of RAPD 10 mer KIT</li>
              </ul>
            </div>
            <div class="list-area">
            <p class="desc">RAPD (Random Amplified Polymorphic DNAs) Kits uses small oligos of about 10bp for amplifying only genomic regions aligned by two gene sequences. Macrogen has a total of 60 sets of RAPD Kits, and provides a high level of purity through PAGE. Furthermore, all synthesized oligos undergo MALDI QC to ensure reliable quality.
            </p>
            </div>
          </div>

          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(4)">
                  <div class="title">Duplex Oligo</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
      </div>

	  <div class="info-box-wrap tab-content">
        <!--Single Strand RNA-->
        <div class="info-box show">
          <p class="font-h4 main-title">Single Strand RNA</p>
          <p class="subject">Single Strand RNA service is a service that synthesizes Oligo used in various experiments with a sequence designed by the customer.</p>
          <p class="desc img_bottom">Macrogen's RNA Oligo synthesis service uses high-quality raw materials to carry out its own synthesis and provides high-purity RNA Oligos through HPLC purification. In addition, we systematically manage all processes from ordering to delivery, and manages the quality of all oligos through MALDI-TOF mass spectrometry.</p>
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-oligo-single-strand.png" alt="Single Strand RNA">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>Yield: 10nmol, 30nmol, 50nmol</li>
                <li>Purification : Cartridge, HPLC</li>
              </ul>
            </div>
          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inpquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item next" onclick="setTabContent(7)">
                  <div class="title">Double strand RNA</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
        <!--Double Strand RNA-->
        <div class="info-box">
          <p class="font-h4 main-title">Double Strand RNA</p>
          <p class="subject">Double Strand RNA (Annealing service) is a service that provides two complementary Single Strand RNAs designed by yourself in the form of a single Double Strand RNA.</p>
          <p class="desc img_bottom">Double Strand RNA is provided in the form of a combined oligo of two oligos of complementary sequences through an annealing process. Double strand RNA service is available up to 50 bp, and is provided to customers through two rounds of QC in the synthesis and annealing process.</p>
          <div class="img">
            <img src="/publishing/pc-en/dist/img/business/img-oligo-double-strand.png" alt="Double Strand RNA">
          </div>
          <div class="list-area-group">
            <div class="list-area">
              <p class="font-h8 title">Features</p>
              <ul class="list-circle-dot">
                <li>Yield : 10nmol, 30nmol, 50nmol</li>
                <li>Purification : Cartridge, HPLC</li>
              </ul>
            </div>
          </div>
          <div class="btn-area">
            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inpquiry</span></a>
            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200" target="_blank" class="btn btn-white"><span>Quotation</span></a>
            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(6)">
                  <div class="title">Single Strand RNA</div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--footer 수정시 메인 footer 같이 수정해주세요-->


</body>