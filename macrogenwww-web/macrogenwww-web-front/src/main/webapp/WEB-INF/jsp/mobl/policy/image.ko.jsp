<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="non-bg">
        <header class="header">
    <div class="inner">
        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
    </div>
</header>

        <div class="frame">
            <div class="font-h1">영상정보처리기기 운영&#183;관리 방침</div>
        </div>
    </div>
    <div class="container pt-0">
        <div class="section_agreement">
            <div class="select-box">
                <div class="selected-value _selected-value">
					<c:choose>
						<c:when test="${ empty resultVo.endDe }">
							<c:set var="currentEndDe" value="현재" />
						</c:when>
						<c:otherwise>
							<fmt:formatDate var="currentEndDe" value="${resultVo.endDe }" pattern="yyyy.MM.dd" />
						</c:otherwise>
					</c:choose>
                    <span class="text font-body-h-b"><fmt:formatDate value="${resultVo.applcDe }" pattern="yyyy.MM.dd" /> - ${ currentEndDe }</span>
                </div>
                <ul class="select-option _select-option">
	                <c:forEach  var="result" items="${resultList }" varStatus="status" >
						<c:choose>
							<c:when test="${ empty result.endDe }">
								<c:set var="endDe" value="현재" />
							</c:when>
							<c:otherwise>
								<fmt:formatDate var="endDe" value="${result.endDe }" pattern="yyyy.MM.dd" />
							</c:otherwise>
						</c:choose>

	                    <li class="option-value"><a href="/${rc.locale.language }/policy/image/${result.policySn}"><fmt:formatDate value="${result.applcDe }" pattern="yyyy.MM.dd" /> - ${ endDe }</a></li>
					</c:forEach>
                </ul>
            </div>
            <script>
                /*변수*/
                var selectBox = $(".select-box");
                var option = $(".option-value");


                /*드롭다운 클릭시 이벤트*/
                selectBox.on('click', function () {
                    var select = $(this);
                    if (select.hasClass('open')) {
                        select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
                    } else {
                        select.addClass("open").children('.select-option').slideDown(200).addClass("open");
                        $('body').on('click', function (e) {
                            if (selectBox.hasClass('open')) {
                                if (!selectBox.has(e.target).length) {
                                    selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                                }
                            }
                            e.preventDefault()
                        })
                    }
                });

                /*클릭시 텍스트 변경*/
                function textChange() {
                    option.on('click', function () {
                        var select = $(this).find('a').text();
                        $('._selected-value').find('span').text(select);
                    });
                }

                textChange();

                /*클릭시 탭메뉴 변경*/
                option.on('click', function () {
                    var idx = $(this).index();
                    $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                    $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
                    textChange();
                })

                /*이전 다음 이동*/
                function setTabContent(idx) {
                    $('._selected-value').text($('._select-option li').eq(idx).text());
                    <!--탭메뉴 클릭시 페이지 변경-->
                    $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                    $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

                    /*페이지 변경후 상단 이동*/
                    fnMove();

                    /*클릭시 텍스트 변경*/
                    console.log(idx);

                }

                /*탭메뉴 상단으로 이동*/
                function fnMove() {
                    var offset = $("._content-anchor").offset();
                    $('html, body').animate({scrollTop: offset.top - 95}, 100);
                }

                /*외부클릭시 셀렉트박스 초기화*/
                $("body").click(function (e) {
                    if (!selectBox.has(e.target).length) {
                        selectBox.removeClass("open").children('.select-option').slideUp(200);
                    }
                });

            </script>
            <div class="terms movieinfo">
                <div class="content_area">
					${resultVo.policyCn }
                </div>
            </div>
        </div>
    </div>

</body>
