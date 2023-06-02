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
                    <li class="breadcrumb-item">SERVICE</li>
                    <li class="breadcrumb-item">임상분석서비스</li>
                    <li class="breadcrumb-item">암 유전체 검사</li>
                </ol>
            </nav>
            <div class="hero-title">암 유전체 검사</div>
            <div class="slogan-sub">FFPE, Tissue, Liquid Biopsy(액체생검)등을 이용한 암유전체 검사</div>
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
                <p class="font-h4 title">높은 민감도의 다양한 NGS검사로 암 유관 유전자 변이를 분석하여 <br>암의 조기 발견과 치료 그리고 예방의 길라잡이가 되겠습니다.</p>
                <p class="subject info">국내 사망 원인 1위인 암. 마크로젠에서는 상황별 맞춤화된 NGS targeted sequencing panel로 유전성 암부터 조기암, 진행성·전이성 암에 대해 Cancer Monitoring, (Early) Detection, Screening 분석합니다.</p>
                <div class="img last"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome01.png" alt=""/></div>
            </div>

			<!--탭 슬라이드-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">SERVICE</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab">
                        <div class="swiper-wrapper _swiperTab">
                            <div class="swiper-slide active" id="cancer"><a href="#">암 유전자 검사 (Axen™ Cancer Panel)</a></div>
                            <div class="swiper-slide" id="hereditary"><a href="#">유전성 암 감수성 검사 (Axen™ Hereditary Cancer Panel)</a></div>
                            <div class="swiper-slide" id="brca"><a href="#">BRCA1/2 유전자 검사 (Axen™ BRCA / Axen™ BRCA Premium)</a></div>
                            <div class="swiper-slide" id="gastric"><a href="#">위암 검사 패널(Axen™ Gastric Cancer)</a></div>
                        </div>
                    </div>
                    <div class="btn-box">
                        <a href="#" class="btn btn-circle btn-white btn-sm _slideLeft swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-disabled="true"><i class="icon icon-arrow-left-sm"></i></a>
                        <a href="#" class="btn btn-circle btn-white btn-sm _slideRight swiper-button-disabled" tabindex="-1" role="button" aria-label="Next slide" aria-disabled="true"><i class="icon icon-arrow-right-sm"></i></a>
                        <a href="#" class="btn btn-circle btn-black btn-sm _btnMenu"><i class="icon icon-menu-white"></i></a>
                    </div>
                    <div class="tab-modal">
                        <div class="tab-modal-header">
                            <div class="close-btn _closebtn">
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                        <ul class="tab-modal-body">
                            <li><a href="#" onclick="setTabContent(0)">암 유전자 검사 (Axen™ Cancer Panel)</a></li>
                            <li><a href="#" onclick="setTabContent(1)">유전성 암 감수성 검사 (Axen™ Hereditary Cancer Panel)</a></li>
                            <li><a href="#" onclick="setTabContent(2)">BRCA1/2 유전자 검사 (Axen™ BRCA / Axen™ BRCA Premium)</a></li>
                            <li><a href="#" onclick="setTabContent(3)">위암 검사 패널(Axen™ Gastric Cancer)</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//탭 슬라이드-->

			<!-- 탭 컨텐츠 -->
            <div class="info-box-wrap tab-content">
                <!-- 암 유전자 검사 (Axen™ Cancer Panel) -->
                <div class="info-box show">
                    <p class="font-h4 main-title">암 유전자 검사 (Axen™ Cancer Panel)</p>
                    <p class="desc">Axen™ Cancer Panel은 capture hybridization 방식의 Pan-cancer panel로, coverage를 더욱 높여 암 관련 유전자 exon의 모든 SNV, InDel뿐만 아니라 Fusion gene, CNV 그리고 TMB, MSI까지도 효율적으로 검출할 수 있습니다. 원하는 연구범위에 따라 최소 88개부터 최대 559개 유전자로 구성된 3종의 cancer panel 중 가장 적합한 서비스를 선택할 수 있으며, Liquid Biopsy와 Tumor Biopsy 모두 분석이 가능합니다.</p>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0301.png" alt=""/></div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item next"onclick="setTabContent(1)"><div class="title">유전성 암 감수성 검사</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //암 유전자 검사 (Axen™ Cancer Panel) -->

                <!-- 유전성 암 감수성 검사 (Axen™ Hereditary Cancer Panel) -->
                <div class="info-box">
                    <p class="font-h4 main-title">유전성 암 감수성 검사 (Axen™ Hereditary Cancer Panel)</p>
                    <p class="desc">혈액 채취를 통해 대표적인 유전성 암 관련 유전자를 검사하는 Axen™ Hereditary Cancer (유전성 암) 검사는 관련 논문들을 기반으로 하여 특정 암의 조기 발견에 도움이 될 수 있는 유전자 변이를 검사할 수 있도록 설계되었습니다. 유전성 암에서 대표적으로 널리 알려져 있는 유방암과 대장암 등 다양한 유전성 암 원인 유전자 69개를 차세대염기서열 분석법을 통해 한번에 분석 가능합니다.</p>
                    <div class="cancer_genome_box01">
                        <div class="font-h8">어떤 질병에 대한 유전자를 검사하나요?</div>
                        <ul>
                            <li class="cancer_genome0101">
                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0101.png" alt=""/>
                                <dl>
                                    <dt>유전성 유방암 난소암 증후군</dt>
                                    <dd>주로 BRCA1, BRCA2 유전자의 돌연변이와 관련이 있습니다.<br>하나의 돌연변이 만으로도 위험성을 가지며, 췌장암, 전립선암, 피부암에 걸리기 쉽습니다.</dd>
                                    <dt>리프라우메니 증후군</dt>
                                    <dd>보통 염색체 우성양상으로 유전되며, 유방암, 골육종, 연조직육종, 백혈병, 뇌종양, 악성 부신피질암 등이 한 가계 내에서 발병할 수 있습니다.</dd>
                                    <dt>포이츠 예거스 증후군</dt>
                                    <dd>입술 및 구강내 점막, 발가락, 손가락에 특징적인 색소 침착을 나타내는 질환으로, 소장에 용종이 많이 생겨서 복통이나 하혈, <br>때로는 장폐색 증상을 일으키기도 합니다. 난소, 나팔관, 유방, 폐, 담낭, 췌장 등의 여러 장기에서 암이 발생합니다.</dd>
                                </dl>
                            </li>
                            <li class="cancer_genome0102">
                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0102.png" alt=""/>
                                <dl>
                                    <dt>카우덴 증후군</dt>
                                    <dd>피부와 점막에 양성종양 같은 기형이 생기고 유방, 자궁, 갑상선의 양성 및 악성 종양이 발생할 위험이 높습니다.</dd>
                                    <dt>신경섬유종증</dt>
                                    <dd>다발성 신경섬유종과 담갈색의 피부반점을 주 증상으로 하는 유전 질환입니다.</dd>
                                </dl>
                            </li>
                            <li class="cancer_genome0103">
                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0103.png" alt=""/>
                                <dl>
                                    <dt>가족성 샘종 폴립종</dt>
                                    <dd>대장에 100개 또는 그 이상의 선종이 생기는 상염색체의 우성양상의 유전성 질환으로 대장의 전단계로 판단됩니다.</dd>
                                    <dt>린치 증후군</dt>
                                    <dd>50대 이전에 대장암 또는 다른 특정 유형의 암이 방생할 가능성이 높으며, 가족성 갬플폴립종 보다 흔하게 나타납니다. <br>상염색체 우성양상으로 유전됩니다.</dd>
                                </dl>
                            </li>
                            <li class="cancer_genome0104">
                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0104.png" alt=""/>
                                <dl>
                                    <dt>폰 히펠-린다우 증후군</dt>
                                    <dd>상염색체 우성양상으로 유전되며, 특히 중추신경계 및 신장에 발생하는 악성 및 양성 종양을 특징으로 하는 질환입니다.</dd>
                                </dl>
                            </li>
                            <li class="cancer_genome0105">
                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0105.png" alt=""/>
                                <dl>
                                    <dt>유전성 망막모세포종</dt>
                                    <dd>망막에 생기는 악성종양으로, 어느 정도 커지면 동공을 통하여 희게 보이는 경우도 있으며, 대개 생후 3개월쯤 생기는 경우가 많습니다.</dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                    <div class="reference"><i class="icon01"></i>이 외에도 유방암, 난소암, 췌장암, 전립선암, 대장암, 자궁암, 위암, 피부암, 내분비계암, 혈액암, 신경계 뇌종양, 육종, 기타 암과 관련한 69개의 유전자를 검사합니다.</div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">암 유전자 검사</div></a>
                                <a href="#" class="item next"onclick="setTabContent(2)"><div class="title">BRCA1/2 유전자 검사</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //유전성 암 감수성 검사 (Axen™ Hereditary Cancer Panel) -->

                <!-- BRCA1/2 유전자 검사 (Axen™ BRCA / Axen™ BRCA Premium) -->
                <div class="info-box">
                    <p class="font-h4 main-title">BRCA1/2 유전자 검사 (Axen™ BRCA / Axen™ BRCA Premium)</p>
                    <p class="desc">유전성 유방암 및 난소암 등의 발병 위험도를 높이는 것으로 잘 알려진 BRCA1/2 유전자의 전 영역을 분석하거나, 혹은 BRCA1/2를 포함한 유관 유전자 총 53개를 분석합니다. 유방암 및 난소암 등에 가족력이 있어 유전적 변이에 의한 발병 위험도 예측 선별 검사의 역할을 하기도 하며, 확진받은 환자의 유관 유전자 변이에 대해 정밀한 검사를 통해 정확한 진단과 개인 맞춤 치료에도 도움을 줍니다.</p>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0201.png" alt=""/></div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">유전성 암 감수성 검사</div></a>
                                <a href="#" class="item next"onclick="setTabContent(3)"><div class="title">위암 검사 패널</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //BRCA1/2 유전자 검사 (Axen™ BRCA / Axen™ BRCA Premium) -->

                <!-- 위암 검사 패널(Axen™ Gastric Cancer) -->
                <div class="info-box">
                    <p class="font-h4 main-title">위암 검사 패널(Axen™ Gastric Cancer)</p>
                    <p class="desc">Axen™ Gastric Cancer Panel은 위암 환자에게서 돌연변이 빈도가 높게 나타나는 유전자를 선별하여, 다양한 위암의 유형을 분석할 수 있도록 디자인 했습니다. 아시아/한국인 특이적인 위암 관련 유전자들로 구성되어 위암 발병의 대부분을 차지하는 장 형 위암(Intestinal type)을 위한 Somatic 분석이 가능하며, 뿐만 아니라 미만형 위암(Diffuse type)에서 임상적으로 유의미한 CDH1, ARID1A, RHOA 분석을 포함하고 있어 유전성 위암 분석까지 가능하도록 설계 되어있습니다.</p>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0401.png" alt=""/></div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(2)"><div class="title">BRCA1/2 유전자 검사</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //위암 검사 패널(Axen™ Gastric Cancer) -->
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
            <!-- //탭 컨텐츠 -->

            <script>
                var swiper = new Swiper("._swiperTab", {
                    slidesPerView: "auto",
                    spaceBetween: 0,
                    centeredSlides: false,
                    watchActiveIndex: true,
                    slideToClickedSlide: true,
                    navigation: {
                        nextEl: "._slideRight",
                        prevEl: "._slideLeft",
                    },
                });
                var idx = $('._swiperTab .swiper-slide').length;
                var sum= 0;
                // slide wrap width
                for (var j = 0; j < idx; j++) {
                    sum = sum + $(".swiper-slide:eq("+j+")").outerWidth(true);
                }
                $('.swiper-wrapper').css('width',sum);
                // slide width
                for (var i = 0; i <= idx; i++) {
                    var target = $(".swiper-slide:eq("+"i"+")");
                    var idxWidth = $(".swiper-slide:eq("+"i"+")").outerWidth(true);
                    target.css('width',idxWidth)
                }
                function setTabContent (idx){
                    $('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');
                    swiper[0].slideTo(idx);
                    //탭메뉴 클릭시 페이지 변경
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
                $('._swiperTab .swiper-slide').on('click', function(){
                    var idx = $(this).index();
                    setTabContent(idx)
                });
                $('.swiper-notification').remove();
                // 탭모달 스크립트
                $("._btnMenu").on('click',function() {
                    $(".tab-modal").show();
                });
                $("._closebtn").on('click',function() {
                    $(".tab-modal").hide();
                });
                $(document).mouseup(function (e){
                    var LayerPopup = $(".tab-modal");
                    if(LayerPopup.has(e.target).length === 0){
                        LayerPopup.hide();
                    }
                });
                
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
		</div>
	</div>
</body>