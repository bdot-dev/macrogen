<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage"/>
		<form:hidden path="searchCondition" />
		<form:hidden path="searchKeyword"/>
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
					</colgroup>
					<tbody>
						<tr>
							<th>아이피 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.ip" name="ip" id="ip" class="mr5" maxlength="200" placeholder="아이피" style="width:100%;" />
								</div>
							</td>
						</tr>
						<tr>
							<th>접속지 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.title" name="title" id="title" class="mr5" maxlength="200" placeholder="접속지" style="width:100%;"/>
								</div>
							</td>
						</tr>
						<tr>
							<th>사용여부 <span>*</span></th>
							<td colspan="3" class="tal">
   								<label v-for="(result, index) in useYnList">
   									<input type="radio" v-model="resultVo.useYn"
   										:value="result.code" name="useYns" :id="'useYns' + index">
   									{{result.codeNm}}
   								</label>
							</td>
						</tr>
					
					</tbody>
				</table>
			</div>
			
			<div class="board_wrap mb20" v-if="resultVo.col">
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
					<button type="button" v-on:click="onSubmit" name="button" class="btn">저장</button>
					<button type="button" v-if="resultVo.col" v-on:click="onDelete" name="button" class="btn">삭제</button>
					<button type="button" v-on:click="onList" name="button" class="btn">목록</button>
				</div>
			</div>
		</div>
		<!-- //내용 -->

	</form>

	<script src="/js/app/IpForm.js"></script>
	<script>
		$(function() {
			var options = {
				col : ${ empty col ? 'null' : col },
			};
			ipForm.init(options);
		});

		function vueUpdated(vm) {

		}

	</script>
</body>
