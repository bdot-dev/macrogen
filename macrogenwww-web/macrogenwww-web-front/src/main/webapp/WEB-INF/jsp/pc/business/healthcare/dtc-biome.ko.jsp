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
	                    <li class="breadcrumb-item">DTC 바이옴검사</li>
	                </ol>
	            </nav>
	            <div class="hero-title">DTC 바이옴검사</div>
	        </div>
		</div>
		
		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business biome">
	            <div class="subject-box type01">
	                <p class="font-h4 title">더바이옴</p>
	                <p class="subject">
	                	더바이옴은 마크로젠에서 제공하는 휴먼 마이크로바이옴 분석 서비스로, 장내 미생물 검사(더바이옴 GUT), 질내 미생물 검사(더바이옴 제인) 등<br>
	                	다양한 미생물 분석 서비스와 맞춤 솔루션을 제공합니다. 제 2의 유전체라 불리는 마이크로바이옴은 생활환경, 식습관에 따라 지속적으로 변화하기 때문에<br>
	                	장 건강, 질 건강은 물론 질병 발생 가능성에 대한 주기적인 모니터링이 가능합니다. 또한 젠톡을 통해 직접 검사 신청을 할 경우 병원을 가지 않고도<br>
	                	집에서 샘플채취, 분석의뢰, 결과확인 등 모든 과정을 진행할 수 있어 비대면 건강관리에 더욱 용이합니다.<br><br>
	                	<span>** 추후 구강 미생물 검사 추가 예정</span>
	                </p>
	            </div>
	            
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <div class="info-box show">
	                    <hr class="divider">
	                    <div class="list-gallery">
		                    <div class="list">
	                            <p class="title font-h5">더바이옴 GUT</p>
	                            <div class="content">
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/biome-gut.png" alt="더바이옴 GUT">
	                                </div>
	
	                                <div class="cont">
	                                    <p class="desc">장내 미생물이 알려주는 건강 성적표,<br>집에서 하는 가장 스마트한 장 건강 케어 서비스</p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>장 건강 및 라이프 지수의 종합 분석</li>
	                                            <li>맞춤 유산균 복용을 위한 장 유형</li>
	                                            <li>
	                                            	라이프 지수 11종<br>
	                                            	&nbsp;&nbsp;- 장: 변비, 방귀, 복부 팽만감, 신경성 복부 불편감, 설사<br>
	                                            	&nbsp;&nbsp;- 웰니스: 행복, 피로, 면역, 비만, 수면, 노화
	                                            </li>
	                                            <li>영상소 14종 대사 점수</li>
	                                            <li>식약처 고시 프로바이오틱스 19종 검출 여부</li>
	                                        </ul>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    	<hr class="divider" style="background: unset;">
	                        <div class="list">
	                            <p class="title font-h5">더바이옴 제인</p>
	                            <div class="content biome">
	                                <div class="picture">
	                                    <img src="/publishing/pc-ko/dist/img/business/biome-jain.png" alt="더바이옴 제인">
	                                </div>
	
	                                <div class="cont">
	                                    <p class="desc">여성 건강 관리의 첫 걸음,<br>소중한 당신을 위한 프라이빗 케어 서비스</p>
	                                    <div class="list-area">
	                                        <ul class="list-circle-dot">
	                                            <li>질 미생물 유형</li>
	                                            <li>세균성 질염</li>
	                                            <li>자궁경부염</li>
	                                            <li>골반염</li>
	                                            <li>질 건조증</li>
	                                        </ul>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
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