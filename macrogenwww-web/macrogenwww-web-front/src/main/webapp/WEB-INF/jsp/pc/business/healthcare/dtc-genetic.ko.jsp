<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>
	<div class="wrap">
		<div class="full-bg business_bg bg-personal02">
	    <!--header 수정시 메인 header 같이 수정해주세요-->
			<header class="header" id="header">
				<c:import url="/inc/header-inner-gnb" />
			</header>
			<div class="frame frameB">
	            <nav aria-label="breadcrumb">
	                <ol class="breadcrumb breadcrumb-white">
	                    <li class="breadcrumb-item">Home</li>
	                    <li class="breadcrumb-item">SERVICE</li>
	                    <li class="breadcrumb-item">퍼스널 헬스케어</li>
	                    <li class="breadcrumb-item">건강관리 플랫폼</li>
	                </ol>
	            </nav>
	            <div class="hero-title">건강관리 플랫폼</div>
	            <a href="#_tab-box" class="btn btn-round btn-service">
	                <span>SERVICE</span>
	                <i class="icon icon-arrow-bottom-short-white"></i>
	            </a>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <div class="subject-box type01">
	                <p class="font-h4 title">젠톡 GenTok</p>
	                <p class="subject">
	                	젠톡은 유전자 분석을 통해 타고난 나의 특성을 알고, 마이크로바이옴(몸속 미생물) 분석으로 현재 건강 상태를 모니터링하며, 소비자들이 맞춤 건강 관리를 할 수 있도록 돕는 몸BTI 건강관리 플랫폼입니다.
	                </p>
	            </div>
	            
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <div class="info-box show">
	                    <div class="img">
	                        <img src="/publishing/pc-ko/dist/img/business/gentok_bg.png" alt="방송에 나온 그 유전자 검사! MBTI? 이젠 몸BTI 시대 궁금해 하지말고, 클릭!">
							<div class="float-wrap">
								<div class="txt">
									내 몸 사용설명서<br/>
									몸BTI 건강관리 플랫폼
								</div>
								<div class="btn-wrap">
									<a href="https://play.google.com/store/apps/details?id=app.macrogen.gentok&pcampaignid=web_share" target="_blank"><img src="/publishing/pc-ko/dist/img/business/btn_googleplay.png" alt="Google Play" /></a>
									<a href="https://apps.apple.com/kr/app/%EC%A0%A0%ED%86%A1-gentok/id6450289510" target="_blank"><img src="/publishing/pc-ko/dist/img/business/btn_appstore.png" alt="App Store" /></a>
								</div>
							</div>
	                    </div>
	                    <hr class="divider">
	                    <div class="list-gallery">
							<div class="list">
	                            <p class="title font-h5">유전자검사</p>
								<div class="description">
									비만, 탈모, 체중감량효과, 혈당, 수면습관 등 국내 최다 129종 항목에 대한 유전자검사를 제공합니다. 나의 타고난 유전자 특성과 내게 필요한 건강관리 팁을 결과카드로 쉽고 재미있게 확인할 수 있습니다.
									<p class="footnote">※  미성년자(만 18세 미만)는 검사 서비스가 불가능합니다.</p>
								</div>
	                            <div class="content">
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_healthbeauth_img01.png" alt="유전자검사">
	                                </div>
	
	                                <div class="cont">
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>영양소 : 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 35개 항목</li>
	                                            <li>운동 : 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 총 10개 항목</li>
	                                            <li>피부/모발 : 색소침착, 피부노화, 남성형 탈모 등 18개 항목</li>
	                                            <li>식습관 : 식욕, 포만감, 쓴맛 민감도 등 총 21개 항목</li>
	                                            <li>개인특성 : 알코올 홍조, 니코틴 의존성, 카페인 대사 등 23개 항목</li>
	                                            <li>건강관리 : 비만, 요요 가능성, 복부비만, 중성지방농도 등 22개 항목</li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                    	<a href="https://gentok.net/market/goods/5001" target="_blank" class="btn btn-sm btn-white"><span>자세히보기</span></a>
	                                        <a href="mailto:hello@macrogen.com" class="btn btn-sm btn-white"><span>제휴문의</span></a>
	                                    </div>
	                                </div>
	                            </div>
								<div class="img" style="margin-top: 45px;">
									<img src="/publishing/pc-ko/dist/img/business/img_healthbeauth_img03.jpg" alt="AI챗봇">
								</div>
	                        </div>
		                    <div class="list">
	                            <p class="title font-h5">더바이옴</p>
								<div class="description">
									제2의 유전체라 불리는 마이크로바이옴 분석 서비스입니다.<br/>
									식습관, 운동 및 수면 습관, 생활 환경, 스트레스 강도 등에 따라 지속적으로 변화하는 마이크로바이옴을 분석하여 현재 건강 상태를 모니터링함으로써 보다 체계적인 건강관리를 할 수 있습니다.
								</div>
	                            <div class="content">
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_healthbeauth_img02.png" alt="더바이옴">
	                                </div>
	
	                                <div class="cont">
	                                    <p class="desc"><strong>더바이옴 골드 (장내미생물 검사)</strong></p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>
													장 건강 및 라이프 지수 종합 분석<br/>
													<p class="txt-indent">
														- 장 : 변비, 방귀, 복부 팽만감, 신경성 복부 불편감, 설사<br/>
														- 웰니스 : 행복, 피로, 면역, 비만, 수면, 노화
													</p>
												</li>
	                                            <li>영양소 대사 점수 (식이섬유, 비타민B군, 단백질&BCAA 등 14종)</li>
	                                            <li>식약처 고시 프로바이오틱스 19종 검출 여부</li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                    	<a href="https://gentok.net/market/goods/5004" target="_blank" class="btn btn-sm btn-white"><span>자세히보기</span></a>
	                                        <a href="mailto:hello@macrogen.com" class="btn btn-sm btn-white"><span>제휴문의</span></a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>

	                    	<!-- <hr class="divider">
	                        <div class="list">
	                            <p class="title font-h5">마이지놈스토리 더플러스 올인원 69</p>
	                            <div class="content">
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_allinone69.png" alt="마이지놈스토리더플러스올인원69">
	                                </div>
	
	                                <div class="cont">
	                                    <p class="desc">헬스&#38;뷰티 관리뿐 아니라 평소 궁금했던 개인의 특성 분석을 통해 ‘나’를 알아갈 수 있도록 돕습니다.  국내 최다 항목을 분석하는 올인원은 토탈 헬스케어가 가능한 프리미엄 상품입니다.</p>
	                                    <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>영양소 : 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 19개 항목</li>
	                                            <li>운동 : 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 총 8개 항목</li>
	                                            <li>피부/모발: 색소침착, 피부노화, 남성형 탈모 등 11개 항목</li>
	                                            <li>식습관: 식욕, 포만감, 쓴맛 민감도 등 총 5개 항목</li>
	                                            <li>개인특성: 알코올 홍조, 니코틴 의존성, 카페인 대사 등 12개 항목</li>
	                                            <li>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 14개 항목</li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>서비스 문의</span></a>
	                                        <a href="https://smartstore.naver.com/mygenomestory/products/5372235474" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div> -->
	                        <!-- <hr class="divider">
	                        <div class="list">
	                            <p class="title font-h5">마이지놈스토리 더플러스 스킨&#38;케어 44</p>
	                            <div class="content">
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_theplus_care44.png" alt="마이지놈스토리더플러스스킨&케어44">
	                                </div>
	                                <div class="cont">
	                                    <p class="desc">헬스&#38;뷰티 관리뿐 아니라 평소 궁금했던 개인의 특성 분석을 통해 ‘나’를 알아갈 수 있도록 돕습니다.  국내 최다 항목을 분석하는 올인원은 토탈 헬스케어가 가능한 프리미엄 상품입니다.</p>
	                                    <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>피부/모발: 색소침착, 피부노화, 남성형 탈모 등 11개 항목</li>
	                                            <li>영양소: 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 19개 항목</li>
	                                            <li>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 14개 항목</li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>서비스 문의</span></a>
	                                        <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="list">
	                            <p class="title font-h5">마이지놈스토리 더플러스 피트니스 41</p>
	                            <div class="content">
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_theplus_fit41.png" alt="마이지놈스토리더플러스피트니스41">
	                                </div>
	                                <div class="cont">
	                                    <p class="desc">나에게 맞는 영양소와 운동 습관 설계에 필요한 항목을 분석할 수 있어, 건강 관리를 효과적으로 계획할 수 있도록 돕습니다.</p>
	                                    <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>운동: 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 8개 항목</li>
	                                            <li>영양소: 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 19개 항목</li>
	                                            <li>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 14개 항목</li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>자세히 보기</span></a>
	                                        <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <hr class="divider">
	                        <div class="list">
	                            <p class="title font-h5">마이지놈스토리 더플러스 11</p>
	                            <div class="content">
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/img_theplus12.png" alt="마이지놈스토리더플러스12">
	                                </div>
	                                <div class="cont">
	                                    <p class="desc">성인뿐 아니라  만 19세 미만의 미성년자도 이용 가능한 유일한 검사 서비스로  헬스&#38;뷰티 관리에 꼭 필요한 핵심 항목만으로 구성되어 쉽고 효율적인 관리를 할 수 있도록 돕습니다.</p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>헬스: 체질량지수, 콜레스테롤, 중성지방 농도 등 5개 항목</li>
	                                            <li>스킨: 색소침착, 피부노화, 카페인 대사 등 4개 항목</li>
	                                            <li>헤어: 남성형탈모, 모발굵기 2개 항목</li>
	                                        </ul>
	                                    </div>
	                                    <div class="btn-wrap">
	                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>서비스 문의</span></a>
	                                        <a href="https://smartstore.naver.com/mygenomestory/products/4150226329" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div> -->
	                    </div>
	                </div>
	
	            </div>
	            <!-- //탭 컨텐츠 -->
	
	        </div>
	    </div>
		
	</div>
	
	<%-- 팝업 --%>
	<%-- <c:if test="${not empty popupList  }"> 
	<c:forEach var="popup" items="${popupList}" varStatus="status">
		<div class="modal" tabindex="-1" id="layerPopup${status.index }" data-bs-backdrop="static">
			<input type="hidden" value="${popupCnt}" id="popupCnt">
			<input type="hidden" value="${cookieChkList[status.index]}" id="cookieChkList${status.index }">
		    <div class="modal-dialog modal-dialog-centered layer-modal">
		        <div class="modal-content">
		            <div class="modal-header">
		                <div class="blue-circle">
		                    <i class="icon icon-union"></i>
		                </div>
		            </div>
		            <div class="modal-body">
		                <p class="title">${popupVo.popupNm }</p>
		                <p class="desc">마크로젠은 핵심 기술력과 글로벌 네트워크를 바탕으로
		                    <br>2020년 창사 이래 최대 실적을 거뒀습니다.
		                    ‘매출액 또는 손익구조 30% 이상 변동 공시’ 를 통해 2020년 연결
		                    <br>재무제표 기준 매출 1,126억 원, 영업이익 72억 원, 당기순이익
		                    <br>908억 원을 달성했습니다.
		                </p>
		                <div class="data-img">
		                    <img src="${publicUrl}${popup.popupImageFlpth}" alt="" onclick="onclickPopupImage('${popup.popupLinkUrl}', '${popup.popupLinkTrgtCode}')">
		                </div>
		                <!-- <div class="btn-area">
		                    <a class="btn btn-sm btn-white" href="#">버튼 1</a>
		                    <a class="btn btn-sm btn-white" href="#">버튼 2</a>
		                </div> -->
		            </div>
		            <div class="modal-footer">
		                <div class="form-check">
		                    <input class="form-check-input" type="checkbox" id="popup-sn${status.index }" value="${ popup.popupSn }" >
		                    <label class="form-check-label" for="popup-sn${status.index }">오늘 하루 이 창 열지 않기</label>
		                </div>
		                <div class="close-box" data-bs-dismiss="modal" aria-label="Close" id="close-box${status.index }" onclick="popupClose('${ popup.popupSn }', '${status.index }')">
		                    <span>Close</span>
		                    <i class="icon ico-close-white"></i>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
	</c:forEach>
		<script>
			var popupCnt = $("#popupCnt").val();
			
			for(var i=0;i<popupCnt;i++){
				var layerPopupModal = new bootstrap.Modal(document.getElementById('layerPopup'+i))
				var coockieChk = $("#cookieChkList"+i).val();
				
				if(coockieChk == 'true'){
					layerPopupModal.hide();
				}else if(coockieChk =='false'){
					layerPopupModal.show();
				}
				
			    //layerPopupModal.show();
			}
			
		    /* var layerPopupModal = new bootstrap.Modal(document.getElementById('layerPopup'))
		    layerPopupModal.show(); */
		    
		    $('div.modal-backdrop:gt(0)').css("opacity", "0");
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
			
			function popupClose(sn, idx) {
				if ($('#popup-sn'+idx).is(':checked')) { 
					if (!sn) return;
		
					var snListStr = $.cookie('popup-businessDtc-sn-list');
					console.log(snListStr);
					if (!snListStr) {
						snListStr = sn;
					} else if (snListStr.indexOf(sn) < 0) {
						snListStr += ',' + sn;
					}
					$.cookie('popup-businessDtc-sn-list', snListStr, { expires: 1, path: '/'});
				}
				
				layerPopupModal.hide();
				/* $('.show').parent('body').css("overflow", "hidden"); 
				$('.show').parent('body').css("padding-right", "17px"); */
			}
		</script>
	</c:if> --%>
	
</body>