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
	</form:form>

	<form id="editForm" name="editForm" enctype="multipart/form-data">

		<!-- 내용// -->
		<div class="page_wrap vuelayer" v-cloak>
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
							<th>권한명(ID)</th>
							<td colspan="3" class="tal">
								{{resultVo.roleId}}
							</td>
						</tr>
						<tr>
							<th>접근 가능 메뉴 변경</th>
							<td colspan="3" class="tal">
								<div v-if="menuList!=null">
									<span  v-for="(result, index) in menuList">
										{{result.menuNmPath}} <br>
									</span>
								</div>
								<div v-else>
									<span>
										-
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<th>URL 접근 권한 변경</th>
							<td colspan="3" class="tal">
								<div v-if="urlList!=null">
									<span  v-for="(result, index) in urlList">
										{{result.url}} <br>
									</span>
								</div>
								<div v-else>
									<span>
										-
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<th>상태</th>
							<td colspan="3" class="tal">
								{{resultVo.result}}
							</td>
						</tr>
						<tr>
							<th>변경일</th>
							<td colspan="3" class="tal">
								{{resultVo.registDt | timeToDate('YYYY-MM-DD HH:mm:ss')}}
							</td>
						</tr>
						
					</tbody>
				</table>
			</div>
			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" v-on:click="onList" name="button" class="btn">목록</button>
				</div>
			</div>
		</div>
		<!-- //내용 -->

	</form>

	<script src="/js/app/MngrAuthLogForm.js"></script>
	<script>
		$(function() {
			var options = {
				mngrHisSeq : ${ empty mngrHisSeq ? 'null' : mngrHisSeq },
			};
			mngrAuthLogForm.init(options);
		});

	</script>
</body>
