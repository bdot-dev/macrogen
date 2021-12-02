<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage"/>
		<form:hidden path="orderBy"/>
		<form:hidden path="searchCondition" />
		<form:hidden path="searchKeyword"/>
		<form:hidden path="searchExpsrYn"/>
	</form:form>

	<form id="editForm" name="editForm" enctype="multipart/form-data">

		<!-- 내용// -->
		<div class="page_wrap vuelayer" v-cloak>
			<div class="title_h4_wrap">
				<h4>&nbsp;</h4>
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
							<th>제목 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.nttSj" name="nttSj" id="nttSj" class="mr5 txtMaxlen" maxlength="200" placeholder="제목" style="width:100%;"/>
								</div>
							</td>
						</tr>
						<tr>
							<th>
								리스트이미지
							</th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt" style="padding-bottom: 20px;">
									<label>
										<input type="checkbox" v-model="resultVo.thumbBassImageUseYn" true-value="Y" false-value="N"
											ref="thumbBassImageUseYn" id="thumbBassImageUseYn" name="thumbBassImageUseYn" />
										기본이미지를 사용하시려면 체크해주세요.
									</label>
								</div>
								<div v-if="'Y' != resultVo.thumbBassImageUseYn">
									<div>
										<input type="file" name="thumbFile" v-on:change="onchangeThumbFile" />
										<span>(사이즈 : 가로사이즈 기준 400(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
									</div>
									<div v-if="resultVo.thumbAtchId">
										<img :src="'${publicUrl }' + resultVo.thumbFlpth"
											style="width:100px; vertical-align: bottom;" />
					                    <a href="javascript:;" v-on:click="onDeleteThumb">삭제</a>
									</div>
								</div>
								<div v-if="'Y' == resultVo.thumbBassImageUseYn">
	   								<label v-for="(result, index) in thumbBassImageCodeList">
	   									<input type="radio" v-model="resultVo.thumbBassImageCode"
	   										:value="result.code" name="thumbBassImageCodes" :id="'thumbBassImageCodes' + index">
	   									<img :src="result.codeNm"
											style="width:100px; vertical-align: bottom;" />
	   								</label>
								</div>
							</td>
						</tr>
						<tr>
							<th>상단고정</th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<label>
										<input type="checkbox" id="upendFixingYn" name="upendFixingYn" v-model="resultVo.upendFixingYn" true-value="Y" false-value="N"/>
										최상단 리스트로 노출하시려면 체크해주세요.
									</label>
								</div>
							</td>
						</tr>
						<!--
						<tr>
							<th>게시글 분류 </th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.bbsCtgrySn">
									<option :value="null">선택</option>
									<option v-for="(result, index) in bbsCtgryList" :value="result.bbsCtgrySn" v-text="result.bbsCtgryNm" />
								</select>
							</td>
						</tr>
						-->
						<!--
						<tr>
							<th>노출여부 <span>*</span></th>
							<td colspan="3" class="tal">
   								<label v-for="(result, index) in expsrYnList">
   									<input type="radio" v-model="resultVo.expsrYn"
   										:value="result.code" name="expsrYns" :id="'expsrYns' + index">
   									{{result.codeNm}}
   								</label>
							</td>
						</tr>
						 -->
						<tr>
							<th>내용 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt"><textarea v-model="resultVo.nttCn" name="nttCn"
									placeholder="내용" class="w100p devck" style="height:250px;"></textarea></div>
							</td>
						</tr>
						<!--
						<tr>
							<th>
								첨부파일
							</th>
							<td colspan="3" class="tal">
								<div class="attchList" >
									<div class="lbMaxlenPrnt">
										<input type="file" name="thumbFile" v-on:change="onchangeAddFile" />
										<span>(사이즈 : 1000X1000(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>

									</div>
									<div class="lbMaxlenPrnt" v-for="(item, index) in resultVo.atchList">
										<div>
						                    &nbsp;{{item.logicNm}}
						                    &nbsp;&nbsp;&nbsp;<a href="javascript:;" v-on:click="onDeleteAtch(index)">삭제</a>
										</div>
									</div>
								</div>
							</td>
						</tr>
						 -->
					</tbody>
				</table>
			</div>
			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" v-on:click="onSubmit" name="button" class="btn">저장</button>
					<button type="button" v-if="resultVo.nttSn" v-on:click="onDelete" name="button" class="btn">삭제</button>
					<button type="button" v-on:click="onList" name="button" class="btn">목록</button>
				</div>
			</div>
		</div>
		<!-- //내용 -->

	</form>

	<script src="/js/app/NttForm.js"></script>
	<script>
		$(function() {
			var options = {
				nttSn : ${ empty nttSn ? 'null' : nttSn },
				validateOptions: {
					rules: {
						nttSj: { required: true, maxlength: 200 },
						expsrYn: { required: true },
					},
					messages: {
						nttSj: { required: '필수입력 입니다.(제목)', maxlength: '최대길이 초과 (내용, 최대 200자)' },
						expsrYn: { required: '필수선택 입니다.(노출여부)' },
					}
				},
				lang: '${langId}',
				bbsId: '${bbsId}',
			};
			nttForm.init(options);
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
