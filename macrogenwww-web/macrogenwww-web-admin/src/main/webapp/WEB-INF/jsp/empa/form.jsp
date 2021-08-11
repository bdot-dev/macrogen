<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="periodSearchCondition"/>
		<form:hidden path="searchBeginDt"/>
		<form:hidden path="searchEndDt"/>
		<form:hidden path="searchRceptSttusCode"/>
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
							<th>제목 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.empaSj" ref="empaSj"
										maxlength="200" placeholder="제목 " class="w100p" />
								</div>
							</td>
						</tr>

						<tr>
							<th>접수기간 <span>*</span></th>
							<td colspan="3" class="tal">
								<vue-datepicker v-model="resultVo.rceptBeginDe" buttonimage="/images/calendar.png"
									ref="rceptBeginDe"></vue-datepicker> -
								<vue-datepicker v-model="resultVo.rceptEndDe" buttonimage="/images/calendar.png"
									ref="rceptEndDe"></vue-datepicker>
							</td>
						</tr>

						<tr>
							<th>접수상태 <span>*</span></th>
							<td class="tal">
   								<label v-for="(result, index) in rceptSttusCodeList">
   									<input type="radio" v-model="resultVo.rceptSttusCode" ref="rceptSttusCode"
   										:value="result.code" name="rceptSttusCodes" :id="'rceptSttusCodes' + index">
   									{{result.codeNm}}
   								</label>
							</td>
							<th>지원구분 <span>*</span></th>
							<td class="tal">
   								<label v-for="(result, index) in sportSeCodeList">
   									<input type="radio" v-model="resultVo.sportSeCode" ref="sportSeCode"
   										:value="result.code" name="sportSeCodes" :id="'sportSeCodes' + index">
   									{{result.codeNm}}
   								</label>
							</td>
						</tr>

						<tr>
							<th>첨부파일 <span>*</span></th>
							<td colspan="3" class="tal">
								<div>
									<input type="file" name="atchFile" v-on:change="onchangeAtchFile" />
									<span>(용량 : 3MB 이하 )</span>
								</div>
								<div v-if="resultVo.atchId">
									<a href="javascript:;" v-on:click="onDownloadAtch">{{ resultVo.logicNm }}</a>
				                    <a href="javascript:;" v-on:click="onDeleteAtch">삭제</a>
								</div>
							</td>
						</tr>

						<tr>
							<td colspan="4" class="tal">
								<div class="lbMaxlenPrnt"><textarea v-model="resultVo.empaCn" name="empaCn"
									class="w100p devck" style="height:250px;"></textarea></div>
							</td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20" v-if="resultVo.empaSn">
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
					<button v-if="resultVo.empaSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>

		</div>
	</form>


	<script src="/js/app/EmpaForm.js"></script>
	<script>
		$(function (){
			var options = {
				empaSn : ${ empty empaSn ? 'null' : empaSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			EmpaForm.init(options);
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
