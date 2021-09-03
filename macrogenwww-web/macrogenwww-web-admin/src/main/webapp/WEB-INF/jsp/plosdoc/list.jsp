<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
    <!-- 연결재무상태표컨테츠영역 CSS -->
    <style>
        .table_list_wrap {position: relative; width:100%;}
        .table_list_wrap .table_head {position:absolute; left:0; top:0; width:230px; z-index:2;}
        .table_list {position: relative; z-index:1; width:100%; padding-left:230px; display: -webkit-box; display: -moz-box; display: -webkit-flex; display: -ms-flexbox; display: flex; overflow-x:auto;}
        .table_list_wrap .table_col {width:289px; font-size:0;}
        .table_list_wrap .table_col>div {display:inline-block; width:289px; height:80px; line-height:34px; padding:10px 15px; vertical-align: middle; text-align:right; border-width:0 1px 1px 0; border-style:solid; border-color:#c4c4c4; background:#fff; font-size:18px; color: #454545; overflow:hidden;}
        .table_list_wrap .table_col .bg_gray {border-color:#D9D9D9; background-color:#E9E9E9; font-weight:500;}
        .table_list_wrap .table_col .bg_gray+div {border-top-color:#d9d9d9;}
        .table_list_wrap .table_col .bg_gray.type1 {font-weight:400;}
        .table_list_wrap .table_col .year {height:115px; line-height:inherit; border-top:1px solid #d9d9d9; border-color: #d9d9d9;  background-color:#E9E9E9;}
        .table_list_wrap .table_col.table_head {width:230px;}
        .table_list_wrap .table_col.table_head>div {width:230px; text-align: left; padding-left:30px; border-width:0 1px 1px 1px;}
        .table_list_wrap .table_col.table_head .year {padding-top:45px; border-top:1px solid #d9d9d9;}
        .table_list_wrap .table_col.table_head .bg_gray.type1 {font-size:16px;}
    </style>
</head>
<body>

	<ul class="tab" style="margin: 30px;">
		<li><a href="/fnltt/list">연결재무상태표</a></li>
		<li><a href="/fnltt/plosdoc/list" class="current">연결포괄손익계산서</a></li>
	</ul>

	<form id="listForm" name="listForm">

	<div class="page_wrap vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

		<div class="search_wrap">
			<fieldset>
				<div class="list_wrap">
					<strong>업데이트 날짜</strong>
					<vue-datepicker v-model="listUpdtDe" buttonimage="/images/calendar.png"
						ref="listUpdtDe" id="listUpdtDe" name="listUpdtDe"></vue-datepicker>
				</div>
				<div class="list_wrap">
					<div class="tar">
						<button type="button" class="btn point" v-on:click="onAdd">신규등록</button>
						<button type="button" class="btn" v-on:click="onSave">저장</button>
					</div>
				</div>
			</fieldset>
		</div>

		<div class="result_wrap">
			<span>단위 : 천원</span> <em>* 각 항목의 금액은 천원 단위로 입력하시기 바랍니다.</em>
		</div>

        <!-- 연결재무상태표컨테츠영역 -->
        <div class="table_list_wrap">
            <div class="table_col table_head">
                <div class="year">과목</div>

                <div class="bg_gray type1">매출액</div>
                <div>매출원가</div>
                <div class="bg_gray">매출총이익</div>
                <div>판매비와 관리비</div>
                <div class="bg_gray">영업이익</div>
                <div>기타수익</div>
                <div>기타비용</div>
                <div class="bg_gray type1">법인세비용차감전순이익</div>
                <div>법인세비용</div>
                <div>중단영업이익</div>
                <div class="bg_gray">당기순이익</div>
                <div>기타포괄손익</div>
                <div class="bg_gray">총포괄손익</div>
            </div>


            <div class="table_list">
                <!-- 시작 :신규등록영역 -->
                <div class="table_col" v-for="(result, index) in resultList">
                    <div class="year tac">
                        <input type="text" placeholder="기수(국문)"
                        	v-model="result.iemOdrKo" ref="iemOdrKo" maxlength="50">
                        <input type="text" placeholder="기수(영문)"
                        	 v-model="result.iemOdrEn" ref="iemOdrEn" maxlength="50">
                        <!-- <input type="text" value="2021.12.31"> -->
                        <vue-datepicker v-model="result.iemDe" buttonimage="/images/calendar.png"
							ref="iemDe" maxlength="10" style="width:80%"></vue-datepicker>
                    </div>

	                <div class="bg_gray type1"><input type="number" v-model.number="result.sales"
							ref="sales" maxlength="15">{{ result.sales | numberWithCommas }}</div>
	                <div><input type="number" v-model.number="result.costSales"
							ref="costSales" maxlength="15">{{ result.costSales | numberWithCommas }}</div>
	                <div class="bg_gray">{{ grossProfit(result) | numberWithCommas }}</div>

	                <div><input type="number" v-model.number="result.sellAdminExpenses"
							ref="sellAdminExpenses" maxlength="15">{{ result.sellAdminExpenses | numberWithCommas }}</div>
	                <div class="bg_gray">{{ operatingIncome(result) | numberWithCommas }}</div>

	                <div><input type="number" v-model.number="result.etcErn"
							ref="etcErn" maxlength="15">{{ result.etcErn | numberWithCommas }}</div>
	                <div><input type="number" v-model.number="result.etcCt"
							ref="etcCt" maxlength="15">{{ result.etcCt | numberWithCommas }}</div>

	                <%-- <div class="bg_gray type1"><input type="number" v-model.number="result.incomeLossBefIncometax"
							ref="incomeLossBefIncometax" maxlength="15">{{ result.incomeLossBefIncometax | numberWithCommas }}</div> --%>
	                <div class="bg_gray type1">{{ incomeLossBefIncometax(result) | numberWithCommas }}</div>
	                <div><input type="number" v-model.number="result.incometaxExpenses"
							ref="incometaxExpenses" maxlength="15">{{ result.incometaxExpenses | numberWithCommas }}</div>
	                <div><input type="number" v-model.number="result.discontOperIncome"
							ref="discontOperIncome" maxlength="15">{{ result.discontOperIncome | numberWithCommas }}</div>
	                <div class="bg_gray">{{ netIncome(result) | numberWithCommas }}</div>

	                <div><input type="number" v-model.number="result.otherCompIncome"
							ref="otherCompIncome" maxlength="15">{{ result.otherCompIncome | numberWithCommas }}</div>
	                <div class="bg_gray">{{ totalComprehensiveIncome(result) | numberWithCommas }}</div>

                </div>
            </div>
        </div>

	</div>

	</form>

	<script src="/js/app/PlosdocList.js"></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 10,
		}
		var options = { listVo: listVo };
		PlosdocList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>