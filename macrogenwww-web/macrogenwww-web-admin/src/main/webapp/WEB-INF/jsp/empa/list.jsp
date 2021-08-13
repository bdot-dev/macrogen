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
					<strong>기간</strong>
					<select v-model="listVo.periodSearchCondition" style="width:200px;">
						<option :value="'updt_dt'" v-text="'최종수정일'" />
						<option :value="'rcept_period'" v-text="'접수기간'" />
					</select>
					<vue-datepicker v-model="listVo.searchBeginDt" buttonimage="/images/calendar.png"
						id="searchBeginDt" name="searchBeginDt"></vue-datepicker> -
					<vue-datepicker v-model="listVo.searchEndDt" buttonimage="/images/calendar.png"
						id="searchEndDt" name="searchEndDt"></vue-datepicker>
				</div>
				<div class="list_wrap">
					<strong>접수상태</strong>
					<select v-model="listVo.searchRceptSttusCode" name="searchRceptSttusCode" style="width:200px;">
						<option :value="null">전체</option>
						<option v-for="(result, index) in rceptSttusCodeList"
							:value="result.code" v-text="result.codeNm"/>
					</select>
				</div>
				<div class="list_wrap">
					<strong>검색어</strong>
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
					<col width="120px" />
					<col width="">
					<col width="120px" />
					<col width="160px" />
					<col width="120px">
					<col width="120px">
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" v-on:click="checkAll"></th>
						<th>접수상태</th>
						<th>제목</th>
						<th>지원구분</th>
						<th>접수기간</th>
						<th>등록자</th>
						<th>최종수정일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList">
						<td>
							<input type="checkbox" v-model="checkedPkList"
								name="pkList" :id="'pkList_' + index"
								:value="result.empaSn">
						</td>
						<td>{{ result.rceptSttusCodeNm }}</td>
						<td class="tal"><a v-on:click="onViewLink(result.empaSn)"
							href="javascript:;">{{ result.empaSj }}</a></td>
						<td>{{ result.sportSeCodeNm }}</td>
						<td>{{ result.rceptBeginDe | timeToDate('YYYY-MM-DD') }} ~
							{{ result.rceptEndDe | timeToDate('YYYY-MM-DD') }}
						</td>
						<td>{{ result.updusrNm }}</td>
						<td>{{ result.updtDt | timeToDate('YYYY-MM-DD HH:mm') }}</td>
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

			<div class="btn_wrap tar">
				<button type="button" class="btn btnAdd" v-on:click="onAdd">등록</button>
			</div>
		</div>


		<div class="search_wrap">
			<div class="title_h4_wrap">
				<span><em>*</em> 채용공고 목록에서 제공되는 지원양식 파일입니다.</span>
			</div>
			<div class="board_wrap mb20">
				<table class="table_row mb20">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody>
						<tr>
							<th>입사지원양식 (워드) <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="file" name="applFormWordFile"
										v-on:change="onchangeApplFormWordFile" />
								</div>
								<div v-if="applFormVo.applFormWordAtchId">
									<a href="javascript:;" v-on:click="onDownloadApplFormWord">{{ applFormVo.applFormWordLogicNm }}</a>
				                    <a href="javascript:;" v-on:click="onDeleteApplFormWord">삭제</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>입사지원양식 (한글) <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="file" name="applFormHwpFile"
										v-on:change="onchangeApplFormHwpFile" />
								</div>
								<div v-if="applFormVo.applFormHwpAtchId">
									<a href="javascript:;" v-on:click="onDownloadApplFormHwp">{{ applFormVo.applFormHwpLogicNm }}</a>
				                    <a href="javascript:;" v-on:click="onDeleteApplFormHwp">삭제</a>
								</div>
							</td>
						</tr>

					</tbody>
				</table>
			</div>

			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" name="button" class="btn"
						v-on:click="onSaveApplForm">지원양식 저장</button>
				</div>
			</div>

		</div>

	</div>

	</form>


	<script src="/js/vueComponent/vue-pagination.js"></script>
	<script src="/js/app/EmpaList.js"></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 10,
			periodSearchCondition: '${ empty listVo.periodSearchCondition ? "rcept_period" : listVo.periodSearchCondition }',
			<c:if test="${!empty listVo.searchBeginDt}">
				searchBeginDt : '<fmt:formatDate value="${listVo.searchBeginDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			<c:if test="${!empty listVo.searchEndDt}">
				searchEndDt: '<fmt:formatDate value="${listVo.searchEndDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			searchRceptSttusCode: ${ empty listVo.searchRceptSttusCode ? 'null' : "'".concat(listVo.searchRceptSttusCode).concat("'") },
			searchKeyword : '${ listVo.searchKeyword }',
		}
		var options = { listVo: listVo };
		options.lang = '${langId}';
		options.Lang = '${lang}';
		EmpaList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>
