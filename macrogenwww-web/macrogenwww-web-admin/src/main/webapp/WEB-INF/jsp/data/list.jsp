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
					<strong>노출여부</strong>
					<label><input type="radio" name="searchExpsrYn" v-model="listVo.searchExpsrYn" :value="''">전체</label>
					<label v-for="result in expsrYnList"><input type="radio" name="searchExpsrYn" v-model="listVo.searchExpsrYn" :value="result.code" />{{result.codeNm}}</label>
				</div>
				<div class="list_wrap">
					<strong>검색어</strong>
					<select id="searchCondition" name="searchCondition" style="width:150px;" class="mr5" v-model="listVo.searchCondition">
						<option value="TITLE">제목</option>
						<option value="WRTER">작성자</option>
					</select>
					<input type="text" name="searchKeyword" id="searchKeyword" class="mr5" style="width:400px;" v-model="listVo.searchKeyword" v-on:keyup.enter="onSearch" />
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
			<p><span>검색</span> <em>{{ paginationInfo.totalRecordCount }}</em></p>
			<div class="flr">
				<select name="recordCountPerPage" v-model="listVo.recordCountPerPage" v-on:change="onRecordCountPerPage">
					<option v-for="option in recordCountPerPageList" v-bind:value="option.code">
						{{ option.codeNm }}
					</option>
				</select>

				<select name="orderBy" v-model="listVo.orderBy" v-on:change="onOrderBy">
					<option value="regist_dt_desc">등록일 ↓</option>
					<option value="regist_dt_asc">등록일 ↑</option>
				</select>
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="60px">
					<col width="">
					<col width="150">
					<col width="150px">
					<col width="150px">
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<th>NO</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
						<th>노출여부</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList" >
						<td>{{paginationInfo.totalRecordCount + 1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + (index + 1)) }}</td>
						<td v-on:click="onViewLink(result.nttSn)" style="cursor:pointer;">{{result.nttSj }}</td>
						<td>{{result.wrterNm }}</td>
						<td>{{result.registDt | timeToDate('YYYY-MM-DD')}}</td>
						<td>{{result.rdcnt }}</td>
						<td><span v-if="result.expsrYn == 'Y'">노출</span><span v-else>비노출</span></td>
					</tr>
					</tbody>
				<tbody v-if="resultList.length == 0">
					<tr >
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
	<!-- //내용 -->

	</form>
	<script type="text/javascript" src="/js/vueComponent/vue-pagination.js" ></script>
	<script type="text/javascript" src="/js/app/NttList.js" ></script>
	<script type="text/javascript">
	$(function (){
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : ${ listVo.recordCountPerPage },
			orderBy : '${ empty listVo.orderBy ? "regist_dt_desc" : listVo.orderBy }',
			searchCondition : '${ empty listVo.searchCondition ? "TITLE" : listVo.searchCondition }',
			searchKeyword : '${ listVo.searchKeyword }',
			searchExpsrYn : '${ listVo.searchExpsrYn }',
		}
		var options = {
			bbsId: '${bbsId}',
			listVo: listVo,
		};
		nttList.init(options);
	});
	function vueUpdated(vm) {
	}
	</script>
</body>
