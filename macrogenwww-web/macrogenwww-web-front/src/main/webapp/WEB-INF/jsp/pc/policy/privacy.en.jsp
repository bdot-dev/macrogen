<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="container">
        <div class="section_agreement">
            <h2 class="main-title font-h1">Privacy Statement</h2>
            <c:if test="${fn:length(resultList) > 0 }">
			<div class="dropdown_area">
				<div class="select-box">
					<div class="select_default _select_default">
						<c:choose>
							<c:when test="${ empty resultVo.endDe }">
								<c:set var="currentEndDe" value="Present" />
							</c:when>
							<c:otherwise>
								<fmt:formatDate var="currentEndDe" value="${resultVo.endDe }" pattern="yyyy. MM. dd" />
							</c:otherwise>
						</c:choose>

						<span class="text"><fmt:formatDate value="${resultVo.applcDe }" pattern="yyyy. MM. dd" /> ~ ${ currentEndDe }</span>
					</div>
					<ul class="select_list _select_list">
                         	<c:forEach  var="result" items="${resultList }" varStatus="status" >
							<c:choose>
								<c:when test="${ empty result.endDe }">
									<c:set var="endDe" value="Present" />
								</c:when>
								<c:otherwise>
									<fmt:formatDate var="endDe" value="${result.endDe }" pattern="yyyy.MM.dd" />
								</c:otherwise>
							</c:choose>

							<li><span><a href="/${rc.locale.language }/policy/privacy/${result.policySn}"><fmt:formatDate value="${result.applcDe }" pattern="yyyy.MM.dd" /> ~ ${ endDe }</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			</c:if>

            <div class="content_area">
            	${resultVo.policyCn }
            </div>
        </div>
    </div>

</body>
