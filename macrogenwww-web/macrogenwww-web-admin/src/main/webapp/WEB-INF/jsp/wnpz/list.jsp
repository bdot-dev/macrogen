<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<form id="listForm" name="listForm">

	<div class="page_wrap vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

		<!-- 검색조건 영역// -->
		<div class="search_wrap">
			<fieldset>
				<div class="list_wrap">
					<span v-for="(result, index) in wnpzClCodeList">
						<input type="checkbox" v-model="listVo.searchWnpzClCodeList" :value="result.code"
							name="searchWnpzClCodeList" :id="'wnpzClCode' + index">
							<label :for="'wnpzClCode' + index">{{ result.codeNm${lang} }}</label>
					</span>
				</div>
				<div class="list_wrap">
					<select v-model="listVo.searchWnpzTmeCode" name="searchWnpzTmeCode" style="width:200px;">
						<option :value="null">전체 회차</option>
						<option v-for="(result, index) in wnpzTmeCodeList"
							:value="result.code" v-text="result.codeNm${lang }"/>
					</select>
					<input type="text" name="searchKeyword" id="searchKeyword" class="mr5" style="width:200px;"
						maxlength="50" v-model="listVo.searchKeyword" v-on:keydown.enter="onSearch" />
					<input type="text" style="display: none;">
				</div>
				<div class="list_wrap">
					<div class="tar">
						<button type="button" class="btn point" v-on:click="onSearch">검색</button>
					</div>
				</div>
			</fieldset>
		</div>

		<div class="result_wrap">
			<span>검색결과</span> <em>{{ paginationInfo.totalRecordCount }}</em>
			<div class="flr">
				<button type="button" class="btn" v-on:click="onDeleteChecked">선택목록삭제</button>
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="80px" />
					<col width="150px" />
					<col width="120px" />
					<col width="">
					<col width="120px">
					<col width="120px">
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" v-on:click="checkAll"></th>
						<th>분류</th>
						<th>수상회차</th>
						<th>수상자명</th>
						<th>등록자</th>
						<th>최종수정일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList">
						<td>
							<input type="checkbox" v-model="checkedPkList"
								name="pkList" :id="'pkList_' + index"
								:value="result.wnpzSn">
						</td>
						<td>{{ result.wnpzClCodeNm${lang} }}</td>
						<td>{{ result.wnpzTmeCodeNm${lang} }}</td>
						<td class="tal"><a v-on:click="onViewLink(result.wnpzSn)"
							href="javascript:;">{{ result.wnpzNm }}</a></td>
						<td>{{ result.updusrNm }}</td>
						<td>{{ result.updtDt | timeToDate('YYYY-MM-DD HH:mm') }}</td>
					</tr>
				</tbody>
				<tbody v-if="resultList.length == 0">
					<tr>
						<td nowrap colspan="6" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
					</tr>
				</tbody>
			</table>

			<div class="pagination_wrap">
				<div class="pagination">
					<vue-pagination :pagination="paginationInfo"
						v-on:page-move="pageMove"></vue-pagination>
				</div>
			</div>

			<div class="btn_wrap tar">
				<button type="button" class="btn btnAdd" v-on:click="onAdd">등록</button>
			</div>
		</div>

	</div>

	</form>


	<script src="/js/vueComponent/vue-pagination.js"></script>
	<script src="/js/app/WnpzList.js"></script>
	<script>
	$(function () {
		var searchWnpzClCodeList = [];
		<c:forEach var="result" items="${listVo.searchWnpzClCodeList }">
			searchWnpzClCodeList.push('${result }')
		</c:forEach>

		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 10,
			searchWnpzClCodeList: searchWnpzClCodeList,
			searchWnpzTmeCode: ${ empty listVo.searchWnpzTmeCode ? 'null' : "'".concat(listVo.searchWnpzTmeCode).concat("'") },
			searchKeyword : '${ listVo.searchKeyword }',
		}
		var options = { listVo: listVo };
		options.lang = '${langId}';
		options.Lang = '${lang}';
		WnpzList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>
