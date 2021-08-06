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
		<li><a href="/fnltt/list" class="current">연결재무상태표</a></li>
		<li><a href="/fnltt/plosdoc/list">연결포괄손익계산서</a></li>
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
                <div>[자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;산]</div>
                <div>유동자산</div>
                <div>비유동자산</div>
                <div class="bg_gray">자산 총계</div>
                <div>[부&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;채]</div>
                <div>유동부채</div>
                <div>비유동부채</div>
                <div class="bg_gray">부채 총계</div>
                <div>[자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;본]</div>
                <div class="bg_gray type1">지배기업의 소유주지분</div>
                <div>자본금</div>
                <div>주식발행초과금</div>
                <div>기타포괄손익누계액</div>
                <div>기타자본항목</div>
                <div>이익잉여금</div>
                <div>비지배지분</div>
                <div class="bg_gray">자본 총계</div>
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
                    <div></div>
                    <div><input type="number"v-model.number="result.curAssets"
							ref="curAssets" maxlength="15">{{ result.curAssets | numberWithCommas }}</div>
                    <div><input type="number" v-model.number="result.noncurAssets"
							ref="noncurAssets" maxlength="15">{{ result.noncurAssets | numberWithCommas }}</div>
                    <div class="bg_gray">{{ totalAssets(result) | numberWithCommas }}</div>
                    <div></div>
                    <div><input type="number" v-model.number="result.curLiabil"
							ref="curLiabil" maxlength="15">{{ result.curLiabil | numberWithCommas }}</div>
                    <div><input type="number" v-model.number="result.noncurLiabil"
							ref="noncurLiabil" maxlength="15">{{ result.noncurLiabil | numberWithCommas }}</div>
                    <div class="bg_gray">{{ totalLiabil(result) | numberWithCommas }}</div>
                    <div></div>
                    <div class="bg_gray type1">{{ ownersOfParentEquity(result) | numberWithCommas }}</div>
                    <div><input type="number" v-model.number="result.capl"
							ref="capl" maxlength="15">{{ result.capl | numberWithCommas }}</div>
                    <div><input type="number" v-model.number="result.capitalSurplus"
							ref="capitalSurplus" maxlength="15">{{ result.capitalSurplus | numberWithCommas }}</div>
                    <div><input type="number" v-model.number="result.accOtherCompIncome"
							ref="accOtherCompIncome" maxlength="15">{{ result.accOtherCompIncome | numberWithCommas }}</div>
                    <div><input type="number" v-model.number="result.otherCompOfEquity"
							ref="otherCompOfEquity" maxlength="15">{{ result.otherCompOfEquity | numberWithCommas }}</div>
                    <div><input type="number" v-model.number="result.retainedEarnings"
							ref="retainedEarnings" maxlength="15">{{ result.retainedEarnings | numberWithCommas }}</div>
                    <div><input type="number" v-model.number="result.noncontrInterest"
							ref="noncontrInterest" maxlength="15">{{ result.noncontrInterest | numberWithCommas }}</div>
                    <div class="bg_gray">{{ totalEquity(result) | numberWithCommas }}</div>
                </div>
            </div>
        </div>

	</div>

	</form>

	<script src="/js/app/FnlttList.js"></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 10,
		}
		var options = { listVo: listVo };
		FnlttList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>
