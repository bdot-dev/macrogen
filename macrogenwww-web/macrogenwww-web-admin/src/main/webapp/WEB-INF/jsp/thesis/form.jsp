<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="periodSearchCondition"/>
		<form:hidden path="searchBeginDt"/>
		<form:hidden path="searchEndDt"/>
		<form:hidden path="searchCondition"/>
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
							<th>논문제목 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.thesisSj" ref="thesisSj"
										maxlength="500" placeholder="논문제목" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>저널 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.jrnl" ref="jrnl"
										maxlength="200" placeholder="저널" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>Link URL <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.linkUrl" ref="linkUrl"
										maxlength="200" placeholder="논문 Link URL" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>등록 연도/월 <span>*</span></th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.registYear" style="width:200px;" ref="registYear">
									<option :value="null">연도 선택</option>
									<option v-for="(result, index) in registYearList"
										:value="result" v-text="result"/>
								</select>
								<select v-model="resultVo.registMt" style="width:200px;" ref="registMt">
									<option :value="null">월 선택</option>
									<option v-for="(result, index) in registMtList"
										:value="result" v-text="result"/>
								</select>
							</td>
						</tr>

					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20" v-if="resultVo.thesisSn">
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
					<button v-if="resultVo.thesisSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>

		</div>
	</form>


	<script src="/js/app/ThesisForm.js"></script>
	<script>
		$(function (){
			var options = {
				thesisSn : ${ empty thesisSn ? 'null' : thesisSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			ThesisForm.init(options);
		});

		function vueUpdated(vm) {
			console.log('vueUpdated');
		}

	</script>
</body>
