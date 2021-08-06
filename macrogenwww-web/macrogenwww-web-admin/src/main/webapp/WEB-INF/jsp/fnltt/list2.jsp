<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
</head>
<body>
	<form id="listForm" name="listForm">

	<!-- <div class="page_wrap vuelayer" v-cloak> -->
	<div class="page_wrap vuelayer">
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

		<!-- 검색조건 영역// -->
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

		<!-- <div class="board_wrap mb20"> -->
		<div>
			<!-- <table class="table_col"> -->
			<table border="1">
				<tr>
					<td style="width:100px;"></td>
					<td style="width:100px;">자산</td>
					<td style="width:100px;">유동자산</td>
					<td style="width:100px;">비유동자산</td>
					<td style="width:100px;">자산 총계</td>
					<td style="width:100px;">부채</td>
					<td style="width:100px;">유동부채</td>
					<td style="width:100px;">비유동부채</td>
					<td style="width:100px;">부채 총계</td>
					<td style="width:100px;">자본</td>
					<td style="width:100px;">지배기업의 소유주지분</td>
					<td style="width:100px;">자본금</td>
					<td style="width:100px;">주식발행초과금</td>
					<td style="width:100px;">기타포괄손익누계액</td>
					<td style="width:100px;">기타자본항목</td>
					<td style="width:100px;">이익잉여금</td>
					<td style="width:100px;">비지배지분</td>
					<td style="width:100px;">자본 총계</td>
				</tr>
				<tr v-for="(result, index) in resultList">
					<td>
						<input type="text" v-model="result.iemOdrKo"
							ref="iemOdrKo" maxlength="50" style="width:100%"><br>
						<input type="text" v-model="result.iemOdrEn"
							ref="iemOdrEn" maxlength="50" style="width:100%"><br>
						<vue-datepicker v-model="result.updtDe" buttonimage="/images/calendar.png"
							ref="updtDe" id="updtDe" name="updtDe" maxlength="10" style="width:100%"></vue-datepicker>
					</td>
					<td>자산</td>
					<td><input type="text" v-model="result.curAssets" v-on:keyup="formatNumber(index, 'curAssets')"
							ref="curAssets" maxlength="15" style="width:100%"><br></td>
					<td><input type="text" v-model="result.noncurAssets" v-on:keyup="formatNumber(index, 'noncurAssets')"
							ref="noncurAssets" maxlength="15" style="width:100%"><br></td>
					<td>{{ totalAssets(result) | numberWithCommas }}</td>
					<td>부채</td>

					<td><input type="text" v-model="result.curLiabil" v-on:keyup="formatNumber(index, 'curLiabil')"
							ref="curLiabil" maxlength="15" style="width:100%"></td>
					<td><input type="text" v-model="result.noncurLiabil" v-on:keyup="formatNumber(index, 'noncurLiabil')"
							ref="noncurLiabil" maxlength="15" style="width:100%"></td>
					<td>{{ totalLiabil(result) | numberWithCommas }}</td>
					<td>자본</td>
					<td>{{ ownersOfParentEquity(result) | numberWithCommas }}</td>
					<td><input type="text" v-model="result.capl" v-on:keyup="formatNumber(index, 'capl')"
							ref="capl" maxlength="15" style="width:100%"></td>
					<td><input type="text" v-model="result.capitalSurplus" v-on:keyup="formatNumber(index, 'capitalSurplus')"
							ref="capitalSurplus" maxlength="15" style="width:100%"></td>
					<td><input type="text" v-model="result.accOtherCompIncome" v-on:keyup="formatNumber(index, 'accOtherCompIncome')"
							ref="accOtherCompIncome" maxlength="15" style="width:100%"></td>
					<td><input type="text" v-model="result.otherCompOfEquity" v-on:keyup="formatNumber(index, 'otherCompOfEquity')"
							ref="otherCompOfEquity" maxlength="15" style="width:100%"></td>
					<td><input type="text" v-model="result.retainedEarnings" v-on:keyup="formatNumber(index, 'retainedEarnings')"
							ref="retainedEarnings" maxlength="15" style="width:100%"></td>
					<td><input type="text" v-model="result.noncontrInterest" v-on:keyup="formatNumber(index, 'noncontrInterest')"
							ref="noncontrInterest" maxlength="15" style="width:100%"></td>
					<td>{{ totalEquity(result) | numberWithCommas }}</td>
				</tr>
			</table>

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
