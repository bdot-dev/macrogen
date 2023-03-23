<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<form id="listForm" name="listForm">
	<div class="page_wrap vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

		<div class="result_wrap">
			<span>검색결과</span> <em>{{ paginationInfo.totalRecordCount }}</em>
			<div class="flr">
				<%-- <button type="button" class="btn" v-on:click="onDeleteChecked">선택목록삭제</button> --%>
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="60px" />
					<col width="200px" />
					<col width="">
					<col width="120px" />
					<col width="120px" />
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<th>NO</th>
						<th>대표사진</th>
						<th>이름</th>
						<th>노출 여부</th>
						<th>노출 순서</th>
						<th>등록자</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList">
						<td>{{paginationInfo.totalRecordCount + 1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + (index + 1)) }}</td>
						<td><img :src="'${publicUrl }' + result.imageFlpthPc" style="width:100px; vertical-align: bottom;" /></td>
						<td class="tal"><a v-on:click="onViewLink(result.peopleSn)"
							href="javascript:;">{{ result.peopleNm }}</a></td>
						<td>{{ result.viewYn }}</td>
						<td><input type="number" v-model="result.sortOrdr" maxlength=3 name="sortOrdr" style="width:40%;" :id="'sortOrdr' + '\${index}'"/></td>
						<td>{{ result.registerNm }}</td>
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
				<button v-if="resultList && resultList.length > 0" type="button" class="btn btnAdd" v-on:click="onSaveSort">노출순서 저장</button>
				<button type="button" class="btn btnAdd" v-on:click="onAdd">등록</button>
			</div>
		</div>

	</div>

	</form>

	<script src="/js/vueComponent/vue-pagination.js"></script>
	<script src="/js/app/MainPeopleList.js"></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 10,
		}
		var options = { listVo: listVo };
		options.lang = '${langId}';
		options.Lang = '${lang}';
		MainPeopleList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>