<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage" />
		<form:hidden path="orderBy" />
		<form:hidden path="searchCondition" />
		<form:hidden path="searchKeyword" />
		<form:hidden path="searchExpsrYn" />
		<form:hidden path="searchBeginDt" />
		<form:hidden path="searchEndDt" />
	</form:form>

	<form id="editForm" name="editForm" enctype="multipart/form-data" >
		<!-- 내용// -->
		<div class="page_wrap vuelayer" v-cloak>
			<div class="title_h4_wrap">
				<h4>※ 기본 정보&nbsp;</h4>
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
							<th>제목<span>*</span></th>
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									<input type="text" ref="popupNm" maxlength="50" placeholder="팝업명" v-model="resultVo.popupNm" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>노출순서<span>*</span></th>
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									<input type="number" ref="sortOrdr" maxlength="3" placeholder="노출순서" v-model="resultVo.sortOrdr" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>노출여부<span>*</span></th>
							<td class="tal" colspan="3">
   								<label v-for="(result, index) in expsrYnList">
   									<input type="radio" v-model="resultVo.expsrYn"
   										:value="result.code" name="expsrYns" :id="'expsrYns' + index">
   									{{result.codeNm}}
   								</label>
							</td>
						</tr>
						<tr>
							<th>기간설정<span>*</span></th>
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									기간 설정 <input type="text" class="datepicker" style="width:100px;" name="popupBeginDe" readOnly
										:value="resultVo.popupBeginDe" onchange="onchangPopupBeginDe(this.value)" />
									<select name="beginTime" v-model="resultVo.popupBeginHour">
										<option :value="null">선택</option>
										<option v-for="result in 23"
											:value="lpad(result, 2)" v-text="lpad(result, 2)" />
									</select>시 부터
								</div>
								<div class="lbMaxlenPrnt">
									기간 설정 <input type="text" class="datepicker" style="width:100px;" name="popupEndDe" readOnly
										:value="resultVo.popupEndDe" onchange="onchangPopupEndDe(this.value)" />
									<select name="endTime" v-model="resultVo.popupEndHour">
										<option :value="null">선택</option>
										<option v-for="result in 23"
											:value="result" v-text="lpad(result, 2)" />
									</select>시 까지
								</div>
							</td>
						</tr>
						<tr>
							<th>이미지</th>
							<td class="tal" colspan="3">
								<div class="attchList" >
									<div class="lbMaxlenPrnt">
										<input type="file" name="popupImageFile" v-on:change="onchangePopupImageFile" />
										<span>( 사이즈 : 가로 290~320px, 용량 : 3MB 이하, 형식 : jpg, png )</span>
									</div>
									<div class="lbMaxlenPrnt" v-if="resultVo.popupImageAtchId">
										<div>
						                    <img :src="'${publicUrl }' + resultVo.popupImageFlpth" style="width: 100px;" />
						                    <a href="javascript:;" v-on:click="onDeleteAtch"  >삭제</a>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>연결 URL </th>
							<td class="tal" colspan="3">
   								<label v-for="(result, index) in popupLinkTrgtList">
   									<input type="radio" v-model="resultVo.popupLinkTrgtCode"
   										:value="result.code" name="popupLinkTrgtCodes" :id="'popupLinkTrgtCodes' + index">
   									{{result.codeNm}}
   								</label>
								<div class="lbMaxlenPrnt">
									<input type="text" name="popupLinkUrl" maxlength="255" placeholder="연결URL" v-model="resultVo.popupLinkUrl" style="width:80%;" />
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" v-on:click="onList" name="button" class="btn">목록</button>
					<button type="button" v-on:click="onSubmit" name="button" class="btn">저장</button>
				</div>
			</div>
		</div>
	</form>

	<script src="/js/app/popupForm.js" ></script>
	<script>
		$(function (){
			var options = {
				popupVo : {
					popupSn : ${ empty popupSn ? 'null' : popupSn },
				},
				lang: '${langId}',
			}
			popupForm.init(options);
		});

		function vueUpdated(vm) {
			$('.datepicker').datepicker();
		}
		function onchangPopupBeginDe(val) {
			vue.resultVo.popupBeginDe = val;
		}
		function onchangPopupEndDe(val) {
			vue.resultVo.popupEndDe = val;
		}

	</script>
</body>