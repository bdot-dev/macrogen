<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>
<div class="wrap">
	  <div class="full-bg business_bg bg-spatital">
	    <!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>
		
		<div class="frame frameB">
	            <nav aria-label="breadcrumb">
	                <ol class="breadcrumb breadcrumb-white">
	                    <li class="breadcrumb-item">Home</li>
	                    <li class="breadcrumb-item">SERVICE</li>
	                    <li class="breadcrumb-item">싱글셀분석서비스</li>
	                    <li class="breadcrumb-item">Spatial Transcriptome analysis</li>
	                </ol>
	            </nav>
	            <div class="hero-title en">Spatial Transcriptome analysis</div>
	            <a href="#_tab-box" class="btn btn-round btn-service">
	                <span>SERVICE</span>
	                <i class="icon icon-arrow-bottom-short-white"></i>
	            </a>
	        </div>
		</div>
	 
		<div class="container">
			<link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business spatital">
	            <div class="subject-box type02">
	                <p class="font-h4 title">조직의 위치 정보와 전사체 발현 정보를<br>동시에 확인 할 수 있는 분석 방법입니다</p>
	                <p class="subject info">위치 기반 전사체 분석은 가장 최신의 유전자 분석 기술로, 세포들의 유전자 발현 정보와 세포들이 어느 위치에 존재하는지를 동시에 분석하는 기술입니다. 단일 세포로의 분리나 RNA 추출 없이 조직절편 자체의 유전자 발현을 바로 분석할 수 있는 기술이며, 이를 통해 유전자 발현 정보뿐만 아니라 조직이 가지고 있는 세포의 고유한 위치 정보까지 같이 얻을 수 있어 조직이질성(tissue heterogeneity)을 동시에 이해 할 수 있습니다. 수술로 얻은 fresh 조직과 조직을 보관하기 위해 포르말린으로 고정시켜 저장해놓은 FFPE 조직 모두에 해당 분석 방법을 적용할 수 있다는 장점이 있으며, 이미 절편화된 조직에서도 실험이 가능합니다.</p>
	                <div class="img">
	                	<img src="/publishing/pc-ko/dist/img/business/img-ngs-spatial-gene.png" alt="Spatial Gene Expression analysis">
	                </div>
	                <p class="desc">마크로젠은 10x Genomics 사의 위치 기반 전사체 분석(spatial gene expression) 서비스의 CSP(Certified service provider) 인증을 받았으며, 국내 1위이자 세계 5위 수준의 차세대염기서열분석(Next generation sequencing,NGS) 수행능력을 기반으로 높은 수준의 유전자 분석 데이터를 빠른 시간 내에 제공해 드리고 있습니다. 또한 신기술을 빠르게 도입함으로써 위치 기반 전사체 분석 서비스를 다양화하며 시장을 선도하고 있습니다.</p>
	            </div>
            
	            <!--탭 슬라이드-->
	            <div class="tab-box" id="_tab-box">
	                <p class="font-h4 title">PLATFORM</p>
	                <div class="slide-tab-wrap">
	                    <div class="swiper-container tab-slide-box _swiperTab">
	                        <div class="swiper-wrapper _swiperTab">
	                            <div class="swiper-slide active"><a href="#">Visium CytAssist</a></div>
	                            <div class="swiper-slide "><a href="#">GeoMx® DSP</a></div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!--//탭 슬라이드-->
	            
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <!-- 1 -->
	                <div class="info-box show">
	                    <p class="font-h4 main-title ls0">Visium CytAssist</p>
	                    <p class="subject">Explore and Discover spatial organization of gene expression</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell07.png" alt=""/></div>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell08.png" alt=""/></div>
	                    <p class="font-h4 main-title mt120">Visium : Sample Preparation</p>
	                    <div class="table_wrap">
	                        <table class="table table-row">
	                            <colgroup>
	                                <col width="22%">
	                                <col width="26%">
	                                <col width="26%">
	                                <col width="26%">
	                            </colgroup>
	                            <tr>
	                            	<th></th>
	                            	<th>
	                            		FF<br>
	                            		<span>(Fresh Frozen)</span>
	                            	</th>
	                            	<th>
	                            		FFPE<br>
	                            		<span>(Formalin Fixed Paraffin Embedded)</span>
	                            	</th>
	                            	<th>
	                            		Sectioned slide
	                            	</th>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample type</th>
	                                <td>OCT (compound) block</td>
	                                <td>Paraffin block</td>
	                                <td>FF / FFPE</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Section Thickness</th>
	                                <td>10 μm</td>
	                                <td>5 μm</td>
	                                <td>FF 10µm / FFPE 5µm</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA Quality</th>
	                                <td>RIN ≥ 7</td>
	                                <td>DV200 ≥ 50%</td>
	                                <td>FF RIN ≥ 4 / FFPE DV200 ≥ 30%</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Species</th>
	                                <td>Any organism (poly A tail)</td>
	                                <td>Only Human, Mouse</td>
	                                <td>Only Human, Mouse</td>
	                            </tr>
	                        </table>
	                    </div>
	                    <div class="data_wrap">
	                        <div class="title">Quality Check Process</div>
	                        <ul>
		                        <li>Visium-FF : Section (Cryotome) - RNA QC & ROI* check - Tissue optimization test</li>
		                        <li>Visium-FFPE : Section (Microtome) - RNA QC & ROI check - Tissue adhesion test</li>
		                        <li>Visium CytAssist : RNA QC & ROI check - no tissue optimization, tissue adhesion test</li>	
	                        </ul>
	                        <p>*ROI : Region of interest</p>
	                    </div>
	                    <div class="btn-area">
	                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
	                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
	                        <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
	                    </div>
	                </div>
	                <!-- //1 -->
	                <!-- 2 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title ls0">Nanostring GeoMx® DSP</p>
	                    <p class="subject">Discover Where Biology Happens</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell01.png" alt=""/></div>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell09.png" alt=""/></div>
	                    <div class="table_wrap">
	                        <table class="table table-row">
	                            <colgroup>
	                                <col width="35%">
	                                <col width="65%">
	                            </colgroup>
	                            <tr>
	                                <th scope="row">Platform</th>
	                                <td>GeoMx® Digital Spatial Profiler</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample</th>
	                                <td>
	                                    FFPE Block (보관 기한: 3년 / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy 가능)<br>
	                                    Fresh Frozen Tissue (6개월 이내 Cutting, -80°C 보관 / 35.3mm x 14.1 mm x 4-6 µm )
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Panel</th>
	                                <td>Human Whole Transcriptome Atlas (hWTA)</td>
	                            </tr>
	                        </table>
	                    </div>
	                    <!-- <div class="data_wrap">
	                        <div class="title">분석 데이터</div>
	                        <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell02.png" alt=""/></div>
	                    </div> -->
	                    <div class="btn-area">
	                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
	                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
	                        <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
	                    </div>
	                </div>
	                <!-- //2 -->
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
	                $('.swiper-wrapper').css('width',sum)
	                // slide width
	                for (var i = 0; i <= idx; i++) {
	                    var target = $(".swiper-slide:eq("+"i"+")");
	                    var idxWidth = $(".swiper-slide:eq("+"i"+")").outerWidth(true) - 40;
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
	            </script>
	
	        </div>
	    </div>
</div>	
</body>