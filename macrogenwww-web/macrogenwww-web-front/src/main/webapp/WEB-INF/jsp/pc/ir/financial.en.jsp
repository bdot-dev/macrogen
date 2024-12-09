<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="container">
        <!-- <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">IR</li>
		        <li class="breadcrumb-item active">Financial Information</li>
		    </ol>
		</nav> -->

        <div class="section_IR">
            <h2 class="font-h1 ir-diff">Financial Information</h2>
            <div class="financial_box">
                <div class="subtitle">
                    <span class="font-h7">Consolidated Statement of Financial Position</span>
                    <span class="text-unit">Unit: Thousand KRW</span>
                </div>

                <table class="table table-rotate">
                    <tbody>
                        <tr>
                            <th></th>
                            <td>Current Assets</td>
                            <td>Non-Current Assets</td>
                            <td class="table-bg">Total Assets</td>
                            <td>Current Liabilities</td>
                            <td>Non-Current Liabilities</td>
                            <td class="table-bg">Total Liabilities</td>
                            <td class="font-medium">Owners of Parent Equity</td>
                            <td>Capital Stock</td>
                            <td>Capital Surplus</td>
                            <td>Accumulated Other Comprehensive Income</td>
                            <td>Other Components of Equity</td>
                            <td>Retained Earnings</td>
                            <td class="font-medium">Non-Controlling Interest</td>
                            <td class="table-bg">Total Equity</td>
                        </tr><c:forEach var="result" items="${fnlttList }" varStatus="status"
                        	><c:set var="totalAssets" value="${result.curAssets + result.noncurAssets }"
                        	/><c:set var="totalLiabil" value="${result.curLiabil + result.noncurLiabil }"
                        	/><c:set var="totalEquity" value="${totalAssets - totalLiabil }"
                        	/><c:set var="ownersOfParentEquity" value="${totalEquity - result.noncontrInterest }"
                        	/><tr>
	                            <th>${result.iemOdrEn }<span class="additional">&#40;<fmt:formatDate value="${result.iemDe }" pattern="yyyy.MM.dd" />&#41;</span></th>
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
	                        </tr></c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="financial_box">
                <div class="subtitle">
                    <span class="font-h7">Consolidated Statement of Comprehensive Income</span>
                    <span class="text-unit">Unit: Thousand KRW</span>
                </div>
                <table class="table table-rotate">
                    <tbody>
                        <tr>
                            <th>Items</th>
                            <td class="table-bg">Sales</td>
                            <td>Cost of Sales</td>
                            <td class="table-bg">Gross Profit</td>
                            <td>Selling and Administrative Expenses</td>
                            <td class="table-bg">Operating Income</td>
                            <td>Other income</td>
                            <td>Other expenses</td>
                            <td class="table-bg">Income and Loss before Income Taxes</td>
                            <td>Income Tax Expenses</td>
                            <td>Discontinued Operations Income</td>
                            <td class="table-bg">Net Income</td>
                            <td>Other Comprehensive Income</td>
                            <td class="table-bg">Total Comprehensive Income</td>
                        </tr><c:forEach var="result" items="${ plosdocList }" varStatus="status"
                        	><c:set var="grossProfit" value="${ result.sales - result.costSales }"
                        	/><c:set var="operatingIncome" value="${ grossProfit - result.sellAdminExpenses }"
                        	/><c:set var="incomeLossBefIncometax" value="${ operatingIncome  + result.etcErn - result.etcCt}"
                        	/><c:set var="netIncome" value="${ incomeLossBefIncometax - result.incometaxExpenses + result.discontOperIncome }"
                        	/><c:set var="totalComprehensiveIncome" value="${ netIncome + result.otherCompIncome }"
                        	/><tr>
	                            <th>${result.iemOdrEn }<span class="additional">&#40;<fmt:formatDate value="${result.iemDe }" pattern="yyyy.MM.dd" />&#41;</span></th>
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
	                        </tr></c:forEach>
                    </tbody>
                </table>
            </div>
            <c:if test="${fn:length(plosdocList) > 0 }">
	            <p class="update_text">Update&#58; <fmt:formatDate value="${plosdocList[0].updtDe }" pattern="yyyy&#46;MM&#46;dd" /></p>
            </c:if>
        </div>
    </div>

</body>