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
					<strong>최종수정일</strong>
					<vue-datepicker v-model="listVo.searchBeginDt" buttonimage="/images/calendar.png"
						id="searchBeginDt" name="searchBeginDt"></vue-datepicker> -
					<vue-datepicker v-model="listVo.searchEndDt" buttonimage="/images/calendar.png"
						id="searchEndDt" name="searchEndDt"></vue-datepicker>
				</div>
				<%-- <div class="list_wrap">
					<strong>카테고리</strong>
					<select v-model="listVo.searchBbsCtgrySn" style="width:200px;">
						<option :value="null">전체</option>
						<option v-for="(result, index) in bbsCtgryList"
							:value="result.bbsCtgrySn" v-text="result.bbsCtgryNm"/>
					</select>
				</div> --%>
				<div class="list_wrap">
					<strong>검색어</strong>
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
					<col width="150px">
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" v-on:click="checkAll"></th>
						<th>대표사진</th>
						<th>내용</th>
						<th>조회수</th>
						<th>작성자</th>
						<th>최종수정일</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList" >
						<td>
							<input type="checkbox" v-model="checkedPkList"
								name="pkList" :id="'pkList_' + index"
								:value="result.nttSn">
						</td>
						<td>
							<img v-if="result.thumbBassImageUseYn != 'Y'"
								:src="'${publicUrl }' + result.thumbFlpth"
								style="width:100px; vertical-align: bottom;" />
							<img v-else :src="result.thumbBassImageCodeNm"
								style="width:100px; vertical-align: bottom;" />
						</td>
						<td class="tal"><a v-on:click="onViewLink(result.nttSn)"
							href="javascript:;">{{result.nttSumry ? result.nttSumry : '제목없음' }}</a>
							<br>
							(사진:{{ result.imageList ? result.imageList.length : 0 }}개, 다운로드:{{ result.atchList ? result.atchList.length : 0 }}개, {{ result.linkUrl ? '링크등록' : '링크미등록' }})
						</td>
						<td>{{result.rdcnt | numberWithCommas }}</td>
						<td>{{result.wrterNm }}</td>
						<td>{{result.updtDt | timeToDate('YYYY-MM-DD HH:mm')}}</td>
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
			searchKeyword : '${ listVo.searchKeyword }',
			searchCondition : '${ empty listVo.searchCondition ? "TITLE" : listVo.searchCondition }',
			<c:if test="${!empty listVo.searchBeginDt}">
				searchBeginDt : '<fmt:formatDate value="${listVo.searchBeginDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			<c:if test="${!empty listVo.searchEndDt}">
				searchEndDt: '<fmt:formatDate value="${listVo.searchEndDt}" pattern="yyyy-MM-dd"/>',
			</c:if>
			searchBbsCtgrySn: ${ empty listVo.searchBbsCtgrySn ? 'null' : listVo.searchBbsCtgrySn },
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
