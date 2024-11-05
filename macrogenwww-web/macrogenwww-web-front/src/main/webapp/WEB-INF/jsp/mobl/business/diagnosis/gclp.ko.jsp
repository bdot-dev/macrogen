<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
	    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/test-bg.png);">
	    	<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <h2 class="font-h1">GCLP</h2>
	            <div class="font-body-h">Good Clinical Laboratory Practice <br>(임상시험검체분석)</div>
	            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
	        </div>	
	    </div>
	    
	    <div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <!--상단 공통 s -->
	            <div class="subject-box">
	                <p class="title font-h4">임상시험검체분석기관으로서 임상시험의 바이오마커 발굴 및 검체 분석 서비스를 제공하고 있습니다.</p>
	                <p class="subject font-body-h img_bottom">‘국내 GCLP’ 및 ‘글로벌 인증(CAP, CLIA, CSP등)’의 수준으로 관리하며, Multi Omics 기반 분석을 수행하고 있습니다. 멀티오믹스(Muti-omics) 분석은 유전체(Genome), 전사체(Transcriptome), 단백체(Proteome), 대사체(metabolome) 등을 통합 분석하는 것을 의미합니다.</p>
	                <div class="img">
	                    <img src="/publishing/mobile-ko/dist/img/business/img_gclp01.png" alt="">
	                </div>
	            </div>
	            <!--//상단 공통 e --> 
	
	            <!-- 탭 네비 s-->
	            <div class="select-nav-box _content-anchor" id="tab_anchor">
	                <p class="title font-h4">SERVICE</p>
	                <p class="desc font-body">마크로젠의 임상지놈사업본부는 임상시험검체분석 전문 서비스를 제공합니다. <br>2019년 유전체분석기관 최초 임상시험검체분석기관 지정을 식약처로부터 받았으며 국내 GCLP 기준 외에 해외 CAP, CLIA, CSP등의 다양한 인증 기반 차별화된 서비스를 선보이고 있습니다. <br> 이는 국내임상시험 및 해외 임상시험의 요구조건을 충족 시키기 위한 마크로젠만의 노력입니다. <br>분석 전문 CRO로서 바이오마커 발굴 및 검체분석에 있어 차별화된 분석 서비스 영역을 개척합니다. 멀티 오믹스 기반의 다양한 분석방법을 갖추고 최신 분석 트렌드를 제시하며, 임상시험의 성공률을 높이기 위한 전략적인 방법으로 서비스를 제공해드립니다.</p>
	                <div class="select-box">
	                    <div class="selected-value _selected-value">
	                        <span class="text">약물유전체분석</span>
	                    </div>
	                    <ul class="select-option _select-option">
	                        <li class="option-value active" onclick="setTabContent(0)" id="clin"><a href="#">약물유전체분석</a></li>
	                        <li class="option-value" onclick="setTabContent(1)" id="multi-omics"><a href="#">멀티오믹스</a></li>
	                        <li class="option-value" onclick="setTabContent(2)" id="sample"><a href="#">검체보관 서비스</a></li>
	                    </ul>
	                </div>
	            </div>
	            <!--// 탭 네비 e-->
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--약물유전체분석-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">약물유전체 분석 <br>(ClinPharm Seq)</p>
	                    <p class="desc font-body img_bottom">약물유전체 분석 서비스인 “Axen ClinPharm Seq”은 약물대사 과정에 관여하는 59개의 유전자를 검사하는 개인 맞춤형 유전자 검사입니다. <br>모든 의약품은 치료 효과를 나타내는 동시에 부작용을 유발할 가능성 또한 내재하고 있습니다. <br>개인의 유전적 특이성에 따라 약물의 효과가 뚜렷하거나 반대로 효과가 미약할 수도 있으므로 개인 맞춤형 의약품 처방 분야에 활용 가능합니다. <br>또한, 의약품의 안전성 검증을 위하여 신약의 임상시험 과정에서 참여 대상자는 개별적으로 중대 하거나 심각한 부작용의 발생 가능성을 가지고 있습니다. 약물 대사에 관여하는 개인적 특이성을 파악하여 임상시험 대상자의 선정 기준과 응급상황 발생 시 처치에 약물 유전체 정보를 활용할 수 있습니다. <br>대상자의 안전과 성공적인 임상시험 결과를 얻기 위한 또 하나의 필수 선택이라고 할 수 있습니다.</p>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_gclp02.png" alt="">
	                    </div>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_gclp03.png" alt="">
	                            <span class="btnZoom" data-img="img_gclp03"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <p class="sub-title font-h5">서비스 특장점</p>
	                    <p class="desc font-body-h">ClinPharmSeq은 평생 단 한번의 검사로 개인 맞춤 치료를 가능하게 합니다. 다양한 질병과 연관성 높은 59종 유전자를 검사하여, 평생동안 유관 약물의 효과를 늘리고 부작용을 줄여 처방할 수 있습니다.</p>
	                    <div class="list-area-group">
	                        <div class="list-area">
	                            <p class="font-body-h-b title">ClinPharmSeq은 다음과 같은 상황에서 더욱 효과적입니다.</p>
	                            <ul class="dot_list01">
	                                <li>개인 간 약물 반응 차이가 클 때</li>
	                                <li>차료역이 좁을 때</li>
	                                <li>심각한 부작용 가능성이 있을 때</li>
	                                <li>치료 저항성이 발생할 때</li>
	                                <li>장기간 치료가 필요할 때</li>
	                                <li>고가의 치료제일 때</li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">ClinPharmSeq은 다음과 같은 약물에 대한 반응을 알 수 있습니다.</p>
	                            <ul class="dot_list01">
	                                <li>감염성 질환 (항바이러스제, 항진균제)</li>
	                                <li>순환기계 질환 (고지혈증 치료제)</li>
	                                <li>암/면역 관련 질환 (면역조절제제, 세포독성항암제 등)</li>
	                                <li>정신/행동장애 (항우울제)</li>
	                                <li>혈액/조혈기관 질환 (항응고제 등)</li>
	                                <li>호르몬/대사 관련 질환 (통풍치료제)</li>
	                                <li class="none">이외에도 여러 질환의 약물군을 포함하고 있습니다.</li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title c_000">패널 사양</p>
	                            <div class="table-scroll">
	                                <table class="table">
	                                    <colgroup>
	                                        <col width="33%">
	                                        <col width="*">
	                                    </colgroup>
	                                    <thead>
	                                        <tr>
	                                            <th scope="col" colspan="2">Panel Specification</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                        <tr>
	                                            <td>Target Site</td>
	                                            <td>약 812kbp</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Regions</td>
	                                            <td>Exons + UTRs + 5’ UTR + 3’ UTR</td>
	                                        </tr>
	                                        <tr>
	                                            <td>유전자 수</td>
	                                            <td>59</td>
	                                        </tr>
	                                        <tr>
	                                            <td rowspan="2">의뢰가능 검체</td>
	                                            <td>gDNA 500ng</td>
	                                        </tr>
	                                        <tr>
	                                            <td>Whole Blood 4ml x 2pcs.</td>
	                                        </tr>
	                                        <tr>
	                                            <td>변이 종류</td>
	                                            <td>SNV, InDel, Large Insertion and deletion</td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a> -->
					          <div class="btn-box">
						          <div class="tit">마크로젠 서비스 문의</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //약물유전체분석 -->
	
	                <!--멀티오믹스-->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Multi Omics</p>
	                    <p class="desc font-body img_bottom">Multi Omics는 유전체(Genome), 전사(Transcriptome), 단백체(Proteome), 대사체(metabolome) 등의 다양한 분자 수준에서 생성된 여러 데이터를 총체적이고 통합적인 분석을 의미합니다.<br><br>새로운 기술과 장비의 발전으로 다양하고 복잡한 생물학적 실체간의 연관성을 찾기 위한 바이오마커를 발굴하고 분석하여, 질병과 생리학의 정교한 마커를 구축할 수 있습니다. 단일 유전자 돌연변이로 인해 발생하는 단순한 질병은 병인학적 요인이 거의 없으며, 복합질병의 경우 다수의 조절유전자들과 다수의 요인에 의해 영향을 받기 때문에 다수의 오믹스 데이터를 통한 분석이 필요합니다.</p>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_gclp05.png" alt="">
	                            <span class="btnZoom" data-img="img_gclp05"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <div class="border-gray-box">
	                        <div class="img">
	                            <img src="/publishing/mobile-ko/dist/img/business/img_gclp06.png" alt="">
	                            <span class="btnZoom" data-img="img_gclp06"><i class="icon ico-zoom-white"></i></span>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <p class="sub-title font-h5">서비스 특장점</p>
	                    <div class="list-area-group">
	                        <div class="list-area">
	                            <p class="font-body-h-b title">다양한 응용분야</p>
	                            <ul class="dot_list01">
	                                <li>Single Cell In situ</li>
	                                <li>단일 분자 RNA 및 단백질</li>
	                                <li>신경 질환</li>
	                                <li>바이오 의약품</li>
	                                <li>공간적 전사체</li>
	                                <li>면역 질환</li>
	                                <li>공간적 멀티오믹스</li>
	                                <li>전염성 질환</li>
	                                <li>세포 및 유전자 치료 솔루션</li>
	                                <li>암</li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">활용 플랫폼</p>
	                            <div class="img">
	                                <img src="/publishing/mobile-ko/dist/img/business/img_gclp07.png" alt="">
	                            </div>
	                            <p class="font-body-b title">최신의 분석 장비 및 기술 지원</p>
	                            <ul class="dot_list01">
	                                <li>Xenium In Situ (10X genomics)</li>
	                                <li>CosMx (nanostring)</li>
	                                <li>GeoMX (nanostring)</li>
	                                <li>Olilk Q100 (Olink)</li>
	                            </ul>
	                        </div>
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a> -->
					          <div class="btn-box">
						          <div class="tit">마크로젠 서비스 문의</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //멀티오믹스 -->
	
	                <!-- 검체보관 서비스 -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">검체보관 서비스</p>
	                    <div class="list-area-group">
	                        <div class="list-area">
	                            <p class="font-body-h-b title">분석 검체 보관 서비스를 별도로 제공 합니다.</p>
	                            <ul class="dot_list01">
	                                <li>임상시험 중 검체 수집 기간 동안 임상시험 Site(의료기관)에 장기간 보관이 불가한 경우 임시 보관 업무 대행</li>
	                                <li>임상시험 종료 후 별도 장∙단 기간 검체 보관이 필요한 경우</li>
	                            </ul>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">검체의 배송부터 입고 및 보관의 전 과정을 온도 추적관리하여 고객에게 온도 Tracking 자료를 제공합니다. <br>초저온 냉동보관 검체(-70℃ 이하)를 안전하게 보관 및 실시간 온도 모니터링과 주기적 온도 기록 등 보관에 필요한 검체 관리 업무 일체를 책임지고 수행하고 있습니다.</p>
	                        </div>
	                        <div class="list-area">
	                            <p class="font-body-h-b title">유사시 검체 안전 대비를 철저히 관리하고 있습니다.</p>
	                            <ul class="dot_list01">
	                                <li>정전 및 기기 고장 시를 대비하여 CO2 가스 백업 시스템 운용</li>
	                                <li>비상 조치 담당자에게 문자 알림 시스템 등 운용</li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/img_gclp08.png" alt="">
	                    </div>
	                    <hr class="divider">
	                    <div class="btn-area">
	                        <div class="btn_wrapper">
	                            <!-- <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-light"><span>서비스문의</span></a> -->
					          <div class="btn-box">
						          <div class="tit">마크로젠 서비스 문의</div>
						          <div class="email">
						          	<i></i>
						          	<a class="num" href="mailto:ngsclinic@macrogen.com">ngsclinic@macrogen.com</a>
						          </div>
						          <div class="phone">
						          	<i></i>
						          	<a class="num" href="tel:+82-2-2180-7222">+82-2-2180-7222</a>
						          </div>
					          </div>
	                        </div>
	                    </div>
	                    <div class="board">
	                        <div class="navigation pt-80 mb-0">
	                            <div class="row g-0">
	                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
	                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
	                            </div>
	                        </div>
	                    </div>
	
	                </div>
	                <!-- //검체보관 서비스 -->
	            </div>
	            <!--// 탭 컨텐츠 e-->
	        </div>
	
	        <!-- 2023 추가 비지니스 확대이미지 -->
	        <div class="toast-popup">
	            <p>이미지를 확대할 수 있습니다</p>
	        </div>
	        <!--modalImageViewer-->
	        <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer" data-bs-backdrop="static">
	            <div class="modal-dialog">
	                <div class="modal-content">
	                    <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
	                    <div class="parent">
	                        <div class="zoom_img"><img src="" alt=""></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!--//modalImageViewer-->
	        <!-- //2023 추가 비지니스 확대이미지 -->
	        <script src="/publishing/mobile-ko/dist/js/business.js"></script>
	        <script>
	     	// location.hash // 20230502
	        if(location.hash != "#none") {    	
	       		//var loadtab = $('._select-option .option-value').filter(location.hash);
	       		//loadtab.click();	// tab content view
	       		//setTabContent(loadtab.index());	// scroll 이동
	       		
	       		var loadtab = $('._select-option .option-value').filter(location.hash);
	       		// option click, business.js line 22 function onClickSelectOption
	       		loadtab.addClass('active').siblings().removeClass('active')
	            var idx = loadtab.index();
	            var $info = $(".info-box-wrap > div");
	            $info.addClass('show').siblings().removeClass('show');
	            $info.eq(idx).addClass('show').siblings().removeClass('show');
	            textChange(loadtab);
	            setInfoSectionList(loadtab.text())
	            // scroll 이동
	            setTabContent(loadtab.index());    		
	        }
	    		
	        $(window).on("hashchange",function () { 
	        	 if(location.hash != "#none"){
	          	location.reload();
	        	 }

	        });	
	        </script>
	    </div>
	    
	</div>


</body>
</html>