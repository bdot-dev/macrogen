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
					<strong>검색</strong>
					<select name="searchCondition" style="width:100px;"  v-model="listVo.searchCondition">
						<option v-for="option in conList" v-bind:value="option.code">
							{{ option.codeNm }}
						</option>
					</select>
					
					<input type="text" name="searchKeyword" id="searchKeyword" class="mr5" style="width:500px;"
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
		<!-- //검색조건 영역 -->

		<div class="result_wrap">
			<p><span>검색</span> <em>{{ paginationInfo.totalRecordCount }}</em></p>
			<div class="flr">
				<!-- <button type="button" class="btn" v-on:click="onDeleteChecked">선택목록삭제</button> -->
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="50px">
					<col width="150px">
					<col width="150px">
					<col width="100px">
					<col width="100px">
					<col width="120px">
					<col width="120px">
				</colgroup>
				<thead>
					<tr>
						<th>NO.</th>
						<th>아이피</th>
						<th>접속지</th>
						<th>사용여부</th>
						<th>등록자</th>
						<th>최종수정일</th>
						<th>게시일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList" >
						<td>{{paginationInfo.totalRecordCount + 1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + (index + 1)) }}</td>
						<td class="tal"><a v-on:click="onClickView(result.col)"
							href="javascript:;">{{result.ip }}</a></td>
						<td>{{result.title }}</td>
						<td v-if="result.useYn == 'Y'">사용</td>
						<td v-else-if="result.useYn == 'N'">미사용</td>
						<td>{{result.registerNm }}</td>
						<td>{{result.updtDt | timeToDate('YYYY-MM-DD HH:mm')}}</td>
						<td>{{result.registDt | timeToDate('YYYY-MM-DD HH:mm')}}</td>
					</tr>
					</tbody>
				<tbody v-if="resultList.length == 0">
					<tr >
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

			<div class="btn_wrap tar">
				<button type="button" class="btn btnAdd" v-on:click="onAdd">등록</button>
			</div>
		</div>
	</div>
	<!-- //내용 -->

	</form>
	<script type="text/javascript" src="/js/vueComponent/vue-pagination.js" ></script>
	<script type="text/javascript" src="/js/app/IpList.js" ></script>
	<script type="text/javascript">
	$(function (){
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : ${ listVo.recordCountPerPage },
			searchKeyword : '${ listVo.searchKeyword }',
			searchUseYn : '${ listVo.searchUseYn }',
			searchCondition : '${ empty listVo.searchCondition ? "TITLE" : listVo.searchCondition }',
		}
		var options = {
			listVo: listVo,
		};
		ipList.init(options);
	});
	function vueUpdated(vm) {
	}
	</script>
</body>
