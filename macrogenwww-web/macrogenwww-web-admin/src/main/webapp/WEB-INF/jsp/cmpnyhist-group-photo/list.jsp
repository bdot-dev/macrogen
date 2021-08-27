<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<c:import url="/WEB-INF/jsp/inc/cmpnyhistTab.jsp">
		<c:param name="current" value="photo"/>
	</c:import>

	<form id="listForm" name="listForm">

	<div class="page_wrap vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

		<!-- 검색조건 영역// -->
		<div class="search_wrap">
			<fieldset>
				<div class="list_wrap">
					<strong>검색그룹</strong>
					<select v-model="listVo.searchCmpnyhistGroupSn" v-on:change="onSearch" style="width:200px;">
						<option :value="null">전체 연혁 그룹</option>
						<option v-for="(result, index) in cmpnyhistGroupList"
							:value="result.cmpnyhistGroupSn" v-text="groupDisplayNm(result)"/>
					</select>
				</div>
			</fieldset>
		</div>

		<div class="result_wrap">
			<span>검색결과</span> <em>{{ paginationInfo.totalRecordCount }}</em>
			<div class="flr">
				<button v-if="null != resultList && resultList.length > 0"
					type="button" class="btn" v-on:click="onSaveSortOrdr">정렬순서 저장</button>
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="120px" />
					<col width="">
					<col width="120px" />
					<col width="120px">
					<col width="120px">
				</colgroup>
				<thead>
					<tr>
						<th>이미지</th>
						<th>그룹 및 이미지제목</th>
						<th>등록자</th>
						<th>최종수정일</th>
						<th>정렬순서</th>
					</tr>
				</thead>
				<tbody v-if="resultList.length > 0">
					<tr v-for="(result, index) in resultList">
						<td>
							<img :src="'${publicUrl }' + result.photoFlpth"
								style="width:100px; vertical-align: bottom;" />
						</td>
						<td class="tal" v-on:click="onViewLink(result.cmpnyhistGroupPhotoSn)" style="cursor: pointer;">
							{{ result.beginYear }} - {{ result.endYear == 'present' ? '현재' : result.endYear }} <br>
							{{ result.photoSjKo }}<br>
							{{ result.photoSjEn }}
						</td>
						<td>{{ result.updusrNm }}</td>
						<td>{{ result.updtDt | timeToDate('YYYY-MM-DD HH:mm') }}</td>
						<td><input type="number" v-model.number="result.sortOrdr" v-on:change="onchangeSortOrdrPnrm" ref="sortOrdr"
								min="0" max="999" placeholder="정렬순서" class="w100p" />
						</td>
					</tr>
				</tbody>
				<tbody v-if="resultList.length == 0">
					<tr>
						<td nowrap colspan="5" style="padding:80px 0px;text-align:center;">검색결과가 없습니다.</td>
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

	</form>

	<script src="/js/vueComponent/vue-pagination.js"></script>
	<script src="/js/app/CmpnyhistGroupPhotoList.js"></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : ${ listVo.pageIndex },
			recordCountPerPage : 50,
			searchCmpnyhistGroupSn: ${ empty listVo.searchCmpnyhistGroupSn ? 'null' : listVo.searchCmpnyhistGroupSn },
		}
		var options = { listVo: listVo };
		options.lang = '${langId}';
		options.Lang = '${lang}';
		CmpnyhistGroupPhotoList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>
