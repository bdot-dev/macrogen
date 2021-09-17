<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<c:import url="/WEB-INF/jsp/inc/cmpnyhistTab.jsp">
		<c:param name="current" value="photo"/>
	</c:import>

	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchCmpnyhistGroupSn"/>
	</form:form>

	<form id="editForm" name="editForm" enctype="multipart/form-data">
		<div class="page_wrap vuelayer" v-cloak>
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
							<th>연혁 그룹 <span>*</span></th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.cmpnyhistGroupSn" ref="cmpnyhistGroupSn" style="width:200px;">
									<option :value="null">연혁 그룹 선택</option>
									<option v-for="(result, index) in cmpnyhistGroupList"
										:value="result.cmpnyhistGroupSn" v-text="groupDisplayNm(result)"/>
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
							<th>이미지 제목 국문 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.photoSjKo" ref="photoSjKo"
										maxlength="200" placeholder="이미지 제목 국문" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>이미지 제목 영문 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.photoSjEn" ref="photoSjEn"
										maxlength="200" placeholder="이미지 제목 영문" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>이미지 연도 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.photoYear" ref="photoYear"
										maxlength="10" placeholder="이미지 연도" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>정렬순서</th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="number" v-model.number="resultVo.sortOrdr" ref="sortOrdr"
										min="0" max="999" placeholder="정렬순서" class="w100p" />
								</div>
							</td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20" v-if="resultVo.cmpnyhistGroupPhotoSn">
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
					<button v-if="resultVo.cmpnyhistGroupPhotoSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>
		</div>
	</form>

	<script src="/js/app/CmpnyhistGroupPhotoForm.js"></script>
	<script>
		$(function (){
			var options = {
				cmpnyhistGroupPhotoSn : ${ empty cmpnyhistGroupPhotoSn ? 'null' : cmpnyhistGroupPhotoSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			CmpnyhistGroupPhotoForm.init(options);
		});

		function vueUpdated(vm) {
			console.log('vueUpdated');
		}

	</script>
</body>
