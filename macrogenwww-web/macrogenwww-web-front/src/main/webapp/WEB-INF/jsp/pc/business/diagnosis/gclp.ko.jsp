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
                    <li class="breadcrumb-item">GCLP(임상시험검체분석)</li>
                </ol>
            </nav>
            <h2 class="hero-title">GCLP</h2>
            <div class="slogan-sub">Good Clinical Laboratory Practice(임상시험검체분석)</div>
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
                <p class="font-h4 title">임상시험검체분석기관으로서 임상시험의 바이오마커 발굴 및 <br>검체 분석 서비스를 제공하고 있습니다.</p>
                <p class="subject info">‘국내 GCLP’ 및 ‘글로벌 인증(CAP, CLIA, CSP등)’의 수준으로 관리하며, Multi Omics 기반 분석을 수행하고 있습니다. <br>멀티오믹스(Muti-omics) 분석은 유전체(Genome), 전사체(Transcriptome), 단백체(Proteome), 대사체(Metabolome) 등을 통합 분석하는 것을 의미합니다.</p>
                <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_gclp01.png" alt=""/></div>
            </div>

			<!--탭 슬라이드-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">SERVICE</p>
                <p class="info">마크로젠의 임상지놈사업본부는 임상시험검체분석 전문 서비스를 제공합니다. <br>2019년 유전체분석기관 최초 임상시험검체분석기관 지정을 식약처로부터 받았으며 국내 GCLP 기준 외에 해외 CAP, CLIA, CSP등의 다양한 인증 기반 차별화된 서비스를 <br>선보이고 있습니다. 이는 국내임상시험 및 해외 임상시험의 요구조건을 충족 시키기 위한 마크로젠만의 노력입니다. 분석 전문 CRO로서 바이오마커 발굴 및 검체분석에 있어 차별화된 분석 서비스 영역을 개척합니다. 멀티 오믹스 기반의 다양한 분석방법을 갖추고 최신 분석 트렌드를 제시하며, 임상시험의 성공률을 높이기 위한 전략적인 방법으로 서비스를 제공해드립니다.</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab">
                        <div class="swiper-wrapper _swiperTab">
                            <div class="swiper-slide active" id="clin"><a href="#">약물유전체분석</a></div>
                            <div class="swiper-slide" id="multi-omics"><a href="#">멀티오믹스</a></div>
                            <div class="swiper-slide" id="sample"><a href="#">검체보관 서비스</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--//탭 슬라이드-->

			<!-- 탭 컨텐츠 -->
			<div class="info-box-wrap tab-content">
                <!-- 약물유전체분석 -->
                <div class="info-box show">
                    <p class="font-h4 main-title">약물유전체 분석 (ClinPharm Seq)</p>
                    <p class="desc">약물유전체 분석 서비스인 “Axen ClinPharm Seq”은 약물대사 과정에 관여하는 59개의 유전자를 검사하는 개인 맞춤형 유전자 검사입니다. 모든 의약품은 치료 효과를 나타내는 동시에 부작용을 유발할 가능성 또한 내재하고 있습니다. 개인의 유전적 특이성에 따라 약물의 효과가 뚜렷하거나 반대로 효과가 미약할 수도 있으므로 개인 맞춤형 의약품 처방 분야에 활용 가능합니다. 또한, 의약품의 안전성 검증을 위하여 신약의 임상시험 과정에서 참여 대상자는 개별적으로 중대 하거나 심각한 부작용의 발생 가능성을 가지고 있습니다. <br>약물 대사에 관여하는 개인적 특이성을 파악하여 임상시험 대상자의 선정 기준과 응급상황 발생 시 처치에 약물 유전체 정보를 활용할 수 있습니다. <br>대상자의 안전과 성공적인 임상시험 결과를 얻기 위한 또 하나의 필수 선택이라고 할 수 있습니다.</p>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_gclp02.png" alt=""/></div>

                    <div class="img_gclp02">
                        <div class="contents03">
                            <div class="font-h8">임상시험 증가에 따라 약물이상반응도 ↑... <br>지난해 사망 36명</div>
                            <div class="font-body">....지난해에만 총 538건의 임상시험이 이뤄진 가운데, 약물의 이상반응<br>으로 사망에 이른 참여자가 총 36명에 달한 것으로 나타났다.</div>
                            <div class="reference">※ 의약품 부작용 피해구제 사례집(2021년/한국의약품안전관리원)</div>
                        </div>
                        <div class="contents02">
                            <div class="table_title">
                                <div class="font-h8">최근 5년간 약물이상반응 현황</div>
                                <span>(단위:건)</span>
                            </div>
                            <table class="table">
                                <colgroup>
                                    <col width="18%">
                                    <col width="16%" span="4">
                                    <col width="22%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">구분</th>
                                        <th scope="col">2016년</th>
                                        <th scope="col">2017년</th>
                                        <th scope="col">2018년</th>
                                        <th scope="col">2019년</th>
                                        <th scope="col">2020년 6월</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>사망</td>
                                        <td>21</td>
                                        <td>29</td>
                                        <td>31</td>
                                        <td>39</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>입원 및 기타</td>
                                        <td>288</td>
                                        <td>260</td>
                                        <td>273</td>
                                        <td>264</td>
                                        <td>141</td>
                                    </tr>
                                    <tr>
                                        <td>계</td>
                                        <td>309</td>
                                        <td>289</td>
                                        <td>304</td>
                                        <td>300</td>
                                        <td>155</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <p class="sub-title font-h5">서비스 특장점</p>
                    <p class="desc">ClinPharmSeq은 평생 단 한번의 검사로 개인 맞춤 치료를 가능하게 합니다.<br>다양한 질병과 연관성 높은 59종 유전자를 검사하여, 평생동안 유관 약물의 효과를 늘리고 부작용을 줄여 처방할 수 있습니다.</p>
                    <div class="img_gclp01">
                        <p>ClinPharmSeq은 <br>다음과 같은 상황에서 <br>더욱 효과적입니다.</p>
                        <ul class="dot_list01">
                            <li>개인 간 약물 반응 차이가 클 때</li>
                            <li>차료역이 좁을 때</li>
                            <li>심각한 부작용 가능성이 있을 때</li>
                            <li>치료 저항성이 발생할 때</li>
                            <li>장기간 치료가 필요할 때</li>
                            <li>고가의 치료제일 때</li>
                        </ul>
                    </div>
                    <div class="img_gclp01">
                        <p>ClinPharmSeq은 <br>다음과 같은 약물에 대한 <br>반응을 알 수 있습니다.</p>
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
                    <p class="sub-title font-h5">패널 사양</p>
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
                                <td class="text-start">약 812kbp</td>
                            </tr>
                            <tr>
                                <td>Regions</td>
                                <td class="text-start">Exons + UTRs + 5’ UTR + 3’ UTR</td>
                            </tr>
                            <tr>
                                <td>유전자 수</td>
                                <td class="text-start">59</td>
                            </tr>
                            <tr>
                                <td rowspan="2">의뢰가능 검체</td>
                                <td class="text-start">gDNA 500ng</td>
                            </tr>
                            <tr>
                                <td class="text-start">Whole Blood 4ml x 2pcs.</td>
                            </tr>
                            <tr>
                                <td>변이 종류</td>
                                <td class="text-start">SNV, InDel, Large Insertion and deletion</td>
                            </tr>
                        </tbody>
                    </table>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item next"onclick="setTabContent(1)"><div class="title">멀티오믹스</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //약물유전체분석 -->

                <!-- 멀티오믹스 -->
                <div class="info-box">
                    <p class="font-h4 main-title">Multi Omics</p>
                    <p class="desc">Multi Omics는 유전체(Genome), 전사체(Transcriptome), 단백체(Proteome), 대사체(Metabolome) 등의 다양한 분자 수준에서 생성된 여러 데이터를 총체적이고 통합적으로 분석하는 것을 의미합니다. <br>새로운 기술과 장비의 발전으로 다양하고 복잡한 생물학적 실체간의 연관성을 찾기 위한 바이오마커를 발굴하고 분석하여 질병과 생리학의 정교한 마커를 구축할 수 있습니다. <br>단일 유전자 돌연변이로 인해 발생하는 단순한 질병은 병인학적 요인이 거의 없으며, 복합질병의 경우 다수의 조절유전자들과 요인에 의해 영향을 받기 때문에 다수의 오믹스 데이터를 통한 분석이 필요합니다.</p>
                    <div class="img_gclp03">
                        <div class="font-h8">Central Dogma*</div>
                        <div class="box01">
                            <div class="box02">DNA</div>
                            <div class="box02">RNA</div>
                            <div class="box02">Protein</div>
                            <div class="text">멀티오믹스</div>
                        </div>
                    </div>
                    <div class="img_gclp04">
                        <div class="box">
                            <img src="/publishing/pc-ko/dist/img/business/img_gclp0301.png" alt=""/>
                            <div class="font-body">암</div>
                            종양 및 면역 체계의 미세 환경에 나오는 공간적 이질성 파악 <br>및 치료 효과의 가능성이 있는 바이오마커 식별
                        </div>
                        <div class="box">
                            <img src="/publishing/pc-ko/dist/img/business/img_gclp0302.png" alt=""/>
                            <div class="font-body">면역 질환</div>
                            전염성 질환, 알러지성 염증 반응 및 자가면역 질환을 <br>치료하기 위한 면역 체계 및 공간적 위치 파악
                        </div>
                        <div class="box last">
                            <img src="/publishing/pc-ko/dist/img/business/img_gclp0303.png" alt=""/>
                            <div class="font-body">신경 질환</div>
                            질환 및 중대 부상 치료를 위해 복잡한 신경 조직 내의 <br>유전자의 공간적 발현 패턴 파악
                        </div>
                    </div>
                    <p class="sub-title font-h5">서비스 특장점</p>
                    <div class="img_gclp01">
                        <p>다양한 응용분야</p>
                        <ul class="dot_list01 flex">
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
                    <p class="sub-title font-h5">활용 플랫폼</p>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_gclp04.png" alt=""/></div>
                    <div class="list-area-group type02">
                        <div class="list-area">
                            <p class="font-body-h title">최신의 분석 장비 및 기술 지원</p>
                            <ul class="list-circle-dot">
                                <li>Xenium In Situ (10X genomics)</li>
                                <li>CosMx (nanostring)</li>
                                <li>GeoMX (nanostring)</li>
                                <li>Olilk Q100 (Olink)</li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">약물유전체분석</div></a>
                                <a href="#" class="item next" onclick="setTabContent(2)"><div class="title">검체보관 서비스</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //멀티오믹스 -->

                <!-- 검체보관 서비스 -->
                <div class="info-box">
                    <p class="font-h4 main-title">검체보관 서비스</p>
                    <div class="img_gclp05">
                        <p class="font-body-h title">분석 검체 보관 서비스를 별도로 제공 합니다.</p>
                        <ul class="dot_list01">
                            <li>임상시험 중 검체 수집 기간 동안 임상시험 Site(의료기관)에 장기간 보관이 불가한 경우 임시 보관 업무 대행</li>
                            <li>임상시험 종료 후 별도 장∙단 기간 검체 보관이 필요한 경우</li>
                        </ul>
                        <p class="font-body-h title">검체의 배송부터 입고 및 보관의 전 과정을 온도 추적관리하여 고객에게 온도 Tracking 자료를 제공합니다. <br>초저온 냉동보관 검체(-70℃ 이하)를 안전하게 보관 및 실시간 온도 모니터링과 주기적 온도 기록 등 보관에 필요한 검체 관리 업무 일체를 책임지고 수행하고 있습니다.</p>
                        <p class="font-body-h title">유사시 검체 안전 대비를 철저히 관리하고 있습니다.</p>
                        <ul class="dot_list01">
                            <li>정전 및 기기 고장 시를 대비하여 CO2 가스 백업 시스템 운용</li>
                            <li>비상 조치 담당자에게 문자 알림 시스템 등 운용</li>
                        </ul>
                    </div>
                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_gclp05.png" alt=""/></div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">멀티오믹스</div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //체보관 서비스 -->
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
					/*페이지 변경후 상단 이동*/
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
		</div>
	</div>
</body>