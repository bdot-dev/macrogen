<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="container">
        <div class="section_agreement">
            <p class="main-title font-h2">내부정보관리규정</p>
            <div class="terms">
                <div class="content_area">
                	<c:if test="${fn:length(resultList) > 0 }">
                    <div class="dropdown_area">
						<div class="select_box _select_box">
							<div class="select_default">
								<c:choose>
									<c:when test="${ empty resultVo.endDe }">
										<c:set var="currentEndDe" value="현재" />
									</c:when>
									<c:otherwise>
										<fmt:formatDate var="currentEndDe" value="${resultVo.endDe }" pattern="yyyy.MM.dd" />
									</c:otherwise>
								</c:choose>

								<span><fmt:formatDate value="${resultVo.applcDe }" pattern="yyyy.MM.dd" /> ~ ${ currentEndDe }</span>
							</div>
							<div class="select_dropdown _dropdown">
								<ul>
									<c:forEach  var="result" items="${resultList }" varStatus="status" >
										<c:choose>
											<c:when test="${ empty result.endDe }">
												<c:set var="endDe" value="현재" />
											</c:when>
											<c:otherwise>
												<fmt:formatDate var="endDe" value="${result.endDe }" pattern="yyyy.MM.dd" />
											</c:otherwise>
										</c:choose>

										<li><a href="/${rc.locale.language}/policy/inside/${result.policySn }"
												role="button"><span><fmt:formatDate value="${result.applcDe }" pattern="yyyy.MM.dd" /> ~ ${ endDe }</span></a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
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
					</div>
                	</c:if>

                    ${resultVo.policyCn }
                </div>
            </div>
        </div>
    </div>


</body>
