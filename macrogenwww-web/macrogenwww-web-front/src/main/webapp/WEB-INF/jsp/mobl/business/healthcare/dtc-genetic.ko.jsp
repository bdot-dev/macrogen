<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		 <div class="top-bg personal02">
		 	<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <h2 class="font-h1">건강관리 플랫폼</h2>
	        </div>
		 </div>
		 
		 <div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
	        <div class="section_business">
	
	            <!-- 탭 컨텐츠 s-->
	            <div class="info-box-wrap tab-content">
	                <!--컨텐츠탭01-->
	                <div class="info-box show">
	                    <p class="font-h4 main-title" id="anchor2">건강관리 플랫폼</p>
	                    <p class="subject font-body-h">
							젠톡은 유전자 분석을 통해 타고난 나의 특성을 알고, 마이크로바이옴(몸속 미생물) 분석으로 현재 건강 상태를 모니터링하며, 소비자들이 맞춤 건강 관리를 할 수 있도록 돕는 몸BTI 건강관리 플랫폼입니다.
	                    </p>
	                    <div class="img">
	                        <img src="/publishing/mobile-ko/dist/img/business/gentok_bg.png" alt="내 몸 사용설명서 몸BTI 건강관리 플랫폼">
	                    </div>
						<div class="btn-store-wrap">
							<a href="https://play.google.com/store/apps/details?id=app.macrogen.gentok&pcampaignid=web_share" target="_blank"><img src="/publishing/mobile-ko/dist/img/business/btn_googleplay.png" alt="Google Play" /></a>
							<a href="https://apps.apple.com/kr/app/%EC%A0%A0%ED%86%A1-gentok/id6450289510" target="_blank"><img src="/publishing/mobile-ko/dist/img/business/btn_appstore.png" alt="App Store" /></a>
						</div>
	                    <hr class="divider h10">
	                    <!--content-anchor s-->
	                    <div class="content-anchor">
	                        <div class="selected-value _anchor-value">
	                            <span class="text">건강관리 플랫폼</span>
	                        </div>
	                        <ul class="anchor-option">
	                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">유전자검사</a></li>
	                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">더바이옴</a></li>
	                        </ul>
	                    </div>
	                    <!--content-anchor e-->
	                    <div class="list-gallery">
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target1">유전자검사</p>
									<div class="descript">
										비만, 탈모, 체중감량효과, 혈당, 수면습관 등 국내 최다 129종 항목에 대한 유전자검사를 제공합니다.<br/>
										나의 타고난 유전자 특성과 내게 필요한 건강관리 팁을 결과카드로 쉽고 재미있게 확인할 수 있습니다.
										<p class="footnote">※  미성년자(만 18세 미만)는 검사 서비스가 불가능합니다.</p>
									</div>
	                                <div class="content">
	                                    <!--10.05 이미지 경로 변경-->
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_healthbeauth_img01.png" alt="유전자검사">
	                                    </div>
	                                    <div class="cont">
	                                        <div class="list-area">
												<ul class="list-circle-dot">
													<li><p>영양소 : 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 35개 항목</p></li>
													<li><p>운동 : 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 총 10개 항목</p></li>
													<li><p>피부/모발 : 색소침착, 피부노화, 남성형 탈모 등 18개 항목</p></li>
													<li><p>식습관 : 식욕, 포만감, 쓴맛 민감도 등 총 21개 항목</p></li>
													<li><p>개인특성 : 알코올 홍조, 니코틴 의존성, 카페인 대사 등 23개 항목</p></li>
													<li><p>건강관리 : 비만, 요요 가능성, 복부비만, 중성지방농도 등 22개 항목</p></li>
												</ul>
	                                        </div>
	                                        <div class="btn-wrap">
                                            	<a href="https://gentok.net/market/goods/5001" target="_blank" class="btn btn-sm btn-white">자세히보기</a>
												<a href="mailto:hello@macrogen.com" class="btn btn-sm btn-white">제휴문의</a>
	                                        </div>
	                                    </div>
	                                </div>
									<div class="img" style="margin-top:40px;">
										<img src="/publishing/mobile-ko/dist/img/business/img_healthbeauth_img03.png" alt="AI챗봇">
									</div>
	                            </div>
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target2">더바이옴</p>
									<div class="descript">
										제2의 유전체라 불리는 마이크로바이옴 분석 서비스입니다.<br/>
										식습관, 운동 및 수면 습관, 생활 환경, 스트레스 강도 등에 따라 지속적으로 변화하는 마이크로바이옴을 분석하여 현재 건강 상태를 모니터링함으로써 보다 체계적인 건강관리를 할 수 있습니다.
									</div>
	                                <div class="content">
	                                    <!--10.05 이미지 경로 변경-->
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_healthbeauth_img02.png" alt="더바이옴">
	                                    </div>
	                                    <div class="cont">
											<p class="desc"><strong>더바이옴 골드 (장내미생물 검사)</strong></p>
	                                        <div class="list-area">
												<ul class="list-circle-dot">
													<li>
														<p>
															장 건강 및 라이프 지수 종합 분석<br/>
															- 장 : 변비, 방귀, 복부 팽만감, 신경성 복부 불편감, 설사<br/>
															- 웰니스 : 행복, 피로, 면역, 비만, 수면, 노화
														</p>
													</li>
													<li><p>영양소 대사 점수 (식이섬유, 비타민B군, 단백질&BCAA 등 14종)</p></li>
													<li><p>식약처 고시 프로바이오틱스 19종 검출 여부</p></li>
												</ul>
	                                        </div>
	                                        <div class="btn-wrap">
                                            	<a href="https://gentok.net/market/goods/5004" target="_blank" class="btn btn-sm btn-white">자세히보기</a>
												<a href="mailto:hello@macrogen.com" class="btn btn-sm btn-white">제휴문의</a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>

	                        <!-- <hr class="divider">      
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target5">마이지놈스토리 더플러스 올인원 69</p>
	                                <div class="content">	                                    
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_allinone69.png" alt="마이지놈스토리더플러스올인원69">
	                                    </div>
	                                    <div class="cont">
	                                        <p class="desc font-body caption_bottom">헬스&#38;뷰티 관리뿐 아니라 평소 궁금했던 개인의 특성 분석을 통해 ‘나’를 알아갈 수 있도록 돕습니다. 국내 최다 항목을 분석하는 올인원은 토탈 헬스케어가 가능한 프리미엄 상품입니다.</p>
	                                        <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
	                                        <div class="list-area">
	                                            <ul class="list-circle-dot">
	                                                <li><p>영양소 : 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 19개 항목</p></li>
	                                                <li><p>운동 : 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 총 8개 항목</p></li>
	                                                <li><p>피부/모발: 색소침착, 피부노화, 남성형 탈모 등 11개 항목</p></li>
	                                                <li><p>식습관: 식욕, 포만감, 쓴맛 민감도 등 총 5개 항목</p></li>
	                                                <li><p>개인특성: 알코올 홍조, 니코틴 의존성, 카페인 대사 등 12개 항목</p></li>
	                                                <li><p>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 14개 항목</p></li>
	                                            </ul>
	                                        </div>
											<div class="list_service">
												<strong>[제휴 서비스 안내]</strong>
												<ul>
													<li>①	제휴사를 위한 맞춤 서비스 제작 가능</li>
													<li>②	제휴문의를 통한 문의 요청</li>
												</ul>
											</div>
	                                        <div class="btn-wrap">
	                                            <div class="btn-wrapper">
													<a href="http://gentok.net" target="_blank" class="btn btn-sm btn-light"><span>자세히보기</span></a>
	                                                <a href="mailto:hello@macrogen.com" class="btn btn-sm btn-light"><span>제휴문의</span></a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div> -->
	                        <!-- <hr class="divider">
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target6">마이지놈스토리 더플러스 스킨&#38;케어 44</p>
	                                <div class="content">
	                                    10.05 이미지 경로 변경
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_theplus_care44.png" alt="마이지놈스토리더플러스스킨&케어44">
	                                    </div>
	                                    <div class="cont">
	                                        <p class="desc font-body">헬스&#38;뷰티 관리뿐 아니라 평소 궁금했던 개인의 특성 분석을 통해 ‘나’를 알아갈 수 있도록 돕습니다. 국내 최다 항목을 분석하는 올인원은 토탈 헬스케어가 가능한 프리미엄 상품입니다.</p>
	                                        <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
	                                        <div class="list-area">
	                                            <ul class="list-circle-dot">
	                                                <li><p>피부/모발: 색소침착, 피부노화, 남성형 탈모 등 11개 항목</p></li>
	                                                <li><p>영양소: 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 19개 항목</p></li>
	                                                <li><p>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 14개 항목</p></li>
	                                            </ul>
	                                        </div>
	                                        <div class="btn-wrap">
	                                            <div class="btn-wrapper">
	                                                <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-light"><span>서비스 문의</span></a>
	                                                <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target7">마이지놈스토리 더플러스 피트니스 41</p>
	                                <div class="content">
	                                    10.05 이미지 경로 변경
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_theplus_fit41.png" alt="마이지놈스토리더플러스피트니스41">
	                                    </div>
	                                    <div class="cont">
	                                        <p class="desc font-body">나에게 맞는 영양소와 운동 습관 설계에 필요한 항목을 분석할 수 있어, 건강 관리를 효과적으로 계획할 수 있도록 돕습니다.</p>
	                                        <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
	                                        <div class="list-area">
	                                            <ul class="list-circle-dot">
	                                                <li><p>운동: 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 8개 항목</p></li>
	                                                <li><p>영양소: 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 19개 항목</p></li>
	                                                <li><p>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 14개 항목</p></li>
	                                            </ul>
	                                        </div>
	                                        <div class="btn-wrap">
	                                            09.29 버튼명 변경 (자세히 보기 -> 서비스 문의)
	                                            <div class="btn-wrapper">
	                                                <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-light"><span>서비스 문의</span></a>
	                                                <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="section-anchor">
	                            <div class="list">
	                                <p class="sub-title font-h5" id="target8">마이지놈스토리 더플러스 11</p>
	                                <div class="content">
	                                    10.05 이미지 경로 변경
	                                    <div class="img">
	                                        <img src="/publishing/mobile-ko/dist/img/business/img_theplus12.png" alt="마이지놈스토리더플러스12">
	                                    </div>
	                                    <div class="cont">
	                                        <p class="desc font-body">성인뿐 아니라 만 19세 미만의 미성년자도 이용 가능한 유일한 검사 서비스로 헬스&#38;뷰티 관리에 꼭 필요한 핵심 항목만으로 구성되어 쉽고 효율적인 관리를 할 수 있도록 돕습니다.</p>
	                                        <div class="list-area">
	                                            <ul class="list-circle-dot">
	                                                <li><p>헬스: 체질량지수, 콜레스테롤, 중성지방 농도 등 5개 항목</p></li>
	                                                <li><p>스킨: 색소침착, 피부노화, 카페인 대사 등 4개 항목</p></li>
	                                                <li><p>헤어: 남성형탈모, 모발굵기 2개 항목</p></li>
	                                            </ul>
	                                        </div>
	                                        <div class="btn-wrap">
	                                            <div class="btn-wrapper">
	                                                <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-light"><span>서비스 문의</span></a>
	                                                <a href="https://smartstore.naver.com/mygenomestory/products/4150226329" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div> -->
	                    </div>
	                </div>
	                <!-- //컨텐츠탭01 -->
	            </div>
	            <!--// 탭 컨텐츠 e-->
	        </div>
	        <script src="/publishing/mobile-ko/dist/js/business.js"></script>
	    </div>
	</div>
    
    <%-- 팝업 --%> 
	<%-- <c:if test="${not empty popupList  }">
	<c:forEach var="popup" items="${popupList}" varStatus="status">
		<div class="modal fade modal-notice" tabindex="-1" id="modal${status.index }" data-bs-backdrop="static" aria-labelledby="modal"
		     aria-hidden="true">
		    <input type="hidden" value="${popupCnt}" id="popupCnt">
			<input type="hidden" value="${cookieChkList[status.index]}" id="cookieChkList${status.index }">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <div class="ico-notice icon"></div> 
		            </div>
		            <div class="modal-body">
		                <div class="scroll">
		                    <div class="data-img">
		                        <img src="/publishing/mobile-ko/dist/img/@temp/newsroom/sample-2.png" alt="">
			                    <img src="${publicUrl}${popup.popupImageFlpth}" alt=""
			                    	onclick="onclickPopupImage('${popup.popupLinkUrl}', '${popup.popupLinkTrgtCode}')">
		                    </div>
		                    <div class="btn-wrapper">
		                        <a href="#" class="btn btn-light btn-round">버튼1</a>
		                        <a href="#" class="btn btn-light btn-round">버튼2</a>
		                    </div>
		                </div>
		            </div>
		            <div class="modal-footer">
		                <a href="javascript:;" data-popup-sn="${popup.popupSn}" class="btn-footer close-box"  onclick="popupClose('${ popup.popupSn }')" data-bs-dismiss="modal" data-bs-target="#modal" aria-label="Close"><span>오늘은 그만 보기</span></a>
		                <a href="javascript:;" class="btn-footer" data-bs-dismiss="modal" data-bs-target="#modal" aria-label="Close"><span>닫기</span></a>
		            </div>
		        </div>
		    </div>
		</div>
		</c:forEach>
		<script>
		    
		    var popupCnt = $("#popupCnt").val();
			
			for(var i=0;i<popupCnt;i++){
				var modal = new bootstrap.Modal(document.getElementById('modal'+i));
				var coockieChk = $("#cookieChkList"+i).val();

				if(coockieChk == 'true'){
					modal.hide();
				}else if(coockieChk =='false'){
					modal.show();
				}
			}
		</script>
		<script>
			function onclickPopupImage(url, trgtCode) {
				if (!url) {
					return;
				}

				if (trgtCode === 'NEW') {
					window.open(url);
				} else {
					location.href = url;
				}
			}
 
			 function popupClose(sn) {
				if (!sn) return;
				
				var snListStr = $.cookie('popup-businessDtc-sn-list');
				if (!snListStr) {
					snListStr = sn;
				} else if (snListStr.indexOf(sn) < 0) {
					snListStr += ',' + sn;
				}

				$.cookie('popup-businessDtc-sn-list', snListStr, { expires: 1, path: '/'});
				modal.hide();
			}
		</script>
	</c:if> --%>
</body>