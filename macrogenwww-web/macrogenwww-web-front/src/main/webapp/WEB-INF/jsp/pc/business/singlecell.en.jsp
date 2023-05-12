<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>	
	<div class="wrap">
		<div class="full-bg business_bg single_cell">
			<!--header 수정시 메인 header 같이 수정해주세요-->
			<header class="header" id="header">
				<c:import url="/inc/header-inner-gnb" />
			</header>
			
			<div class="frame frameB">
	            <nav aria-label="breadcrumb">
	                <ol class="breadcrumb breadcrumb-white">
	                    <li class="breadcrumb-item">Home</li>
	                    <li class="breadcrumb-item">SERVICE</li>
	                    <li class="breadcrumb-item">Research Services</li>
	                    <li class="breadcrumb-item">Single Cell(In Situ/Spatial)</li>
	                </ol>
	            </nav>
	            <div class="hero-title en">Single Cell (In Situ / Spatial)</div>
	            <a href="#_tab-box" class="btn btn-round btn-service">
	                <span>SERVICE</span>
	                <i class="icon icon-arrow-bottom-short-white"></i>
	            </a>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business single_cell">
	            <div class="subject-box">
	                <p class="font-h4 title">Drawing on years of experience with single-cell multiomics, Macrogen offers single-cell sequencing and spatial transcriptomics optimized for your research needs.</p>
	                <p class="subject info">By providing in situ analysis as well as services in spatial transcriptomics in a wide range of areas including cancer research, immunology and neuroscience, Macrogen serves as a reliable partner contributing to research on health, as well as on the diagnosis, monitoring and treatment of diseases.</p>
	            </div>
	            
	            <!--탭 슬라이드-->
	            <div class="tab-box" id="_tab-box">
	                <p class="font-h4 title">PLATFORM</p>
	                <div class="slide-tab-wrap">
	                    <div class="swiper-container tab-slide-box _swiperTab">
	                        <div class="swiper-wrapper _swiperTab">
	                            <div class="swiper-slide active"><a href="#">GeoMx DSP</a></div>
	                            <div class="swiper-slide "><a href="#">CosMx SMI</a></div>
	                            <div class="swiper-slide "><a href="#">Xenium</a></div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!--//탭 슬라이드-->
	
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <!-- GeoMx DSP -->
	                <div class="info-box show">
	                    <p class="font-h4 main-title ls0">Nanostring GeoMx® DSP</p>
	                    <p class="subject">Discover Where Biology Happens</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell01.png" alt=""/></div>
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
	                                <th scope="row">TAT</th>
	                                <td>5 Weeks after ROI section</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample type</th>
	                                <td>
	                                    FFPE Block (Storage period: 3 years / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy available) <br>
	                                    Fresh Frozen Tissue (Store at -80℃, in cutting, within 6 months/ 35.3mm x 14.1 mm x 4-6 µm )
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    Human Whole Transcriptome Atlas (hWTA)<br>
	                                    Human Cancer Transcriptome Atlas (hCTA)<br>
	                                    Human Protein Assay<br>
	                                    Please contact us for inquiries about other panel assays<br>
	                                    <span class="point">We offer simultaneous whole transcriptome analysis (WTA) for RNA and protein from sectioned tissue.</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <div class="data_wrap">
	                        <div class="title">Data of Analysis</div>
	                        <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell02.png" alt=""/></div>
	                    </div>
	                    <div class="btn-area">
	                        <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
	                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
	                    </div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item next"onclick="setTabContent(1)"><div class="title">CosMx SMI</div></a>
	                            </div>
	                        </div>
	                    </div>
	                    
	                </div>
	                <!-- //GeoMx DSP -->
	
	                <!-- CosMx SMI -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Nanostring CosMx™ SMI</p>
	                    <p class="subject">The First Fully-Integrated Single-Cell Spatial Biology Solution with the highest plex, multiomic capability and high resolution</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell03.png" alt=""/></div>
	                    <div class="table_wrap">
	                        <table class="table table-row">
	                            <colgroup>
	                                <col width="35%">
	                                <col width="65%">
	                            </colgroup>
	                            <tr>
	                                <th scope="row">Platform</th>
	                                <td>CosMx™ Spatial Molecular Imager</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">TAT</th>
	                                <td>5 Weeks after ROI section</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample type</th>
	                                <td>
	                                    FFPE Block (Storage period: 3 years / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy available)<br>
	                                    Fresh Frozen Tissue (Store at -80℃, in cutting, within 6 months / 35.3mm x 14.1 mm x 4-6 µm )<br>
	                                    tissue microarray, organoid sample
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    CosMx™ Human Universal Cell Characterization Panel (RNA, 1000 Plex)<br>
	                                    CosMx™ Human Immuno-oncology Panel (RNA, 100 Plex)<br>
	                                    CosMx™ Human Immuno-oncology Panel (Protein, 64 Plex)<br>
	                                    Please contact us for inquiries about other panel assays<br>
	                                    <span class="point">We offer simultaneous analysis for RNA and protein from sectioned tissue. (To be updated in late 2023)</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <div class="data_wrap">
	                        <div class="title">Data of Analysis</div>
	                        <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell04.png" alt=""/></div>
	                    </div>
	                    <div class="btn-area">
	                        <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
	                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
	                    </div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">GeoMx DSP</div></a>
	                                <a href="#" class="item next"onclick="setTabContent(2)"><div class="title">Xenium</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //CosMx SMI -->
	
	                <!-- Xenium -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">10x Genomics Xenium In Situ</p>
	                    <p class="subject">High-plex in situ from the single cell leader</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell05.png" alt=""/></div>
	                    <div class="table_wrap">
	                        <table class="table table-row">
	                            <colgroup>
	                                <col width="35%">
	                                <col width="65%">
	                            </colgroup>
	                            <tr>
	                                <th scope="row">Platform</th>
	                                <td>Xenium In Situ Analyzer</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">TAT</th>
	                                <td>6 Weeks</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">Sample type</th>
	                                <td>FFPE, Fresh Frozen Tissue</td>
	                            </tr>
	                            <tr>
	                                <th scope="row">RNA & Protein Assay</th>
	                                <td>
	                                    Human Breast Gene Expression Panel (280 genes + Customize up to 100 genens)<br>
	                                    Extensive panel roadmap (Human Brain, Lung, Skin, Kidney, Pancreas)<br>
	                                    <span class="point">Various RNA targets analysis can be provided upon request</span>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <div class="data_wrap">
	                        <div class="title">Data of Analysis</div>
	                        <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell06.png" alt="Stain nuclei with DAPI / Identify nuclear boundaries / Estimate cell perimeters"/></div>
	                    </div>
	                    <div class="btn-area">
	                        <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
	                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>Quotation</span></a>
	                    </div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">CosMx SMI</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //Xenium -->
	
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