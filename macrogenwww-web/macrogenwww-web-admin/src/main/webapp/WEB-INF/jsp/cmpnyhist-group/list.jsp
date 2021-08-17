<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<c:import url="/WEB-INF/jsp/inc/cmpnyhistTab.jsp">
		<c:param name="current" value="group"/>
	</c:import>

	<form id="listForm" name="listForm">

	<div class="page_wrap vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="120px" />
					<col width="120px" />
					<col width="">
					<col width="120px">
					<col width="120px">
				</colgroup>
				<thead>
					<tr>
						<th>시작연도</th>
						<th>종료연도</th>
						<th>그룹명</th>
						<th>등록자</th>
						<th>최종수정일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList">
						<td>{{ result.beginYear }}</td>
						<td>{{ result.endYear == 'present' ? '현재' : result.endYear }}</td>
						<td class="tal"><a v-on:click="onViewLink(result.cmpnyhistGroupSn)"
							href="javascript:;">{{ result.groupnmKo }} ({{ result.groupnmEn }})</a></td>
						<td>{{ result.updusrNm }}</td>
						<td>{{ result.updtDt | timeToDate('YYYY-MM-DD HH:mm') }}</td>
					</tr>
				</tbody>
				<tbody v-if="resultList.length == 0">
					<tr>
						<td nowrap colspan="5" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
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
	<script src="/js/app/CmpnyhistGroupList.js"></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 100,
		}
		var options = { listVo: listVo };
		options.lang = '${langId}';
		options.Lang = '${lang}';
		CmpnyhistGroupList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>
