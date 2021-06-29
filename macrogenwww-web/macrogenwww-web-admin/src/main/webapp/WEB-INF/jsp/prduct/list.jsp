<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<form id="listForm" name="listForm">

	<!-- 내용// -->
	<div class="page_wrap vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

		<!-- 검색조건 영역// -->
		<div class="search_wrap">
			<fieldset>
				<div class="list_wrap">
					<strong>유형</strong>
					<select v-model="listVo.prductKndCode" name="prductKndCode">
						<option :value="''" >전체</option>
						<option v-for="result in prductKndList" :value="result.code">{{result.codeNm}}</option>
					</select>
				</div>
				<div class="list_wrap">
					<strong>카테고리</strong>
					<select v-model="listVo.searchPrductctgrySn">
						<option :value="null">전체</option>
						<option v-for="(result, index) in prductctgryList"
							v-if="result.level < 3" :value="result.id" v-text="result.ctgryNmPath">
					</select>
				</div>
				<div class="list_wrap">
					<strong>노출 여부</strong>
					<label>
						<input type="radio" name="expsrYns" :value="''"
							v-model="listVo.expsrYn" />전체</label>
					<label v-for="(result, index) in expsrYnList">
						<input type="radio" name="expsrYns" id="'expsrYns'+index" :value="result.code"
							v-model="listVo.expsrYn" />{{result.codeNm}}</label>
				</div>
				<div class="list_wrap">
					<strong>검색</strong>
					<input type="text" name="searchKeyword" class="mr5" style="width:200px;"
						v-model="listVo.searchKeyword" v-on:keyup.enter="onSearch" />
				</div>
				<div class="list_wrap">
					<div class="tar">
						<button type="button" class="btn point" v-on:click="onSearch">검색</button>
					</div>
				</div>
			</fieldset>
		</div>
		<!-- //검색조건 영역 -->

		<div class="result_wrap">
			<p><span>검색</span> <em>{{ paginationInfo.totalRecordCount }}</em></p>
			<div class="flr">
				<select name="recordCountPerPage" v-model="listVo.recordCountPerPage" v-on:change="onRecordCountPerPage">
					<option v-for="option in recordCountPerPageList" :value="option.code">
						{{ option.codeNm }}
					</option>
				</select>
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="60px" />
					<col width="100px" />
					<col width="150px"/>
					<col width="">
					<col width="70px">
					<col width="70px">
					<col width="100px">
				</colgroup>
				<thead>
					<tr>
						<th>NO</th>
						<th>제품유형</th>
						<th>대표카테고리</th>
						<th>제품명(제품코드)</th>
						<th>정렬순서</th>
						<th>노출여부</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList" >
						<td>{{paginationInfo.totalRecordCount + 1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + (index + 1)) }}</td>
						<td>{{result.prductKndCodeNm }}</td>
						<td>{{result.reprsntCtgryNmPath }}</td>
						<td v-on:click="onViewLink(result.prductSn)" style="cursor:pointer;">{{result.prductNm}}({{result.prductSn}})</td>
						<td><input type="number" v-model.number="result.sortOrdr" style="width:40px;" maxlength="4" /> </td>
						<td v-on:click="onDisplay(result)">{{result.expsrYn }}</td>
						<td>{{result.registDt | timeToDate('YYYY-MM-DD')}}</td>
					</tr>
				</tbody>
				<tbody v-if="resultList.length == 0">
					<tr >
						<td nowrap colspan="7" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
					</tr>
				</tbody>
			</table>

			<div class="pagination_wrap" >
				<div class="pagination">
					<vue-pagination :pagination="paginationInfo"
						v-on:page-move="pageMove"></vue-pagination>
				</div>
			</div>

			<div class="btn_wrap tar">
				<button type="button" class="btn btnAdd" v-on:click="onSortSave">노출순서 저장</button>
				<button type="button" class="btn btnAdd" v-on:click="onAdd">등록</button>
			</div>
		</div>
	</div>
	<!-- //내용 -->

	</form>
	<script src="/js/vueComponent/vue-pagination.js"></script>
	<script src="/js/app/PrductList.js"></script>
	<script>
	$(function (){
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : ${ listVo.recordCountPerPage },
			searchKeyword : '${ listVo.searchKeyword }',
			prductKndCode : '${ listVo.prductKndCode }',
			expsrYn : '${ listVo.expsrYn }',
			searchPrductctgrySn : ${ empty listVo.searchPrductctgrySn ? 'null' : listVo.searchPrductctgrySn },
		}
		var options = { listVo: listVo };
		PrductList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>
