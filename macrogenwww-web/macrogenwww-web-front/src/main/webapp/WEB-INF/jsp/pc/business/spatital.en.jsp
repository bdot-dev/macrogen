<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>	
	<div class="wrap">
		<div class="full-bg business_bg bg-spatital">
		    <!--header 수정시 메인 header 같이 수정해주세요-->
			<header class="header header-bg-white" id="header">
				<c:import url="/inc/header-inner-gnb" />
			</header>
			<div class="frame frameB">
	            <nav aria-label="breadcrumb">
	                <ol class="breadcrumb breadcrumb-white">
	                    <li class="breadcrumb-item">Home</li>
	                    <li class="breadcrumb-item">SERVICE</li>
	                    <li class="breadcrumb-item">Single Cell Expert Services</li>
	                    <li class="breadcrumb-item">Spatial Transcriptome analysis</li>
	                </ol>
	            </nav>
	            <div class="hero-title en">Spatial Transcriptome Analysis</div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business spatital">
	            <div class="subject-box type02">
	                <p class="font-h4 title">This is the research analysis technique that can simultaneously check spatial information and transcriptome information in tissues.</p>
	                <p class="subject info">Spatial transcriptome analysis is the latest genetic sequencing technology, which simultaneously assesses the gene expression of cells and the location of the cells. It can directly analyze the gene expression of the tissue section itself without separation into single cells or RNA extraction. By doing so, you can understand the tissue heterogeneity at the same time by obtaining the unique location information of cells in the tissue, as well as the gene expression information. It has the advantage of being applicable to fresh tissue obtained from surgery, FFPE tissue treated with formalin for tissue preservation, in addition to pre-sectioned tissues.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img-ngs-spatial-gene.png" alt="Spatial Gene Expression analysis">
                    </div>
                    <p class="desc">As a CSP (Certified Service Provider) for spatial transcriptomics analysis by 10x Genomics, Macrogen is recognized for quick service delivery and a superior level of performance based on its NGS (Next Generation Sequencing) performance, and is ranked first in Korea and fifth in the world. We are also leading the market with diversified spatial transcriptomics analysis services by rapidly introducing new techniques.</p>
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
	                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
	                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
	                        <a href="https://dna.macrogen.com/" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
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
	                                    FFPE Block (Storage period: 3 years / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy available) <br>
	                                    Fresh Frozen Tissue (Store at -80℃, in cutting, within 6 months/ 35.3mm x 14.1 mm x 4-6 µm )
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Panel</th>
	                                <td>
	                                	Human Whole Transcriptome Atlas (hWTA)
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <!-- <div class="data_wrap">
	                        <div class="title">Data of Analysis</div>
	                        <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell02.png" alt=""/></div>
	                    </div> -->
	                    <div class="btn-area">
	                        <a href="mailto:ngskr@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
	                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
	                        <a href="https://dna.macrogen.com/" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
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