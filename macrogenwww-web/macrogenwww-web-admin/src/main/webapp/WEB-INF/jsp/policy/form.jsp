<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<form id="editForm" name="editForm" enctype="multipart/form-data">

		<div class="page_wrap vuelayer">

			<!-- 검색조건 영역// -->
			<div v-if="resultVo.policySn && policyList && policyList.length > 0" class="search_wrap">
				<fieldset>
					<div class="list_wrap">
						<select v-model="searchPolicySn" style="width:200px;">
							<option v-for="(result, index) in policyList"
								:value="result.policySn" v-text="'Version ' + result.policyVer" />
						</select>
					</div>
					<div class="list_wrap">
						<div class="tar">
							<button type="button" class="btn point" v-on:click="onSearch">검색</button>
						</div>
					</div>
				</fieldset>
			</div>

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
						<tr v-if="!resultVo.policySn">
							<th>신규등록 버전</th>
							<td colspan="3" class="tal">
								Version {{ resultVo.policyVer }}
							</td
						</tr>
						<tr>
							<th>노출여부 <span>*</span></th>
							<td class="tal">
   								<label v-for="(result, index) in expsrYnList">
   									<input type="radio" v-model="resultVo.expsrYn"
   										:value="result.code" name="expsrYns" :id="'expsrYns' + index">
   									{{result.codeNm}}
   								</label>

							</td>
							<th>적용일자 <span>*</span></th>
							<td class="tal">
								<vue-datepicker v-model="resultVo.applcDe" buttonimage="/images/calendar.png"
									ref="applcDe"></vue-datepicker>
							</td>
						</tr>

						<tr>
							<td colspan="4" class="tal">
								<div class="lbMaxlenPrnt"><textarea v-model="resultVo.policyCn" name="policyCn"
									class="w100p devck" style="height:250px;"></textarea></div>
							</td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<div v-if="resultVo.policySn" class="fll">
						<button type="button" name="button" class="btn point" v-on:click="onAdd">신규버전등록</button>
					</div>
					<button type="button" name="button" class="btn" v-on:click="onSubmit">저장</button>
					<button v-if="resultVo.policySn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
				</div>
			</div>
		</div>
	</form>

	<script src="/js/app/PolicyForm.js"></script>
	<script>
		$(function (){
			var options = {
				policySn : ${ empty policySn ? 'null' : policySn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			options.policy = '${policy}';
			PolicyForm.init(options);
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
