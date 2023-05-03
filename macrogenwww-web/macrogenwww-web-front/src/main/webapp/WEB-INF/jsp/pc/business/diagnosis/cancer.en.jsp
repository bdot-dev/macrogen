<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

  <div class="full-bg business_bg bg-type2">
    <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

    <div class="frame frameB">
      <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">Clinical Diagnostics</li>
        <li class="breadcrumb-item">Cancer Genome Testing</li>
    </ol>
</nav>

      <div class="hero-title">Cancer Genome Testing</div>
      <div class="slogan-sub">Cancer genome test using FFPE, tissue, and liquid biopsy</div>
    </div>
  </div>

  <div class="container">
    <div class="section_business">
      <!--탭 링크-->
      <div class="tab-box" id="_tab-box">
        <div class="subject-box">
          <p class="font-h4 title">We provide personalized solutions for a healthy life by<br> analyzing your genomic features.</p>
          <p class="subject info">Based on genetic factors identified through your personal genome sequence, we predict the risk of cancer and provide personalized treatment information by<br> analyzing mutations in oncogenes.</p>
        </div>
        <p class="font-h4 title">SERVICE</p>
        <div class="slide-tab-wrap">
          <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
            <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
              <div class="swiper-slide active" id="prediction"><a href="#">Cancer risk prediction</a></div>
              <div class="swiper-slide" id="analyze"><a href="#">Analysis of causes of cancer</a></div>
              <div class="swiper-slide" id="monitoring"><a href="#">Cancer Occurrence Monitoring</a></div>
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
          fnMove();
        }

        /*탭메뉴 상단으로 이동*/
        function fnMove(){
          var offset = $("#_tab-box").offset();
          $('html, body').animate({scrollTop : offset.top - 95}, 100);
        }
        
     	// location.hash // 20230502
        if(location.hash) {
        	
       		var loadtab = $('._swiperTab .swiper-slide').filter(location.hash);
       		loadtab.click();	// tab content view
       		setTabContent(loadtab.index());	// scroll 이동
        }
   		
        $(window).on("hashchange",function () { 
        	location.reload();
        });
      </script>

      <div class="info-box-wrap tab-content">
        <!--암 발생 위험 예측-->
        <div class="info-box show">
          <p class="font-h4 main-title">Cancer risk prediction</p>
          <p class="subject">Cancers occur due to various causes, but some cancers are caused by genetic mutations of specific inherited genes.</p>
          <p class="desc img_bottom">People who have such cancer-related mutations are exposed to far more risk of cancer than others. Hereditary cancers are caused by gene abnormalities inherited from parents, and the incidence of cancer in the same family is high. Thus, early detection and identification of the exact cause through gene diagnosis is required. The most commonly known hereditary cancers are breast cancer, ovarian cancer, and colon cancer. In regard to incidence of breast cancer, 5% - 10% is known to be genetically caused, and about more than half are caused by abnormalities in genes called BRCA1 and BRCA2. In addition, having genes that cause various cancers will dramatically increase the incidence of cancer.</p>
          <div class="border-gray-box">
            <div class="img">
              <img src="/publishing/pc-en/dist/img/business/img_familyline.png" alt="Cancer risk prediction">
            </div>
          </div>
          <hr class="divider">
          <p class="font-h5 sub-title">Hereditary Cancer Panel</p>
          <p class="desc data_bottom">The heredity cancer panel diagnoses the hereditary risk of cancer by analyzing the causative gene related to hereditary cancer. Mutations of a total of 16 genes including BRCA1/2 genes,
            and genes related to Lynch syndrome, which is the main cause of colon cancer, are analyzed.</p>
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
          <p class="font-h5 sub-title">BRCA1/2 Gene Test</p>
          <p class="desc data_bottom">All areas of the BRCA1/2 gene, which is the main cause of hereditary breast cancer, are analyzed to diagnose a person’s risk of breast cancer.
            <br>Mutations in the BRCA 1/2 gene greatly increase the risk of breast cancer.
          </p>
          <div class="border-gray-box">
            <!--10.05 이미지 경로 변경-->
            <img src="/publishing/pc-en/dist/img/business/img-dnatest.png" alt="BRCA1/2 유전자 검사">
          </div>
          <p class="notice-text"><i class="icon icon-attention"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
          <div class="btn-area">
            <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item next"  onclick="setTabContent(1)">
                  <div class="title">Analysis of causes of cancer</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
        <!--Analysis of causes of cancer-->
        <div class="info-box">
          <p class="font-h4 main-title">Analysis of causes of cancer</p>
          <p class="subject">This service tracks the cause of cancer and provides key information for personalized treatment by analyzing mutations in the genes
            <br>involved in cancer development using DNA extracted from cancer patients' tumor samples.</p>
          <p class="desc img_bottom">Until now, cancers were classified in a histopathological manner, but recently, gene analysis is performed on cancer tissue, and cancers are subdivided into groups.<br>
            This contributes to improved response (about 75% of patients exhibit different effects when the same anticancer drug is prescribed) and provides personalized treatment for cancer<br> patients while minimizing adverse effects.</p>
          <div class="border-gray-box">
            <!--10.05 이미지 경로 변경-->
            <div class="img">
              <img src="/publishing/pc-en/dist/img/business/img_cancer.png" alt="Analysis of causes of cancer">
            </div>
          </div>
          <div class="border-gray-box">
            <!--10.05 이미지 경로 변경-->
            <div class="img">
              <img src="/publishing/pc-en/dist/img/business/img_cancer2.png" alt="Analysis of causes of cancer 그래프">
            </div>
          </div>
          <p class="caption">※ Source: Pao W et al. New driver mutations in non-small-cell lung cancer Lancet Oncol. 2011 Feb; 12(2): 175-80</p>
          <p class="notice-text"><i class="icon icon-attention"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
          <div class="btn-area">
            <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <a href="#" class="item prev" onclick="setTabContent(0)">
                  <div class="title">Cancer risk prediction</div>
                </a>
                <a href="#" class="item next" onclick="setTabContent(2)">
                  <div class="title">Cancer Occurrence Monitoring</div>
                </a>
              </div>
            </div>
          </div>
          <script>

          </script>
        </div>
        <!--Cancer Occurrence Monitoring-->
        <div class="info-box">
          <p class="font-h4 main-title">Cancer Occurrence Monitoring</p>
          <p class="subject">When cancer occurs in the body, there are NDA fragments detached from cancer cells in the blood.</p>
          <p class="desc img_bottom">This is called ctDNA (circulating tumor DNA). When ctDNA is checked regularly, cancer cells can be detected early and prompt measures can be taken.<br>
            Unlike existing biopsies, this test can be performed by simply collecting blood, which makes regular checkups more efficient. However, theistest is not widely given because the levels of<br> ctDNA are different by type of cancer and individual, making detection very difficult. Macrogen is expanding this service by continuously making technical improvements.</p>
          <div class="border-gray-box">
            <!--10.05 이미지 경로 변경-->
            <div class="img">
              <img src="/publishing/pc-en/dist/img/business/img_monitoring.png" alt="CTDNA분석">
            </div>
          </div>
          <div class="border-gray-box no-caption">
            <!--10.05 이미지 경로 변경-->
            <div class="img">
              <img src="/publishing/pc-en/dist/img/business/img_monitoring2.png" alt="LINEAR CARE SYSTEM&CIRCULAR CARESY STEM">
            </div>
          </div>
          <p class="notice-text"><i class="icon icon-attention"></i><span>Clinical diagnosis-related service items cannot be requested personally, and inquiries through professional medical personnel are required to use the service.</span></p>
          <div class="btn-area">
            <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
          </div>
          <hr class="divider">
          <div class="board">
            <div class="navigation">
              <div class="content clearfix">
                <!--09.29 title 텍스트 변경 -->
                <a href="#" class="item prev"  onclick="setTabContent(1)">
                  <div class="title">Analysis of causes of cancer</div>
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
