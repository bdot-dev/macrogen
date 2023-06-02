<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

  <div class="full-bg business_bg bg-type2">
    <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

    <div class="frame frameB">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-white">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">Service</li>
          <li class="breadcrumb-item">임상분석서비스</li>
          <li class="breadcrumb-item">정밀의학</li>
        </ol>
      </nav>

      <div class="hero-title">정밀의학</div>
      <div class="slogan-sub">Precision Medicine</div>
      <a href="#_tab-box" class="btn btn-round btn-service">
        <span>SERVICE</span>
        <i class="icon icon-arrow-bottom-short-white"></i>
      </a>
    </div>
  </div>
  
  <div class="container">
    <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>

    <div class="section_business">

        <div class="subject-box">
          <p class="font-h4 title">글로벌 정밀의학 선도기업으로서 유전체정보, 의료정보 및 생활정보의 통합 빅데이터를 구축하고 질병을 예측하여 미래의학 혁신에 이바지하고 있습니다.</p>
          <p class="subject info">개인의 상황에 따른 질병 예측, 예방, 맞춤 진료 및 치료를 위해 유전체학(genomics)을 포함하여 단백질체학(proteomics), 전사체학(transcriptomics)의 멀티오믹스(multi-omics) 분석을 수행하고 있습니다.</p>
          <div class="line-box01 precision">
            <p class="font-h8">정밀의학(Precision Medicine) 실현</p>
            <ul class="precision01">
              <!-- <img src="/publishing/pc-ko/dist/img/business/img_familyline.png" alt="암 발생 위험 예측"> -->

              <li><img src="/publishing/pc-ko/dist/img/business/img_precision01.png" alt=""/><span>Predictive</span>예측</li>
              <li><img src="/publishing/pc-ko/dist/img/business/img_precision02.png" alt=""/><span>Preventive</span>예방</li>
              <li><img src="/publishing/pc-ko/dist/img/business/img_precision03.png" alt=""/><span>Personalized</span>맞춤화</li>
            </ul>
            <p class="font-body-h">유전체 정보(Genome Information)</p>
            <div class="precision02">
                <ul>
                    <li class="tit">진단(Diagnostics)</li>
                    <li class="con">진단(Diagnostics)</li>
                    <li class="con">진단 패널(Panel) 개발</li>
                    <li class="con">분자 진단 키트 및 SML 개발</li>
                </ul>
                <ul>
                    <li class="tit">치료(Therapy)</li>
                    <li class="con">표적치료제 처방</li>
                    <li class="con">바이오마커 발굴 및 치료제 개발</li>
                </ul>
                <ul>
                    <li class="tit">모니터링(Monitoring)</li>
                    <li class="con">질병 재발 여부 모니터링</li>
                    <li class="con">유전자 타입에 따른 건강 관리</li>
                </ul>
                <ul>
                    <li class="tit">예측/예방(Prediction/Prevention)</li>
                    <li class="con">유전자 분석을 통한 질병 예측/예방</li>
                    <li class="con">유전체 빅데이터 구축</li>
                </ul>
            </div>
          </div>
        </div>
        
       <!--탭 링크-->
      <div class="tab-box" id="_tab-box">
        <p class="font-h4 title">SERVICE</p>
        <div class="slide-tab-wrap">
          <div class="swiper-container tab-slide-box _swiperTab">
            <div class="swiper-wrapper _swiperTab">
              <div class="swiper-slide active" id="prediction" ><a href="#">암 발생 위험 예측</a></div>
              <div class="swiper-slide" id="analyze"><a href="#">암 발생 원인 분석</a></div>
              <div class="swiper-slide" id="monitoring"><a href="#">암 발생 모니터링</a></div>
            </div>
          </div>
        </div>
      </div>
      

      <div class="info-box-wrap tab-content">
        <!--암 발생 위험 예측-->
        <div class="info-box show">
          <p class="font-h4 main-title">암 발생 위험 예측</p>
          <p class="subject">암은 다양한 원인에 의해 발생하지만, 일부 암은 타고난 특정 유전자의 변이 때문에 발생합니다.</p>
          <p class="desc">유전성 암은 부모로부터 물려받은 유전자 이상에 의해 발생하며 동일 가계 내 암 환자 발생 확률이 높아집니다. 암과 관련된 변이를 가진 경우 그렇지 않은 사람에 비해 암이 발생할 가능성이 매우 커지므로 유전자 진단을 통한 조기 발견과 정확한 원인 파악이 필요합니다. 유방암, 난소암, 대장암은 대표적인 유전성 암입니다. 유방암 환자의 5~10%가 유전적 원인에 의해 발병한다고 알려져 있으며, 이 중 절반 이상이 BRCA1, BRCA2 유전자 이상을 가지고 있습니다. 이 외에도 다양한 암 발생 주요 원인 유전자를 보유하는 경우 암 발생률이 급격하게 증가하게 됩니다.</p>
          <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_precision04.png" alt="암 발생 위험 예측"/></div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item next" onclick="setTabContent(1)"><div class="title">암 발생 원인 분석</div></a>
              </div>
            </div>
          </div>
        </div>
        <!--//암 발생 위험 예측-->

        <!-- 암 발생 원인 분석 -->
        <div class="info-box">
          <p class="font-h4 main-title">암 발생 원인 분석</p>
          <p class="subject">암 환자의 종양 샘플에서 추출한 DNA를 이용해 암 발생에 관여하는 주요 유전자의 변이를 분석함으로써 <br>암 발생 원인을 추적하고 개인별 맞춤 치료에 중요한 정보를 제공하는 서비스입니다.</p>
          <p class="desc">지금까지는 조직병리학적으로 암을 구분해 치료해 왔으나 최근에는 암 조직 유전체 분석을 통한 유전자 변이에 따라 세부적으로 암을 구분하고 있습니다. <br>이는 동일한 항암제를 처방했을 때 75% 정도가 각기 다른 효과를 보이는 현상을 개선하는 데 기여하여 암 환자의 맞춤 치료 및 부작용 최소화에 도움을 주고 있습니다.</p>
          <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_precision05.png" alt="암 발생 원인 분석"/></div>
          <div class="img">
            <figure>
              <img src="/publishing/pc-ko/dist/img/business/img_precision06.png" alt="암 발생 원인 분석"/>
              <figcaption>※ 출처 : Pao W et al. New driver mutations in non-small-cell lung cancer Lancet Oncol. 2011 Feb; 12(2): 175-80.</figcaption>
            </figure>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">암 발생 위험 예측</div></a>
                <a href="#" class="item next"onclick="setTabContent(2)"><div class="title">암 발생 모니터링</div></a>
              </div>
            </div>
          </div>
        </div>
        <!-- //암 발생 원인 분석 -->

        <!-- 암 발생 모니터링 -->
        <div class="info-box">
          <p class="font-h4 main-title">암 발생 모니터링</p>
          <p class="subject">체내에 암이 발생한 경우 암세포로부터 떨어져 나온 DNA 조각이 혈액 내에도 존재합니다.</p>
          <p class="desc">이를 혈중 종양 DNA(ctDNA; circulating tumor DNA)라 부르며 정기적인 ctDNA 확인을 통해 암세포 발생 여부를 조기에 발견함으로써 빠른 대처가 가능합니다. <br>이는 기존 조직 검사와 달리 혈액 채취만으로 검사를 진행할 수 있어 효율적인 정기적인 검진이 이루어질 수 있습니다. <br>아직 암 종별 및 개인별 ctDNA의 수준 차이와 까다로운 검출 과정 때문에 적용 범위가 넓지 않지만 추후 지속적인 기술 향상을 통해 이를 확대해나갈 예정입니다.</p>
          <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_precision07.png" alt="ctDNA분석/암 확진검사"/></div>
          <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_precision08.png" alt="LINEAR CARE SYSTEM/CIRCULAR CARE SYSTEM"/></div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">암 발생 원인 분석</div></a>
              </div>
            </div>
          </div>
        </div>
        <!-- //암 발생 모니터링 -->

        <div class="btn-area">
          <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a> -->
          <div class="btn-box">
	          <div class="tit">마크로젠 서비스 문의</div>
	          <div class="email">
	          	<span class="sub_tit">이메일문의</span>
	          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
	          </div>
	          <div class="phone">
	          	<span class="sub_tit">전화문의</span>
	          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
	          </div>
          </div>
        </div>
      </div>


    </div>
  </div>
  <!--footer 수정시 메인 footer 같이 수정해주세요-->
	<!--탭메뉴 스크립트-->
      <script>
        $('._swiperTab .swiper-slide').on('click', function(){
          var idx = $(this).index();

          $(this).addClass('active').siblings().removeClass('active');
          // <!--탭메뉴 클릭시 페이지 변경-->
          $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
          $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
        });

        function setTabContent(idx){
          $('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');

          // <!--탭메뉴 클릭시 페이지 변경-->
          $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
          $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

          fnMove();
        }

        /*탭메뉴 상단으로 이동*/
        function fnMove(){
          var offset = $("#_tab-box").offset();
          $('html, body').animate({scrollTop : offset.top - 95}, 100);
        }

     	// location.hash // 20230502
        if(location.hash != "#_tab-box") {

       		var loadtab = $('._swiperTab .swiper-slide').filter(location.hash);
       		loadtab.click();	// tab content view
       		setTabContent(loadtab.index());	// scroll 이동
        }

        $(window).on("hashchange",function () {
        	location.reload();
        });
      </script>
</body>
