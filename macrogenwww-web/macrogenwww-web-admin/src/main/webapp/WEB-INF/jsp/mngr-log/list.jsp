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
					<col width="100px">
					<col width="150px">
					<col width="200px">
					<col width="50px">
					<col width="50px">
					<col width="80px">
					<col width="120px">
				</colgroup>
				<thead>
					<tr>
						<th>NO.</th>
						<th>아이디</th>
						<th>권한 변경</th>
						<th>변경 사항</th>
						<th>비밀번호 입력 오류 회수 초기화</th>
						<th>비밀번호 초기화</th>
						<th>상태</th>
						<th>접속일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList" >
						<td>{{paginationInfo.totalRecordCount + 1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + (index + 1)) }}</td>
						<td>{{result.userId }}</td>
						<td>{{result.roleNm }}</td>
						<td>{{result.changeInfo }}</td>
						<td>{{result.pwdFailCleanYn }}</td>
						<td>{{result.pwdCleanYn }}</td>
						<td>{{result.result }}</td>
						<td>{{result.registDt | timeToDate('YYYY-MM-DD HH:mm:ss')}}</td>
					</tr>
					</tbody>
				<tbody v-if="resultList.length == 0">
					<tr >
						<td nowrap colspan="8" style="padding:80px 0px;text-align:center;">로그 기록이 없습니다.</td>
					</tr>
				</tbody>
			</table>
			
			<!-- <div class="btn_wrap tar">
				<button type="button" class="btn" v-on:click="onExcel" >엑셀다운로드</button>
			</div> -->
			
			<div class="pagination_wrap">
				<div class="pagination">
						<vue-pagination :pagination="paginationInfo"
							v-on:page-move="pageMove"></vue-pagination>
					</div>
			</div>
		</div>
	</div>
	<!-- //내용 -->

	</form>
	<script type="text/javascript" src="/js/vueComponent/vue-pagination.js" ></script>
	<script type="text/javascript" src="/js/app/MngrLogList.js" ></script>
	<script type="text/javascript">
	$(function (){
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : ${ listVo.recordCountPerPage },
			searchKeyword : '${ listVo.searchKeyword }',
			searchUseYn : '${ listVo.searchUseYn }',
			searchCondition : '${ empty listVo.searchCondition ? "ID" : listVo.searchCondition }',
		}
		var options = {
			listVo: listVo,
		};
		mngrLogList.init(options);
	});
	function vueUpdated(vm) {
	}
	</script>
</body>
