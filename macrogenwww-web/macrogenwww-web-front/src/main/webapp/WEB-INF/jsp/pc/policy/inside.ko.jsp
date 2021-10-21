<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="container">
        <div class="section_agreement">
            <p class="main-title font-h1">내부정보관리규정</p>

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
						    var selectBox = $(".select_default");

						    selectBox.on('click', function() {
						      var select = $(this);
						      //드롭다운 닫기
						      if(select.hasClass('open')) {
						        select.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
						      }
						      //드롭다운 열기
						      else {
						        select.addClass("open").next('._dropdown').slideDown(200).addClass("open");
						        $('body').on('click',function (e){
						          if(selectBox.hasClass('open')) {
						            if(!selectBox.has(e.target).length) {
						              selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
						            }
						          }
						          // e.preventDefault()
						        })
						      }
						    });

						    $("._dropdown a").on('click',function() {
						      var option = $(this).find('span').text();
						      console.log(option)
						      $('._select_box .select_default').find('span').text(option);
						    });
						</script>
			</div>
            </c:if>

		    <div class="content_area">
            ${resultVo.policyCn }
            </div>
        </div>
    </div>


</body>
