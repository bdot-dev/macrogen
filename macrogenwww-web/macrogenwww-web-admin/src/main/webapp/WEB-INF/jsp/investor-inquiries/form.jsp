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
							<th>이름</th>
							<td colspan="3" class="tal">
								{{ resultVo.nmbrWrterNm }}
							</td>
						</tr>
						<tr>
							<th>휴대폰 번호</th>
							<td class="tal">
								{{ resultVo.mbtlnum }}
							</td>
							<th>이메일</th>
							<td class="tal">
								{{ resultVo.email }}
							</td>
						</tr>
						<tr>
							<th>제목 <span>*</span></th>
							<td colspan="3" class="tal">
								{{ resultVo.nttSj }}
							</td>
						</tr>
						<tr>
							<th>내용 <span>*</span></th>
							<td colspan="3" class="tal">
								<span v-html="enterToBr(resultVo.nttCn)" />
								<%-- <div class="lbMaxlenPrnt"><textarea v-model="resultVo.nttCn" name="nttCn"
									placeholder="내용" class="w100p" style="height:250px;"></textarea></div> --%>
							</td>
						</tr>
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
						nttSj: { required: true, maxlength: 80 },
						expsrYn: { required: true },
					},
					messages: {
						nttSj: { required: '필수입력 입니다.(제목)', maxlength: '최대길이 초과 (내용, 최대 80자)' },
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
