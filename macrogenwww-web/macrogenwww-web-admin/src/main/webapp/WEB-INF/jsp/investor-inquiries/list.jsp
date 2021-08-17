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
					<strong>등록일</strong>
					<vue-datepicker v-model="listVo.searchBeginDt" buttonimage="/images/calendar.png"
						id="searchBeginDt" name="searchBeginDt"></vue-datepicker> -
					<vue-datepicker v-model="listVo.searchEndDt" buttonimage="/images/calendar.png"
						id="searchEndDt" name="searchEndDt"></vue-datepicker>
				</div>
				<div class="list_wrap">
					<strong>검색어</strong>
					<select v-model="listVo.searchCondition" id="searchCondition" name="searchCondition" style="width:150px;" class="mr5">
						<option :value="'NMBR_WRTER'">이름</option>
						<option :value="'MBTLNUM'">전화번호</option>
						<option :value="'TITLE_CN'">제목+내용</option>
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
				<button type="button" class="btn" v-on:click="onDeleteChecked">선택목록삭제</button>
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="60px">
					<col width="150px">
					<col width="">
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" v-on:click="checkAll"></th>
						<th>이름</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList" >
						<td>
							<input type="checkbox" v-model="checkedPkList"
								name="pkList" :id="'pkList_' + index"
								:value="result.nttSn">
						</td>
						<td>{{result.nmbrWrterNm }}</td>
						<td class="tal"><a v-on:click="onViewLink(result.nttSn)"
							href="javascript:;">{{result.nttSj }}</a></td>
						<td>{{result.updtDt | timeToDate('YYYY-MM-DD HH:mm')}}</td>
					</tr>
					</tbody>
				<tbody v-if="resultList.length == 0">
					<tr >
						<td nowrap colspan="4" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
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
			searchKeyword : '${ listVo.searchKeyword }',
			searchCondition : '${ empty listVo.searchCondition ? "NMBR_WRTER" : listVo.searchCondition }',
			<c:if test="${!empty listVo.searchBeginDt}">
				searchBeginDt : '<fmt:formatDate value="${listVo.searchBeginDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			<c:if test="${!empty listVo.searchEndDt}">
				searchEndDt: '<fmt:formatDate value="${listVo.searchEndDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
		}
		var options = {
			lang: '${langId}',
			bbsId: '${bbsId}',
			listVo: listVo,
		};
		nttList.init(options);
	});
	function vueUpdated(vm) {
	}
	</script>
</body>
