<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchBeginDt"/>
		<form:hidden path="searchEndDt"/>
		<form:hidden path="searchCtgryCode"/>
		<form:hidden path="searchNationCode"/>
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
							<th>특허내용 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<textarea v-model="resultVo.patentCn" ref="patentCn"
										placeholder="특허내용" class="w100p" style="height:150px; width:100%;"></textarea>
								</div>
							</td>
						</tr>

						<tr>
							<th>카테고리 <span>*</span></th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.ctgryCode" style="width:200px;" ref="ctgryCode">
									<option :value="null">카테고리 선택</option>
									<option v-for="(result, index) in ctgryCodeList"
										:value="result.code" v-text="result.codeNm${lang }"/>
								</select>
							</td>
						</tr>

						<tr>
							<th>등록국가 <span>*</span></th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.nationCode" style="width:200px;" ref="nationCode">
									<option :value="null">등록국가 선택</option>
									<option v-for="(result, index) in nationCodeList"
										:value="result.code" v-text="result.codeNm${lang }"/>
								</select>
							</td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20" v-if="resultVo.patentSn">
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
					<button v-if="resultVo.patentSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>

		</div>
	</form>


	<script src="/js/app/PatentForm.js"></script>
	<script>
		$(function (){
			var options = {
				patentSn : ${ empty patentSn ? 'null' : patentSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			PatentForm.init(options);
		});

		function vueUpdated(vm) {
			console.log('vueUpdated');
		}

	</script>
</body>
