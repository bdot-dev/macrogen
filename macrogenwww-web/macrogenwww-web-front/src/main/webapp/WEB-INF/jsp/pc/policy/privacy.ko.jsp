<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="container">
        <div class="section_agreement">
            <p class="subtitle font-h2">개인정보 처리방침</p>
            <div class="terms">
                <div class="title_area">
                    <p class="font-h6">개인정보 처리방침</p>
                </div>
                <div class="content_area">
                	<c:if test="${fn:length(resultList) > 0 }">
                    <div class="lookup">
                        <div class="select_box _select_box">
                            <div class="select_default">
                                <fmt:formatDate value="${resultVo.applcDe }" pattern="yyyy.MM.dd" /> ~
                                <fmt:formatDate value="${resultVo.endDe }" pattern="yyyy.MM.dd" />
                            </div>
                            <div class="select_dropdown _dropdown">
                                <ul>
                                	<c:forEach  var="result" items="${resultList }" varStatus="status" >
	                                    <li><a href="/${rc.locale.language}/policy/privacy/${result.policySn }"
	                                    	role="button"><fmt:formatDate value="${result.applcDe }" pattern="yyyy.MM.dd" /> ~
				                        <fmt:formatDate value="${result.endDe }" pattern="yyyy.MM.dd" />
                                	</c:forEach>
                                </ul>
                            </div>
                        </div>
                        <%-- <a href="#" class="btn btn-primary _lookup"><span>조회</span></a> --%>

                    </div>
                    </c:if>

                    ${resultVo.policyCn }

                </div>
            </div>
        </div>
    </div>

	<%-- 퍼블리싱 스크립트 --%>
    <!--클릭시 select box on-->
    <script>
        /*드롭다운 클릭시 이벤트*/
        $(".select_default").click(function() {
            var select = $(this);

            //드롭다운 열기
            select.addClass("open").next('._dropdown').slideDown(100).addClass("open");

            //다른영역 클릭 시 닫기
            $(document).mouseup(function(e) {
                var seting = $("._dropdown");
                if (seting.has(e.target).length === 0) {
                    seting.removeClass("open").slideUp(100);
                    select.removeClass("open");
                }
            });
            $("._dropdown a").click(function() {
                var option = $(this).text();

                //클릭 시 드롭다운 닫기
                $("._dropdown a").removeClass('selected');
                $("._dropdown").removeClass("open").slideUp(100);
                select.removeClass("open");
                $(this).addClass('selected');

                //select에  text 넣기
                select.text(option);
            });
        });

        /*버튼 클릭시 이벤트*/
        $("._lookup").click(function() {
            var select = $(this);

            //드롭다운 열기
            select.addClass("open").parent().find('._dropdown').slideDown(100).addClass("open");

            //다른영역 클릭 시 닫기
            $(document).mouseup(function(e) {
                var seting = $("._dropdown");
                if (seting.has(e.target).length === 0) {
                    seting.removeClass("open").slideUp(100);
                    select.removeClass("open");
                }
            });
            $("._dropdown a").click(function() {
                var option = $(this).text();

                //클릭 시 드롭다운 닫기
                $("._dropdown a").removeClass('selected');
                $("._dropdown").removeClass("open").slideUp(100);
                select.removeClass("open");
                $(this).addClass('selected');
            });
        });
    </script>
</body>
