<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<form id="editForm" name="editForm" enctype="multipart/form-data" onsubmit="return false;">

	<div class="page_wrap vuelayer" v-cloak>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="100px" />
					<col width="100px" />
					<col width="">
				</colgroup>
				<tbody>
				<template v-for="(result, index) in resultList">
					<tr>
						<th colspan="3">컨텐츠 {{ index+1 }}</th>
					</tr>
					<tr>
						<th rowspan="2">내용</th>
						<th>PC <span>*</span></th>
						<td class="tal">
							<div class="lbMaxlenPrnt">
								<textarea v-model='result.cnPc' ref="cnPc" placeholder="내용 PC" class="w100p devck" rows='4'></textarea>
							</div>
						</td>
					</tr>
					<tr>
						<th>MO <span>*</span></th>
						<td class="tal">
							<div class="lbMaxlenPrnt">
								<textarea v-model='result.cnMo' ref="cnMo" placeholder="내용 MO" class="w100p devck" rows='4'></textarea>
							</div>
						</td>
					</tr>
					<tr>
						<th rowspan="2">인물 정보</th>
						<th>이름 <span>*</span></th>
						<td class="tal">
							<div class="lbMaxlenPrnt">
								<input type="text" v-model='result.peopleNm' ref="peopleNm" maxlength="30" placeholder="이름" class="w100p" />
							</div>
						</td>
					</tr>
					<tr>
						<th>직함 <span>*</span></th>
						<td class="tal">
							<div class="lbMaxlenPrnt">
								<input type="text" v-model='result.peopleDept' ref="peopleDept" maxlength="30" placeholder="직함" class="w100p" />
							</div>
						</td>
					</tr>
					<tr>
						<th colspan="2">이미지 <span>*</span></th>
						<td class="tal">
							<div>
								<input type="file" :name="`imageFile\${index+1}`" ref="imageFile" v-on:change="onchangeImageFile(index,$event)" />
								<span>(사이즈 : 가로사이즈 기준 1000(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
							</div>
							<div v-if="result.imageAtchId">
								<img :src="'${publicUrl}' + result.imageFlpth" style="width:100px; vertical-align: bottom;" />
							</div>
						</td>
					</tr>
					<tr>
						<th colspan="2">링크</th>
						<td class="tal">
							<div class="lbMaxlenPrnt">
								<input type="text" v-model='result.linkUrl' ref="linkUrl" maxlength="500" placeholder="링크" class="w100p" />
							</div>
						</td>
					</tr>
				</template>
				</tbody>
			</table>

			<div class="btn_wrap tar">
				<button type="button" name="button" class="btn" v-on:click="onSubmit">저장</button>
			</div>
		</div>

	</div>

	</form>

	<script src="/js/vueComponent/vue-pagination.js"></script>
	<script src="/js/app/MainPeopleList.js?4"></script>
	<script>
	$(function () {
		var listVo = {
			pageIndex : 1, recordCountPerPage : 4,
		}
		var options = { listVo: listVo };
		options.lang = '${langId}';
		options.Lang = '${lang}';
		MainPeopleList.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>