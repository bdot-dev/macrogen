<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="container">
        <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">IR</li>
		        <li class="breadcrumb-item active">재무정보</li>
		    </ol>
		</nav>

        <div class="section_IR">
            <div class="font-h1">재무정보</div>
            <div class="financial_box">
                <div class="subtitle">
                    <span class="font-h7">연결재무상태표</span>
                    <span class="text-unit">단위 : 천원</span>
                </div>

                <table class="table table-rotate">
                    <tbody>
                        <tr>
                            <th>구분</th>
                            <td>유동자산</td>
                            <td>비유동자산</td>
                            <td class="table-bg">자산 총계</td>
                            <td>유동부채</td>
                            <td>비유동부채</td>
                            <td class="table-bg">부채 총계</td>
                            <td class="font-medium">지배기업의 소유주지분</td>
                            <td>자본금</td>
                            <td>주식발행초과금</td>
                            <td>기타포괄손익누계액</td>
                            <td>기타자본항목</td>
                            <td>이익잉여금</td>
                            <td class="font-medium">비지배지분</td>
                            <td class="table-bg">자본 총계</td>
                        </tr>
                        <c:forEach var="result" items="${fnlttList }" varStatus="status">
                        	<c:set var="totalAssets" value="${result.curAssets + result.noncurAssets }" />
                        	<c:set var="totalLiabil" value="${result.curLiabil + result.noncurLiabil }" />
                        	<c:set var="totalEquity" value="${totalAssets - totalLiabil }" />
                        	<c:set var="ownersOfParentEquity" value="${totalEquity - result.noncontrInterest }" />

	                        <tr>
	                            <th>${result.iemOdrKo }<span class="additional">(<fmt:formatDate value="${result.iemDe }" pattern="yyyy.MM.dd" />)</span></th>
	                            <td class="text-end"><fmt:formatNumber value="${result.curAssets }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.noncurAssets }" /></td>
	                            <td class="text-end table-bg"><fmt:formatNumber value="${totalAssets }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.curLiabil }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.noncurLiabil }" /></td>
	                            <td class="text-end table-bg"><fmt:formatNumber value="${totalLiabil }" /></td>
	                            <td class="text-end font-medium"><fmt:formatNumber value="${ownersOfParentEquity }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.capl }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.capitalSurplus }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.accOtherCompIncome }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.otherCompOfEquity }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.retainedEarnings }" /></td>
	                            <td class="text-end font-medium"><fmt:formatNumber value="${result.noncontrInterest }" /></td>
	                            <td class="text-end table-bg"><fmt:formatNumber value="${totalEquity }" /></td>
	                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="financial_box">
                <div class="subtitle">
                    <span class="font-h7">연결포괄손익계산서</span>
                    <span class="text-unit">단위 : 천원</span>
                </div>
                <table class="table table-rotate">
                    <tbody>
                        <tr>
                            <th>과목</th>
                            <td class="table-bg">매출액</td>
                            <td>매출원가</td>
                            <td class="table-bg">매출총이익</td>
                            <td>판매비와 관리비</td>
                            <td class="table-bg">영업이익</td>
                            <td>기타 수익</td>
                            <td>기타 비용</td>
                            <td class="table-bg">법인세비용차감전순이익</td>
                            <td>법인세비용</td>
                            <td>중단영업이익</td>
                            <td class="table-bg">당기순이익</td>
                            <td>기타포괄손익</td>
                            <td class="table-bg">총포괄손익</td>
                        </tr>
                        <c:forEach var="result" items="${ plosdocList }" varStatus="status">
                        	<c:set var="grossProfit" value="${ result.sales - result.costSales }" />
                        	<c:set var="operatingIncome" value="${ grossProfit - result.sellAdminExpenses }" />
                        	<c:set var="incomeLossBefIncometax" value="${ operatingIncome  + result.etcErn - result.etcCt}" />
                        	<c:set var="netIncome" value="${ incomeLossBefIncometax - result.incometaxExpenses + result.discontOperIncome }" />
                        	<c:set var="totalComprehensiveIncome" value="${ netIncome + result.otherCompIncome }" />

	                        <tr>
	                            <th>${result.iemOdrKo }<span class="additional">(<fmt:formatDate value="${result.iemDe }" pattern="yyyy.MM.dd" />)</span></th>
	                            <td class="text-end table-bg"><fmt:formatNumber value="${result.sales }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.costSales }" /></td>
	                            <td class="text-end table-bg"><fmt:formatNumber value="${grossProfit }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.sellAdminExpenses }" /></td>
	                            <td class="text-end table-bg"><fmt:formatNumber value="${operatingIncome }" /></td>

	                            <td class="text-end"><fmt:formatNumber value="${result.etcErn }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.etcCt }" /></td>

	                            <td class="text-end table-bg"><fmt:formatNumber value="${incomeLossBefIncometax }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.incometaxExpenses }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.discontOperIncome }" /></td>

	                            <td class="text-end table-bg"><fmt:formatNumber value="${netIncome }" /></td>
	                            <td class="text-end"><fmt:formatNumber value="${result.otherCompIncome }" /></td>
	                            <td class="text-end table-bg"><fmt:formatNumber value="${totalComprehensiveIncome }" /></td>
	                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <c:if test="${fn:length(plosdocList) > 0 }">
	            <p class="update_text">Update: <fmt:formatDate value="${plosdocList[0].updtDe }" pattern="yyyy.MM.dd" /></p>
            </c:if>
        </div>
    </div>

</body>