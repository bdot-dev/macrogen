<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchBeginDt"/>
		<form:hidden path="searchEndDt"/>
		<form:hidden path="searchSomlnkCtgryCode"/>
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
							<th>카테고리 <span>*</span></th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.somlnkCtgryCode" style="width:200px;" ref="somlnkCtgryCode">
									<option :value="null">카테고리 선택</option>
									<option v-for="(result, index) in somlnkCtgryCodeList"
										:value="result.code" v-text="result.codeNm${lang }"/>
								</select>
							</td>
						</tr>
						<tr>
							<th>게시일 <span>*</span></th>
							<td colspan="3" class="tal">
								<vue-datepicker v-model="resultVo.postDt" buttonimage="/images/calendar.png"
								id="postDt" name="postDt"></vue-datepicker>
							</td>
						</tr>

						<tr>
							<th>대표 이미지 <span>*</span></th>
							<td colspan="3" class="tal">
								<div>
									<input type="file" name="imageFile" v-on:change="onchangeImageFile" />
									<span>(사이즈 : 가로사이즈 기준 1000(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
								</div>
								<div v-if="resultVo.imageAtchId">
									<img :src="'${publicUrl }' + resultVo.imageFlpth"
										style="width:100px; vertical-align: bottom;" />
				                    <a href="javascript:;" v-on:click="onDeleteImage">삭제</a>
								</div>
							</td>
						</tr>

						<tr>
							<th>제목 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.somlnkSj" ref="somlnkSj"
										maxlength="200" placeholder="제목" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>내용 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.somlnkDt" ref="somlnkDt"
										maxlength="200" placeholder="내용" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>링크 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.somlnkUrl" ref="somlnkUrl"
										maxlength="100" placeholder="링크" class="w100p" />
								</div>
							</td>
						</tr>

					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20" v-if="resultVo.mainSomlnkSn">
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
					<button v-if="resultVo.mainSomlnkSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>

		</div>

	</form>

	<script src="/js/app/MainSomlnkForm.js"></script>
	<script>
		$(function (){
			var options = {
				mainSomlnkSn : ${ empty mainSomlnkSn ? 'null' : mainSomlnkSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			MainSomlnkForm.init(options);
		});

		function vueUpdated(vm) {
		}

	</script>
</body>
