<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<div id="popup_layer" v-cloak style="width:65%; height:90%; overflow-y: scroll;">
	<div id="popup_header">
		<strong>제품 설정</strong>
	</div>

	<div id="container" class="popup_container">
		<div class="page_wrap ajaxlayer" style="min-height: 300px;">
			<!-- 내용// -->
			<div class="page_wrap">
				<div class="search_wrap">
					<fieldset>
						<div class="list_wrap">
							<strong>
								<select v-model="listVo.searchCondition">
									<option value="prductNm">제품명</option>
									<option value="prductSn">제품코드</option>
								</select>
							</strong>
							<input type="text" name="searchKeyword" id="searchKeyword" class="mr5" style="width:100%;" maxlength="30" v-model="listVo.searchKeyword" v-on:keyup.enter="onDownSearch" />
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
					</div>
				</div>

				<div class="board_wrap mb20">
					<table class="table_col">
						<colgroup>
							<col width="40px">
							<col width="110px">
							<col width="*">
							<col width="150px">
							<col width="100px">
						</colgroup>
						<thead>
							<tr>
								<th>선택</th>
								<th>제품코드</th>
								<th>제품명</th>
								<th>카테고리</th>
								<th>노출여부</th>
							</tr>
						</thead>
						<tbody v-if="resultList.length > 0">
							<tr v-for="(result, index) in resultList">
								<td><input type="checkbox" v-model="result.checked"
									name="prductSns" :id="'prductSns' + index" /></td>
								<td>{{result.prductSn }}</td>
								<td>{{result.prductNm }}</td>
								<td>{{result.prductctgryNmPath}}</td>
								<td>{{ result.expsrYn == 'Y' ? '노출' : '비노출' }}</td>
							</tr>
						</tbody>
						<tbody v-if="resultList.length == 0">
							<tr>
								<td nowrap colspan="5" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="pagination_wrap">
					<div class="pagination">
						<vue-pagination :pagination="paginationInfo"
							v-on:page-move="pageMove"></vue-pagination>
					</div>
				</div>
				<div class="popup_bottom">
					<button type="button" class="btn" v-on:click="onSelect">선택</button>
					<button type="button" class="btn white" v-on:click="onClose">취소</button>
				</div>

			</div>
		</div>
	</div>
</div>
<script src="/js/vueComponent/vue-pagination.js"></script>
<script src="/js/app/PrductListAjaxHtml.js"></script>
<script>
$(function (){
	var listVo = {
		pageIndex : ${ listVo.pageIndex },
		recordCountPerPage : ${ listVo.recordCountPerPage },
		searchKeyword : '${ listVo.searchKeyword }',
		searchCondition : '${ empty listVo.searchCondition ? "prductNm" : listVo.searchCondition }',
	};
	var options = { listVo : listVo };
	PrductListAjaxHtml.init(options);
});
</script>