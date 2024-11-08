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
                    <li class="breadcrumb-item">싱글셀분석서비스</li>
                    <li class="breadcrumb-item">Single Cell(In Situ/Spatial)</li>
                </ol>
            </nav>
            <div class="hero-title en">Single Cell</div>
            <div class="slogan-sub en">Spatial Transcriptomics와 In situ 분석</div>
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
                <p class="font-h4 title">Single cell multiomics에 대한 다양한 경험을 바탕으로 연구자에게 <br>최적화된 단일세포 공간 전사체 분석 데이터를 제공하겠습니다.</p>
                <p class="subject info">Cancer Research, Immunology, Neuroscience 등 다양한 분야에서 Spatial Transcriptomics 및 In Situ 분석을 통해 건강, 질병의 진단, 모니터링, 치료 등의 연구에 기여합니다.</p>
            </div>
            
            <!--탭 슬라이드-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">PLATFORM</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab">
                        <div class="swiper-wrapper _swiperTab">
                            <div class="swiper-slide active"><a href="#">CosMx SMI</a></div>
                            <div class="swiper-slide "><a href="#">Xenium</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--//탭 슬라이드-->

            <!-- 탭 컨텐츠 -->
            <div class="info-box-wrap tab-content">

                <!-- CosMx SMI -->
                <div class="info-box show">
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
                                <td>고객과 실험 디자인 협의 완료 후 5주 (협의 조절 가능)</td>
                            </tr>
                            <tr>
                                <th scope="row">검체 타입</th>
                                <td>
                                    FFPE Block (보관 기한: 3년 / 35.3mm x 14.1 mm x 4-6 µm / Core Needle Biopsy 가능)<br>
                                    Fresh Frozen Tissue (6개월 이내 Cutting, -80°C 보관 / 35.3mm x 14.1 mm x 4-6 µm )<br>
                                    TMA(Tissue MicroArray) Organoid Spheroids
                                    <p>※ 주문 시 상담 확인</p>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">RNA & Protein Assay</th>
                                <td>
                                    CosMx™ Human Universal Cell Characterization Panel (RNA, 1000 Plex)<br>
                                    CosMx™ Human Immuno-oncology Panel (RNA, 100 Plex)<br>
                                    CosMx™ Human Immuno-oncology Panel (Protein, 64 Plex)<br>
                                    그 외 Panel Assay에 대해 별도 문의 바랍니다. (Panel 종류는 지속적으로 Update됩니다. 주문 시 상담 바랍니다.)<br>
                                    <span class="point">한번에 Section된 조직으로 RNA와 Protein 동시 분석이 가능합니다.</span>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="data_wrap">
                        <div class="title">분석 데이터</div>
                        <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell04.png" alt=""/></div>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item next"onclick="setTabContent(1)"><div class="title">Xenium</div></a>
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
                                <td>6주</td>
                            </tr>
                            <tr>
                                <th scope="row">검체 타입</th>
                                <td>FFPE, Fresh Frozen Tissue</td>
                            </tr>
                            <tr>
                                <th scope="row">RNA & Protein Assay</th>
                                <td>
                                    Human Breast Gene Expression Panel (280 genes + Customize up to 100 genes)<br>
                                    Extensive panel roadmap (Human Brain, Lung, Skin, Kidney, Pancreas 등)<br>
                                    <span class="point">다양한 RNA Target별 분석 가능</span>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="data_wrap">
                        <div class="title">분석 데이터</div>
                        <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_single_cell06.png" alt="Stain nuclei with DAPI / Identify nuclear boundaries / Estimate cell perimeters"/></div>
                    </div>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="https://dna.macrogen.com/quotation/retrieveNgsQuotation.do?menuCd=QUO300" target="_blank" class="btn btn-white"><span>견적의뢰</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">CosMx SMI</div></a>
                            </div>
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