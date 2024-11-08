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

<!--        <div class="frame">-->
<!--            <div class="font-h1">영상정보처리기기 운영&#183;관리 방침</div>-->
<!--        </div>-->
    </div>
    <div class="container pt-0">
        <div class="section_agreement">
            <h2 class="main-title font-h1">Image Information Processing Policy</h2>
            <div class="terms">
                <div class="content_area">
                    <div class="dropdown_area">
                        <div class="select-box">
                            <div class="select_default _select_default">
								<c:choose>
									<c:when test="${ empty resultVo.endDe }">
										<c:set var="currentEndDe" value="Present" />
									</c:when>
									<c:otherwise>
										<fmt:formatDate var="currentEndDe" value="${resultVo.endDe }" pattern="yyyy.MM.dd" />
									</c:otherwise>
								</c:choose>
                                <span class="text"><fmt:formatDate value="${resultVo.applcDe }" pattern="yyyy.MM.dd" /> ~ ${ currentEndDe }</span>
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
	                                <li><span><a href="/${rc.locale.language }/policy/image/${result.policySn}"><fmt:formatDate value="${result.applcDe }" pattern="yyyy.MM.dd" /> ~ ${ endDe }</a></span></li>
								</c:forEach>
                            </ul>
                        </div>
                    </div>

					${resultVo.policyCn }
                </div>
            </div>
        </div>
    </div>

</body>
