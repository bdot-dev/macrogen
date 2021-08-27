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
					<strong>최종수정일</strong>
					<vue-datepicker v-model="listVo.searchBeginDt" buttonimage="/images/calendar.png"
						id="searchBeginDt" name="searchBeginDt"></vue-datepicker> -
					<vue-datepicker v-model="listVo.searchEndDt" buttonimage="/images/calendar.png"
						id="searchEndDt" name="searchEndDt"></vue-datepicker>
					<select v-model="listVo.searchCtgryCode" style="width:200px;">
						<option :value="null">전체 카테고리</option>
						<option v-for="(result, index) in ctgryCodeList"
							:value="result.code" v-text="result.codeNm${lang }"/>
					</select>
					<select v-model="listVo.searchNationCode" style="width:200px;">
						<option :value="null">전체 국가</option>
						<option v-for="(result, index) in nationCodeList"
							:value="result.code" v-text="result.codeNm${lang }"/>
					</select>
				</div>
				<div class="list_wrap">
					<strong>검색</strong>
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
					<col width="180px" />
					<col width="">
					<col width="120px" />
					<col width="120px">
					<col width="120px">
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" v-on:click="checkAll"></th>
						<th>카테고리</th>
						<th>내용</th>
						<th>등록국가</th>
						<th>등록자</th>
						<th>최종수정일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList">
						<td>
							<input type="checkbox" v-model="checkedPkList"
								name="pkList" :id="'pkList_' + index"
								:value="result.patentSn">
						</td>
						<td>{{ result.ctgryCodeNm${lang} }}</td>
						<td class="tal"><a v-on:click="onViewLink(result.patentSn)"
							href="javascript:;">{{ result.patentCn }}</a></td>
						<td>{{ result.nationCodeNm${lang} }}</td>
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
	<script src="/js/app/PatentList.js"></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 10,
			<c:if test="${!empty listVo.searchBeginDt}">
				searchBeginDt : '<fmt:formatDate value="${listVo.searchBeginDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			<c:if test="${!empty listVo.searchEndDt}">
				searchEndDt: '<fmt:formatDate value="${listVo.searchEndDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			searchCtgryCode: ${ empty listVo.searchCtgryCode ? 'null' : listVo.searchCtgryCode },
			searchNationCode: ${ empty listVo.searchNationCode ? 'null' : listVo.searchNationCode },
			searchKeyword : '${ listVo.searchKeyword }',
		}
		var options = { listVo: listVo };
		options.lang = '${langId}';
		options.Lang = '${lang}';
		PatentList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>
