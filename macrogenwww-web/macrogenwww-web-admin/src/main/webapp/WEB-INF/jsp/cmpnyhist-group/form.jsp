<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<c:import url="/WEB-INF/jsp/inc/cmpnyhistTab.jsp">
		<c:param name="current" value="group"/>
	</c:import>

	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
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
							<th>시작연도 <span>*</span></th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.beginYear" style="width:200px;" ref="beginYear">
									<option :value="null">시작연도 선택</option>
									<option v-for="(result, index) in yearList"
										:value="result" v-text="result"/>
								</select>
							</td>
						</tr>
						<tr>
							<th>종료연도 <span>*</span></th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.endYear" style="width:200px;" ref="endYear">
									<option :value="null">종료연도 선택</option>
									<option :value="'present'">현재</option>
									<option v-for="(result, index) in yearList"
										:value="result" v-text="result"/>
								</select>
							</td>
						</tr>
						<tr>
							<th>그룹명 국문 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.groupnmKo" ref="groupnmKo"
										maxlength="100" placeholder="그룹명 국문" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>그룹명 영문 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.groupnmEn" ref="groupnmEn"
										maxlength="100" placeholder="그룹명 영문" class="w100p" />
								</div>
							</td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20" v-if="resultVo.cmpnyhistGroupSn">
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
					<button v-if="resultVo.cmpnyhistGroupSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>
		</div>
	</form>

	<script src="/js/app/CmpnyhistGroupForm.js"></script>
	<script>
		$(function (){
			var options = {
				cmpnyhistGroupSn : ${ empty cmpnyhistGroupSn ? 'null' : cmpnyhistGroupSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			CmpnyhistGroupForm.init(options);
		});

		function vueUpdated(vm) {
			console.log('vueUpdated');
		}

	</script>
</body>
