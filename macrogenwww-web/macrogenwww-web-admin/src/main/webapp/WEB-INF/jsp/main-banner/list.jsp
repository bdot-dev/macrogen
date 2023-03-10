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
					<select id="searchCondition" name="searchCondition"  v-model="listVo.searchCondition" style="width:150px;" class="mr5">
						<option value="">전체</option>
						<option v-for="item in expsrYnList" :value="item.code" >{{ item.codeNm }}</option>
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
			<span>검색결과</span> <em>{{ paginationInfo.totalRecordCount }}</em>
			<div class="flr">
				<!-- <button type="button" class="btn" v-on:click="onDeleteChecked">선택목록삭제</button> -->
			</div>
		</div>
		
		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="150px" />
					<col width="500px" />
					<col width="150px" />
					<col width="150px" />
					<col width="150px" />
				</colgroup>
			<thead>
				<tr>
					<th>대표사진</th>
					<th>제목</th>
					<th>노출 여부</th>
					<th>노출 순서</th>
					<th>등록자</th>
				</tr>
			</thead>
			<tbody v-if="resultList.length > 0">
				<tr v-for="(result, index) in resultList">
					<td>
						<img :src="'${publicUrl }' + result.imageFlpthPc"
								style="width:100px; vertical-align: bottom;" />
					</td>
					<td><a v-on:click="onViewLink(result.mainNttSn)"
							href="javascript:;">{{ result.title }}</a></td>
					<td>{{ result.expsrYn }}</td>
					<td><input type="text" v-model="result.expsrPrty" maxlength=3 name="expsrPrty" style="width:40%;" :id="'expsrPrty' + '\${index}'"/></td>
					<td>{{ result.registerNm }}</td>
					<td></td>
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
			<button v-if="resultList || resultList.length > 0" type="button" class="btn btnAdd" v-on:click="onSaveSort">노출순서 저장</button>
			<button type="button" class="btn btnAdd" v-on:click="onAdd">등록</button>
		</div>		
	</div>
</div>
	
</form>
<script src="/js/vueComponent/vue-pagination.js"></script>
<script src="/js/app/MainNttList.js"></script>
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
		var options = {
			lang: '${langId}',
			mainBbsId: '${mainBbsId}',
			listVo: listVo,
		};
		MainNttList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}

</script>

</body>