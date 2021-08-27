<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchWnpzClCodeList"/>
		<form:hidden path="searchWnpzTmeCode"/>
		<form:hidden path="searchKeyword"/>
	</form:form>

	<form id="editForm" name="editForm" enctype="multipart/form-data">
		<div class="page_wrap vuelayer">
			<div class="title_h4_wrap">
				<span><em>*</em> 는 필수 입력값</span>
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
							<th>분류 <span>*</span></th>
							<td class="tal">
								<select v-model="resultVo.wnpzClCode" style="width:200px;" ref="wnpzClCode">
									<option :value="null">분류 선택</option>
									<option v-for="(result, index) in wnpzClCodeList"
										:value="result.code" v-text="result.codeNm${lang }"/>
								</select>
							</td>
							<th>수상회차 <span>*</span></th>
							<td class="tal">
								<select v-model="resultVo.wnpzTmeCode" style="width:200px;" ref="wnpzTmeCode">
									<option :value="null">수상회차 선택</option>
									<option v-for="(result, index) in wnpzTmeCodeList"
										:value="result.code" v-text="result.codeNm${lang }"/>
								</select>
							</td>
						</tr>

						<tr>
							<th>사진 <span>*</span></th>
							<td colspan="3" class="tal">
								<div>
									<input type="file" name="photoFile" v-on:change="onchangePhotoFile" />
									<span>(사이즈 : 가로사이즈 기준 1000(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
								</div>
								<div v-if="resultVo.photoAtchId">
									<img :src="'${publicUrl }' + resultVo.photoFlpth"
										style="width:100px; vertical-align: bottom;" />
				                    <a href="javascript:;" v-on:click="onDeletePhoto">삭제</a>
								</div>
							</td>
						</tr>

						<tr>
							<th>수상자명 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.wnpzNm" ref="wnpzNm"
										maxlength="200" placeholder="수상자명" class="w100p" />
								</div>
							</td>
						</tr>

						<tr>
							<th>간단설명 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.rm" ref="rm"
										maxlength="500" placeholder="간단설명" class="w100p" />
								</div>
							</td>
						</tr>

						<tr>
							<td colspan="4" class="tal">
								<div class="lbMaxlenPrnt"><textarea v-model="resultVo.wnpzCn" name="wnpzCn"
									class="w100p devck" style="height:250px;"></textarea></div>
							</td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20" v-if="resultVo.wnpzSn">
				<table class="table_row mb20">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody>
						<tr>
							<th>작성자</th>
							<td class="tal">
								<div class="lbMaxlenPrnt">
									{{ resultVo.registerNm }}
								</div>
							</td>
							<th>등록일</th>
							<td class="tal">
								<div class="lbMaxlenPrnt">
									{{ resultVo.registDt  | timeToDate('YYYY-MM-DD HH:mm:ss')}}
								</div>
							</td>
						</tr>
						<tr>
							<th>수정자</th>
							<td class="tal">
								<div class="lbMaxlenPrnt">
									{{ resultVo.updusrNm }}
								</div>
							</td>
							<th>수정일</th>
							<td class="tal">
								<div class="lbMaxlenPrnt">
									{{ resultVo.updtDt  | timeToDate('YYYY-MM-DD HH:mm:ss')}}
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" name="button" class="btn" v-on:click="onSubmit">저장</button>
					<button v-if="resultVo.wnpzSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>

		</div>
	</form>


	<script src="/js/app/WnpzForm.js"></script>
	<script>
		$(function (){
			var options = {
				wnpzSn : ${ empty wnpzSn ? 'null' : wnpzSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			WnpzForm.init(options);
		});

		function vueUpdated(vm) {
			$("textarea.devck").each(function(){
				var instanceNm = $(this).attr('name');
				if (!CKEDITOR.instances[instanceNm]) {
					CKEDITOR.replace(instanceNm);
				}
			});
		}

	</script>
</body>
