<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

  <div class="full-bg business_bg cancer">
    <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

    <div class="frame frameB">
      <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">임상진단서비스</li>
        <li class="breadcrumb-item">암 유전체 검사</li>
    </ol>
</nav>

      <div class="hero-title">임상진단서비스</div>
      <div class="slogan-sub">FFPE, Tissue, Liquid Biopsy(액체생검)등을 이용한 암유전체 검사</div>
    </div>
  </div>
  <div class="container">
    <div class="section_business">
      <!--탭 링크-->
      <div class="tab-box">
        <p class="font-h4 title">SERVICE</p>
        <div class="slide-tab-wrap">
          <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
            <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
              <div class="swiper-slide active"><a href="#">암 발생 위험 예측</a></div>
              <div class="swiper-slide "><a href="#">암 발생 원인 분석</a></div>
              <div class="swiper-slide"><a href="#">암 발생 모니터링</a></div>
            </div>
          </div>
        </div>
      </div>
      <!--탭메뉴 스크립트-->
      <script>
        $('._swiperTab .swiper-slide').on('click', function(){
          var idx = $(this).index();

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
        }
      </script>

      <div class="info-box-wrap tab-content">
        <!--암 발생 위험 예측-->
        <div class="info-box show">
          <p class="font-h4 main-title">암 발생 위험 예측</p>
          <p class="subject">암은 다양한 원인에 의해 발생하지만, 일부 암은 타고난 특정 유전자의 변이 때문에 발생합니다. </p>
          <p class="desc img_bottom">유전성 암은 부모로부터 물려받은 유전자 이상에 의해 발생하며 동일 가계 내 암 환자 발생 확률이 높아집니다. 암과 관련된 변이를 가진 경우 그렇지 않은 사람에 비해 암이 발생할 가능성이 매우 커지므로 유전자 진단을 통한 조기 발견과 정확한 원인 파악이 필요합니다. 유방암, 난소암, 대장암은 대표적인 유전성 암입니다. 유방암 환자의 5~10%가 유전적 원인에 의해 발병한다고 알려져 있으며, 이 중 절반 이상이 BRCA1, BRCA2 유전자 이상을 가지고 있습니다. 이 외에도 다양한 암 발생 주요 원인 유전자를 보유하는 경우 암 발생률이 급격하게 증가하게 됩니다.</p>
          <div class="border-gray-box">
            <div class="img">
              <img src="/publishing/pc-ko/dist/img/@temp/business/img_familyline.png" alt="암 발생 위험 예측">
            </div>
          </div>
          <hr class="divider">
          <p class="font-h5 sub-title">유전성 암 감수성 검사 (Hereditary Cancer Panel)</p>
          <p class="desc data_bottom">유전성 암과 관련된 원인 유전자를 분석해 암에 대한 유전적 위험률을 진단합니다. BRCA1/2 유전자를 포함하여 대장암의 주원인이 되는 Lynch Syndrome과 관련된 유전자 등 총 16개 유전자에 대한 변이를
            분석합니다.</p>
          <table class="table">
            <colgroup>
              <col style="width:25%;">
              <col style="width:25%;">
              <col style="width:50%;">
            </colgroup>
            <thead>
            <tr>
              <th>Gene List</th>
              <th>Target</th>
              <th>Description (related cancer type)</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>APC, MUTYH</td>
              <td>Large Intestine</td>
              <td class="text-start">Germline mutations associated with familial adenomatous polyposis (FAP)</td>
            </tr>
            <tr>
              <td>BRCA1, BRCA2</td>
              <td>Breast Ovary</td>
              <td class="text-start">Related to breast/ovarian cancer</td>
            </tr>
            <tr>
              <td>CDH1</td>
              <td>Stomach Large Intestine</td>
              <td class="text-start">Responsible for cell-to-cell adhesion llmplicated in cancer progression and metastasis</td>
            </tr>
            <tr>
              <td>EPCAM, PMS2, MLH1, MSH2, MSH6</td>
              <td>Large Intestine Rectum</td>
              <td class="text-start">Related to the mismatch repair of DNA Lynch syndrome<br>(hereditary non-polyposis colorectal cancer, HNPCC)</td>
            </tr>
            <tr>
              <td>MEN1</td>
              <td>Endocrine System</td>
              <td class="text-start">Multiple endocrine neoplasia type 1 (MEN-1 syndrome)<br>
                Familial neoplasia affecting the network of hormone-producing glands</td>
            </tr>
            <tr>
              <td>PTEN</td>
              <td>Thyroid Breast</td>
              <td class="text-start">Cowden syndrome Tumor - suppressor gene</td>
            </tr>
            <tr>
              <td>RB1</td>
              <td>Eye</td>
              <td class="text-start">Retinoblastoma</td>
            </tr>
            <tr>
              <td>RET</td>
              <td>Endocrine System Thyroid</td>
              <td class="text-start">Proto-oncogene Multiple endocrine neoplasia type 2 Medullary thyroid carcinoma</td>
            </tr>
            <tr>
              <td>TP53</td>
              <td>Breast Bone Etc.</td>
              <td class="text-start">Li - Fraumeni syndrome</td>
            </tr>
            <tr>
              <td>VHL</td>
              <td>Eye Kidny Central Nervous System</td>
              <td class="text-start">Tumor - suppressor gene von Hippel - Lindau Syndrome</td>
            </tr>
            </tbody>
          </table>
          <p class="font-h5 sub-title">BRCA1/2 유전자 검사</p>
          <p class="desc data_bottom">유전성 유방암의 대표적 원인이 되는 BRCA1/2 유전자의 전 영역을 분석해 유방암 발생 위험을 진단합니다. BRCA 1/2 유전자 변이가 있는 경우 유방암 발생 위험이 급격하게 증가합니다.
          </p>
          <div class="border-gray-box">
            <img src="/publishing/pc-ko/dist/img/@temp/business/img-dnatest.png" alt="BRCA1/2 유전자 검사">
          </div>
          <p class="notice-text"><i class="icon icon-attention"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
          <div class="btn-area">
            <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item next"  onclick="setTabContent(1)">
                  <div class="title">암 발생 원인 분석</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
        <!--암 발생 원인 분석-->
        <div class="info-box">
          <p class="font-h4 main-title">암 발생 원인 분석</p>
          <p class="subject">암 환자의 종양 샘플에서 추출한 DNA를 이용해 암 발생에 관여하는 주요 유전자의 변이를 분석함으로써<br>
            암 발생 원인을 추적하고 개인별 맞춤 치료에 중요한 정보를 제공하는 서비스입니다.</p>
          <p class="desc img_bottom">지금까지는 조직병리학적으로 암을 구분해 치료해 왔으나 최근에는 암 조직 유전체 분석을 통한 유전자 변이에 따라 세부적으로 암을 구분하고 있습니다.<br>
            이는 동일한 항암제를 처방했을 때 75% 정도가 각기 다른 효과를 보이는 현상을 개선하는 데 기여하여 암 환자의 맞춤 치료 및 부작용 최소화에 도움을 주고 있습니다.</p>
          <div class="border-gray-box">
            <div class="img">
              <img src="/publishing/pc-ko/dist/img/@temp/business/img_cancer.png" alt="암 발생 원인 분석">
            </div>
          </div>
          <div class="border-gray-box">
            <div class="img">
              <img src="/publishing/pc-ko/dist/img/@temp/business/img_cancer2.png" alt="암 발생 원인 분석 그래프">
            </div>
          </div>
          <p class="caption">※ 출처 : Pao W et al. New driver mutations in non-small-cell lung cancer Lancet Oncol. 2011 Feb; 12(2): 175-80.</p>
          <p class="notice-text"><i class="icon icon-attention"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
          <div class="btn-area">
            <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(0)">
                  <div class="title">암 발생 위험 예측</div>
                </a>
                <a href="#" class="item next" onclick="setTabContent(2)">
                  <div class="title">암 발생 모니터링</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
        <!--암 발생 모니터링-->
        <div class="info-box">
          <p class="font-h4 main-title">암 발생 모니터링</p>
          <p class="subject"> 체내에 암이 발생한 경우 암세포로부터 떨어져 나온 DNA 조각이 혈액 내에도 존재합니다.</p>
          <p class="desc img_bottom">이를 혈중 종양 DNA(ctDNA; circulating tumor DNA)라 부르며 정기적인 ctDNA 확인을 통해 암세포 발생 여부를 조기에 발견함으로써 빠른 대처가 가능합니다.<br>
            이는 기존 조직 검사와 달리 혈액 채취만으로 검사를 진행할 수 있어 효율적인 정기적인 검진이 이루어질 수 있습니다.<br>
            아직 암 종별 및 개인별 ctDNA의 수준 차이와 까다로운 검출 과정 때문에 적용 범위가 넓지 않지만 추후 지속적인 기술 향상을 통해 이를 확대해나갈 예정입니다.</p>
          <div class="border-gray-box">
            <div class="img">
              <img src="/publishing/pc-ko/dist/img/@temp/business/img_monitoring.png" alt="CTDNA분석">
            </div>
          </div>
          <div class="border-gray-box no-caption">
            <div class="img">
              <img src="/publishing/pc-ko/dist/img/@temp/business/img_monitoring2.png" alt="LINEAR CARE SYSTEM&CIRCULAR CARESY STEM">
            </div>
          </div>
          <p class="notice-text"><i class="icon icon-attention"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
          <div class="btn-area">
            <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev"  onclick="setTabContent(1)">
                  <div class="title">암 발생 원인 분석</div>
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
