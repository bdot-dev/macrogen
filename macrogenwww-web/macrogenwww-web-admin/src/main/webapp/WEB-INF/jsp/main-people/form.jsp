<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
	</form:form>

	<form id="editForm" name="editForm" enctype="multipart/form-data">

	<div class="page_wrap vuelayer" v-cloak>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="15%" />
					<col width="">
				</colgroup>
				<tbody>
					<tr>
						<th>노출 순서 <span>*</span></th>
						<td class="tal">
							<div class="lbMaxlenPrnt">
								<input type="text" maxlenth="3" v-model='resultVo.sortOrdr' ref="sortOrdr" placeholder="노출 순서" class="w100p devck" />
							</div>
						</td>
					</tr>
					<tr>
						<th>노출여부<span>*</span></th>
						<td class="tal">
							<label v-for="(result, index) in expsrYnList">
								<input type="radio" v-model="resultVo.viewYn"
									:value="result.code" name="viewYn" :id="'viewYn' + index"/>
								{{ result.codeNm }}
							</label>
						</td>
					</tr>
					<tr>
						<th>인물 정보 <span>*</span></th>
						<td class="tal">
							<div class="lbMaxlenPrnt">
								이름
								<input type="text" v-model='resultVo.peopleNm' ref="peopleNm" maxlength="100" placeholder="이름" class="w100p" />
							</div>
							<div class="lbMaxlenPrnt">
								직함
								<input type="text" v-model='resultVo.peopleDept' ref="peopleDept" maxlength="100" placeholder="직함" class="w100p" />
							</div>
						</td>
					</tr>
					<tr>
						<th>내용 <span>*</span></th>
						<td class="tal">
							<div class="lbMaxlenPrnt">
								(PC)
								<textarea v-model='resultVo.cnPc' ref="cnPc" placeholder="내용 PC" class="w100p devck" rows='4'></textarea>
							</div>
							<div class="lbMaxlenPrnt">
								(MO)
								<textarea v-model='resultVo.cnMo' ref="cnMo" placeholder="내용 MO" class="w100p devck" rows='4'></textarea>
							</div>
						</td>
					</tr>
					<tr>
						<th>이미지 <span>*</span></th>
						<td class="tal">
							<div>
								(PC)<br>
								<input type="file" :name="`imageFilePc`" ref="imageFilePc" v-on:change="onchangeImageFile($event,'pc')" />
								<span>(사이즈 : 가로사이즈 기준 383(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
							</div>
							<div v-if="resultVo.imageAtchIdPc">
								<img :src="'${publicUrl}' + resultVo.imageFlpthPc" style="width:100px; vertical-align: bottom;" />
							</div><br>
							<div>
								(MO)<br>
								<input type="file" :name="`imageFileMo`" ref="imageFileMo" v-on:change="onchangeImageFile($event,'mo')" />
								<span>(사이즈 : 가로사이즈 기준 383(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
							</div>
							<div v-if="resultVo.imageAtchIdMo">
								<img :src="'${publicUrl}' + resultVo.imageFlpthMo" style="width:100px; vertical-align: bottom;" />
							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<div class="btn_wrap tar">
				<button type="button" name="button" class="btn" v-on:click="onSubmit">저장</button>
				<button v-if="resultVo.peopleSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
				<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
			</div>
		</div>

	</div>

	</form>

	<script src="/js/vueComponent/vue-pagination.js"></script>
	<script src="/js/app/MainPeopleForm.js"></script>
	<script>
	$(function () {
		var options = {
			peopleSn : ${ empty peopleSn ? 'null' : peopleSn },
		}
		options.lang = '${langId}',
		MainPeopleForm.init(options);
	});
	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>
</body>