<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
<div class="wrap">
	<div class="top-bg personal02">
		<header class="header">
			<div class="inner">
				<h1 class="logo"><a href="/">마크로젠 로고</a></h1>
				<a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			</div>
		</header>
		<div class="frame">
			<h2 class="font-h3">DTC 바이옴검사</h2>
		</div>
	</div>

	<div class="container">
		<link type="text/css" rel="stylesheet" href="/publishing/mobile-ko/dist/css/business.css"/>
		<div class="section_business biome">

			<!-- 탭 컨텐츠 s-->
			<div class="info-box-wrap tab-content">
				<!--컨텐츠탭01-->
				<div class="info-box show">
					<p class="font-h4 main-title" id="anchor2">더바이옴</p>
					<p class="subject font-body-h">
						더바이옴은 마크로젠에서 제공하는 휴먼 마이크로바이옴 분석 서비스로, 장내 미생물 검사(더바이옴 골드) 외 다양한 미생물 분석 서비스를 제공합니다.
						제 2의 유전체라 불리는 마이크로바이옴은 생활환경, 식습관에 따라 지속적으로 변화하기 때문에 장 건강, 질 건강은 물론 질병 발생 가능성에 대한 주기적인 모니터링이 가능합니다. 또한 젠톡을 통해 직접 검사 신청을 할 경우 병원을 가지 않고도 집에서 샘플채취, 분석의뢰, 결과확인 등 모든 과정을 진행할 수 있어 비대면 건강관리에 더욱 용이합니다.
					</p>
					<hr class="divider">
					<!--content-anchor s-->
					<div class="content-anchor">
						<div class="selected-value _anchor-value">
							<span class="text">더바이옴GUT</span>
						</div>
						<ul class="anchor-option">
							<li class="anchor-value" onclick="TitleMove('target1')"><a href="#">더바이옴 GUT</a></li>
							<li class="anchor-value" onclick="TitleMove('target2')"><a href="#">더바이옴 제인</a></li>
						</ul>
					</div>
					<!--content-anchor e-->
					<div class="list-gallery">
						<div class="section-anchor">
							<div class="list">
								<p class="sub-title font-h5" id="target1">더바이옴 골드</p>
								<div class="content">
									<!--10.05 이미지 경로 변경-->
									<div class="img">
										<img src="/publishing/mobile-ko/dist/img/business/biome-gut.png" alt="더바이옴 GUT">
									</div>
									<div class="cont">
										<p class="desc font-body caption_bottom">장내 미생물이 알려주는 건강 성적표,<br>집에서 하는 가장 스마트한 장 건강 케어 서비스</p>
										<div class="list-area">
											<ul class="list-circle-dot">
												<li><p>장 건강 및 라이프 지수의 종합 분석</p></li>
												<li>
													<p>
														라이프 지수 11종<br>
														- 장: 변비, 방귀, 복부팽만감,<br>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신경성 복부 불편감, 설사<br>
														- 웰니스: 행복, 피로, 면역, 비만, 수면, 노화
													</p>
												</li>
												<li><p>영양소 14종 대사 점수</p></li>
												<li><p>식약처 고시 프로바이오틱스 19종 검출 여부</p></li>
											</ul>
										</div>
										<div class="btn-wrap">
											<div class="btn-wrapper">
												<a href="https://gentok.net/market/goods/5005" target="_blank" class="btn btn-sm btn-light"><span>자세히보기</span></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- <hr class="divider" style="background: unset;">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target2">더바이옴 제인</p>
                                <div class="content">
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/biome-jain.png" alt="더바이옴 제인">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body caption_bottom">여성 건강 관리의 첫 걸음,<br>소중한 당신을 위한 프라이빗 케어 서비스</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>질 미생물 유형</p></li>
                                                <li><p>세균성 질염</p></li>
                                                <li><p>자궁경부염</p></li>
                                                <li><p>골반염</p></li>
                                                <li><p>질 건조증</p></li>
                                            </ul>
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
