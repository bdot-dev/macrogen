<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage"/>
		<%-- <form:hidden path="orderBy"/> --%>
		<form:hidden path="searchCondition"/>
		<form:hidden path="searchKeyword"/>
	</form:form>
	
	<form id="editForm" name="editForm" enctype="multipart/form-data">
	
		<!-- 내용// -->
		<div class="page_wrap vuelayer"  v-cloak>
			<div class="title_h4_wrap">
				<h4>&nbsp;&nbsp;</h4>
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
							<th>이름</th>
							<td class="tal">{{ resultVo.nmbrWriterNm }}</td>
							<th>휴대폰 번호</th>
							<td class="tal">{{ resultVo.mbtlnum }}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="3" class="tal">{{ resultVo.contactSj }}</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td colspan="3" class="tal">{{ resultVo.email }}</td>
						</tr>
						<tr>
							<th>회사명</th>
							<td colspan="3" class="tal">{{ resultVo.company }}</td>
						</tr>
						<tr>
							<th>국가</th>
							<td colspan="3" class="tal">{{ resultVo.nationCodeNm${lang} }}</td>
						</tr>
						<tr>
							<th>문의분야</th>
							<td colspan="3" class="tal">{{ resultVo.field }}</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="6" class="tal"  style="height: 250px;">{{ resultVo.contactCn }}</td>
						</tr>

						<tr>
							<th>등록일시</th>
							<td colspan="3" class="tal">{{ resultVo.registDt  | timeToDate('YYYY-MM-DD HH:mm:ss')}}</td>
						</tr>
					</tbody>	
				</table>	
			</div>
			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" v-if="resultVo.contactSn" v-on:click="onDelete" name="button" class="btn">삭제</button>
					<button type="button" v-on:click="onList" name="button" class="btn">목록</button>
				</div>
			</div>
		</div>
		
	</form>
	
	<script src="/js/app/ContactForm.js"></script>
	<script>
		$(function() {
			var options = {
				contactSn : ${ empty contactSn ? 'null' : contactSn },
			}
			options.lang = '${langId}';
			options.Lang = '${lang}';
			ContactForm.init(options);
		});
		
		function vueUpdated(vm) {
			console.log('vueUpdated');
		}
	</script>
</body>
