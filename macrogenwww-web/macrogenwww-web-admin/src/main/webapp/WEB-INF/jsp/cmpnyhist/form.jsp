<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<c:import url="/WEB-INF/jsp/inc/cmpnyhistTab.jsp">
		<c:param name="current" value="cmpnyhist"/>
	</c:import>

	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchYear"/>
		<form:hidden path="searchMt"/>
		<form:hidden path="searchKeyword"/>
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
							<th>연도/월 <span>*</span></th>
							<td colspan="3" class="tal">
								<select v-model="resultVo.year" style="width:200px;" ref="year">
									<option :value="null">연도 선택</option>
									<option v-for="(result, index) in yearList"
										:value="result" v-text="result"/>
								</select>
								<select v-model="resultVo.mt" style="width:200px;" ref="mt">
									<option :value="null">월 선택</option>
									<option v-for="(result, index) in mtList"
										:value="result" v-text="result"/>
								</select>
							</td>
						</tr>
						<tr>
							<th>내용 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.cn" ref="cn"
										maxlength="500" placeholder="연혁 내용" class="w100p" />
								</div>
							</td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="board_wrap mb20" v-if="resultVo.cmpnyhistSn">
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
					<button v-if="resultVo.cmpnyhistSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>
		</div>
	</form>

	<script src="/js/app/CmpnyhistForm.js"></script>
	<script>
		$(function (){
			var options = {
				cmpnyhistSn : ${ empty cmpnyhistSn ? 'null' : cmpnyhistSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			CmpnyhistForm.init(options);
		});

		function vueUpdated(vm) {
			console.log('vueUpdated');
		}

	</script>
</body>
