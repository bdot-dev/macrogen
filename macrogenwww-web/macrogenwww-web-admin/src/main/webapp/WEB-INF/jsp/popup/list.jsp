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
						<strong>노출 여부</strong>
						<label><input type="radio" :value="null" v-model="listVo.searchExpsrYn" name="searchExpsrYn" />전체</label>
						<label v-for="item in expsrYnList"> <input type="radio" v-bind:value="item.code" name="searchExpsrYn" v-model="listVo.searchExpsrYn" />{{item.codeNm}}</label>
					</div>
					<div class="list_wrap">
						<strong>노출 기간</strong>
						<input type="text" class="datepicker" style="width:100px;" name="searchBeginDt" readOnly
							:value="listVo.searchBeginDt" onchange="onchangSearchBeginDt(this.value)" /> -
						<input type="text" class="datepicker" style="width:100px;" name="searchEndDt" readOnly
							:value="listVo.searchEndDt" onchange="onchangSearchEndDt(this.value)" / />
					</div>
					<div class="list_wrap">
						<strong>검색</strong>
						<input type="text" name="searchKeyword" id="searchKeyword" class="mr5" style="width:200px;" v-model="listVo.searchKeyword" v-on:keyup.enter="onSearch" />
					</div>
					<div class="list_wrap">
						<div class="tar">
							<button type="button" class="btn point btnSearch" v-on:click="onSearch">검색</button>
						</div>
					</div>
				</fieldset>
			</div>

			<div class="result_wrap">
				<p><span>검색</span> <em>{{ paginationInfo.totalRecordCount }}</em></p>
				<div class="flr">
					<select name="recordCountPerPage" v-model="listVo.recordCountPerPage" v-on:change="onRecordCountPerPage">
						<option v-for="option in recordCountPerPageList" v-bind:value="option.code">
							{{ option.codeNm }}
						</option>
					</select>
				</div>
				<div class="flr">
					<select name="orderBy" v-model="listVo.orderBy" v-on:change="onChangeOrderBy">
						<option value="reg_desc">등록일↓</option>
						<option value="reg_asc">등록일↑</option>
					</select>
				</div>
			</div>

			<div class="board_wrap mb20">
				<table class="table_col">
					<colgroup>
						<col width="60px" />
						<col width="80px" />
						<col width="">
						<col width="250px"/>
						<col width="80px">
						<col width="80px">
						<col width="120px">
					</colgroup>
					<thead>
						<tr>
							<th>NO</th>
							<th>노출순서</th>
							<th>제목</th>
							<th>노출기간</th>
							<th>노출여부</th>
							<th>클릭수</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody v-if="resultList.length > 0">
						<tr v-for="(item, index) in resultList" >
							<td>{{paginationInfo.totalRecordCount + 1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + (index + 1)) }}</td>
							<td><input type="text" v-model="item.sortOrdr" maxlength=3 name="sortOrdr" style="width:80%;" /></td>
							<td v-on:click="onClickView(item.popupSn)" style="cursor:pointer;" >{{item.popupNm}}</td>
							<td>{{item.popupBeginDt | timeToDate('YYYY-MM-DD HH:mm')}} ~  {{item.popupEndDt | timeToDate('YYYY-MM-DD HH:mm')}}</td>
							<td>{{item.expsrYn}}</td>
							<td>{{item.clickCo | numberWithCommas }} </td>
							<td>{{item.registDt | timeToDate('YYYY-MM-DD') }} </td>
						</tr>
					</tbody>
					<tbody v-if="resultList.length == 0">
						<tr >
							<td nowrap colspan="7" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
						</tr>
					</tbody>
				</table>
				<div class="pagination_wrap" >
					<div class="pagination">
						<vue-pagination :pagination="paginationInfo"
							v-on:page-move="pageMove"></vue-pagination>
					</div>
				</div>

				<div class="btn_wrap tar">
					<button type="button" class="btn btnAdd" v-on:click="onSaveSort">노출순서 저장</button>
					<button type="button" class="btn btnAdd" v-on:click="onAdd">등록</button>
				</div>

			</div>


		</div>
	</form>

	<script type="text/javascript" src="/js/vueComponent/vue-pagination.js" ></script>
	<script type="text/javascript" src="/js/app/popupList.js" ></script>
	<script type="text/javascript">
	$(function (){
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : ${ listVo.recordCountPerPage },
			searchKeyword : '${ listVo.searchKeyword }',
			searchExpsrYn: '${ listVo.searchExpsrYn  }',
			orderBy: '${ empty listVo.orderBy ? "reg_desc" : listVo.orderBy }',
			<c:if test="${!empty listVo.searchBeginDt}">
				searchBeginDt : '<fmt:formatDate value="${listVo.searchBeginDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			<c:if test="${!empty listVo.searchEndDt}">
				searchEndDt: '<fmt:formatDate value="${listVo.searchEndDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
		}
		var options = { listVo: listVo };
		popupList.init(options);
	});

	function vueUpdated(vm) {
		$('.datepicker').datepicker();
	}
	function onchangSearchBeginDt(val) {
		vue.listVo.searchBeginDt = val;
	}
	function onchangSearchEndDt(val) {
		vue.listVo.searchEndDt = val;
	}
	</script>
</body>