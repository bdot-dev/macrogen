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
					<strong>등록일</strong>
					<vue-datepicker v-model="listVo.searchBeginDt" buttonimage="/images/calendar.png"
						id="searchBeginDt" name="searchBeginDt"></vue-datepicker> -
					<vue-datepicker v-model="listVo.searchEndDt" buttonimage="/images/calendar.png"
						id="searchEndDt" name="searchEndDt"></vue-datepicker>
				</div>
				<div class="list_wrap">
					<strong>검색어</strong>
					<select v-model="listVo.searchCondition" id="searchCondition" name="searchCondition" style="width:150px;" class="mr5">
						<option value="">전체</option>
						<option :value="'NMBR_WRTER_NM'">이름</option>
						<option :value="'FIELD'">문의분야</option>
						<option :value="'NATION_CODE'">국가</option>
					</select>
					<input type="text" name="searchKeyword" id="searchKeyword" class="mr5" style="width:400px;"
					 maxlength="50"  v-model="listVo.searchKeyword" v-on:keydown.enter="onSearch"/>
				</div>
				<div class="list_wrap">
					<div class="tar">
						<button type="button" class="btn point btnSearch" v-on:click="onSearch">검색</button>
					</div>
				</div>
			</fieldset>
		</div>	
		<!-- //검색조건 영역 -->
		
		<div class="result_wrap">
			<p><span>전체</span> <em>{{ paginationInfo.totalRecordCount }}</em></p>
			<div class="flr">
				<button type="button" class="btn" v-on:click="onDeleteChecked">선택목록삭제</button>
			</div>
		</div>
		
		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="50px" />
					<col width="100px" />
					<col width="150px" />
					<col width="300px" />
					<col width="100px" />
					<col width="150px" />
					<col width="100px" />
				</colgroup>
				<thead>
				<tr>
					<th><input type="checkbox" v-on:click="checkAll"></th>
					<th>NO</th>
					<th>이름</th>
					<th>제목</th>
					<th>문의분야</th>
					<th>국가</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody v-if="resultList.length > 0">
				<tr v-for="(result, index) in resultList">
					<td>
						<input type="checkbox" v-model="checkedPkList"
							name="pkList" :id="'pkList_' + index"
							:value="result.contactSn">
					</td>
					<td>{{ paginationInfo.totalRecordCount + 1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + (index + 1)) }}</td>
					<td>{{ result.nmbrWriterNm }}</td>
					<td class="tal"><a v-on:click="onViewLink(result.contactSn)"
							href="javascript:;">{{ result.contactSj }}</td>
					<td>{{ result.field }}</td>
					<td>{{ result.nationCodeNm${lang} }}</td>
					<td>{{ result.registDt | timeToDate('YYYY-MM-DD HH:mm') }}</td>
				</tr>
			</tbody>
			<tbody v-if="resultList.length == 0">
				<tr>
					<td nowrap colspan="7" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
				</tr>
			</tbody>		
			</table>	
			
			<div class="pagination_wrap">
				<div class="pagination">
					<vue-pagination :pagination="paginationInfo"
						v-on:page-move="pageMove"></vue-pagination>
				</div>
			</div>
			
		</div>
	</div>	
	
</form>
<script src="/js/vueComponent/vue-pagination.js"></script>
<script src="/js/app/ContactList.js"></script>
<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 10,
			searchKeyword : '${ listVo.searchKeyword }',
			searchCondition : '${ listVo.searchCondition }',
			<c:if test="${!empty listVo.searchBeginDt}">
				searchBeginDt : '<fmt:formatDate value="${listVo.searchBeginDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			<c:if test="${!empty listVo.searchEndDt}">
				searchEndDt: '<fmt:formatDate value="${listVo.searchEndDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
		}
		var options = { listVo: listVo };
		options.lang = '${langId}';
		options.Lang = '${lang}';
		ContactList.init(options);
	});
	
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	
</script>
</body>
