<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<form id="listForm" name="listForm">

	<!-- 내용// -->
	<div class="page_wrap vuelayer" v-cloak>
		<!-- form 위치에 주의 vuelayer 안쪽-->
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

		<!-- 검색조건 영역// -->
		<div class="search_wrap">
			<fieldset>
				<div class="list_wrap">
					<strong>관리자 권한</strong>
					<select name="roleId" v-model="listVo.roleId" >
						<option :value="''">전체</option>
						<option v-for="result in roleList" :value="result.roleId" >{{ result.roleNm }}</option>
					</select>
				</div>
				<div class="list_wrap">
					<strong>검색</strong>
					<select name="searchCondition" v-model="listVo.searchCondition" >
						<option value="login_id">ID</option>
						<option value="user_nm">이름</option>
					</select>

					<input type="text" name="searchKeyword" class="mr5" style="width:200px;"
						v-model="listVo.searchKeyword" v-on:keyup.enter="onSearch" />
				</div>
				<div class="list_wrap">
					<div class="tar">
						<button type="button" class="btn point btnSearch"
							v-on:click="onSearch">검색</button>
					</div>
				</div>
			</fieldset>
		</div>
		<!-- //검색조건 영역 -->

		<div class="result_wrap">
			<p><span>검색</span> <em>{{ paginationInfo.totalRecordCount }}</em></p>
			<div class="flr">
				<select name="recordCountPerPage"
					v-model="listVo.recordCountPerPage" v-on:change="onRecordCountPerPage">
					<option v-for="result in recordCountPerPageList" :value="result.code">
						{{ result.codeNm }}
					</option>
				</select>
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="60px">
					<col width="150px">
					<col width="">
					<col width="">
					<col width="150px">
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<th>NO</th>
						<th>권한</th>
						<th>이름</th>
						<th>아이디</th>
						<th>로그인수</th>
						<th>마지막로그인</th>
						<th>등록일</th>
						<th>정보수정일 </th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList" >
						<td>{{paginationInfo.totalRecordCount + 1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + (index + 1)) }}</td>
						<td>{{result.roleNm }}</td>
						<td>{{result.userNm }}</td>
						<td v-on:click="onView(result.userSn)" style="cursor:pointer;">{{result.loginId}}</td>
						<td>{{result.loginCo | numberWithCommas}}</td>
						<td>{{result.lastLoginDt | timeToDate('YYYY-MM-DD HH:mm:ss')}}</td>
						<td>{{result.registDt | timeToDate('YYYY-MM-DD HH:mm:ss')}}</td>
						<td>{{result.updtDt | timeToDate('YYYY-MM-DD HH:mm:ss')}}</td>
					</tr>
				</tbody>
				<tbody v-if="resultList.length == 0">
					<tr >
						<td nowrap colspan="8" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
					</tr>
				</tbody>
			</table>

			<div class="pagination_wrap" >
				<div class="pagination">
					<vue-pagination
						:pagination="paginationInfo"
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

	<script src="/js/vueComponent/vue-pagination.js"></script>
	<script src="/js/app/MngrList.js" ></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : ${ listVo.recordCountPerPage },
			searchKeyword : '${ listVo.searchKeyword }',
			searchCondition : '${ empty listVo.searchCondition ? "login_id" : listVo.searchCondition }',
			roleId : '${ listVo.roleId }',
		};
		var options = { listVo: listVo };
		MngrList.init(options);
	});

	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>
