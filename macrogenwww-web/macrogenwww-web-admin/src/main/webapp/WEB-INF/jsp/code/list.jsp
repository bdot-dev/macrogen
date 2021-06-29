<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<form:form commandName="codeVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />
	<input type="hidden" id="codeSe" name="codeSe" />
	<input type="hidden" id="code" name="code" />

	<!-- 내용// -->
	<div class="page_wrap">

		<!-- 검색조건 영역// -->
		<div class="search_wrap">
			<fieldset>
				<div class="list_wrap">
					<strong>검색</strong>
					<form:select path="searchCondition" style="width:100px;" class="mr5">
						<form:option value="code_se">코드구분</form:option>
						<form:option value="code_nm">코드명</form:option>
						<form:option value="code">코드</form:option>
					</form:select>
					
					<form:input path="searchKeyword" style="width:200px;" class="mr5" />
				</div>
				<div class="list_wrap">
					<div class="tar">
						<button type="button" class="btn point btnSearch">검색</button>
					</div>
				</div>
			</fieldset>
		</div>
		<!-- //검색조건 영역 -->

		<div class="result_wrap">
			<p><span>검색</span> <em>${paginationInfo.totalRecordCount }</em></p>
			<div class="flr">
				<form:select path="recordCountPerPage">
					<form:options items="${recordCountPerPageList }" itemValue="code" itemLabel="codeNm" />
				</form:select>
			</div>
		</div>

		<div class="board_wrap mb20">
			<table class="table_col">
				<colgroup>
					<col width="40px">
					<col width="60px">
					<col width="150px">
					<col width="150px">
					<col width="">
					<col width="60px">
					<col width="100px">
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" name="checkAll" id="checkAll"></th>
						<th>NO</th>
						<th>코드구분</th>
						<th>코드</th>
						<th>코드명</th>
						<th>정렬순서</th>
						<th>수정일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="result" items="${resultList }" varStatus="status">
					<tr>
						<td><input type="checkbox" name="codePkList" id="codePkList_${status.count }" value="${result.codeSe }:${result.code }"></td>
						<td><c:out value="${paginationInfo.totalRecordCount+1 - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + status.count)}"/></td>
						<td><a href="javascript:linkView('${result.codeSe }', '${result.code }')">${result.codeSe }</a></td>
						<td><a href="javascript:linkView('${result.codeSe }', '${result.code }')">${result.code }</a></td>
						<td>${result.codeNm }</td>
						<td>${result.sortOrdr }</td>
						<td><fmt:formatDate value="${result.updtDt }" pattern="yyyy-MM-dd" /></td>
					</tr>
					</c:forEach>

					<c:if test="${fn:length(resultList) == 0}">
					<tr>
						<td nowrap colspan="7">검색결과가 없습니다.</td>
					</tr>
					</c:if>
				</tbody>
			</table>
			
			<div class="pagination_wrap">
				<div class="pagination">
					<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage" />
				</div>
			</div>

			<div class="btn_wrap tar">
				<button type="button" class="btn btnAdd">등록</button>
			</div>
		</div>
	</div>
	<!-- //내용 -->

	</form:form>

	<script>
		var $form = $("#listForm");
		
		$(function() {
			$form.find(".btnSearch").on('click', function(e){
				linkPage(1);
				return false;
		    });

			$form.find(".btnAdd").on('click', function(e){
				$form.attr('action', '/code/form');
				$form.submit();
		    });

			$form.find("#recordCountPerPage").on('change', function(e){
				linkPage(1);
				return false;
		    });

			$form.find("#checkAll").on('change', function(e){
				var checked = $(this).is(':checked')
				$form.find('[name=codePkList]').prop('checked', checked);
		    });
		});
		
	    function linkView(codeSe, code) {
			$form.find('#codeSe').val(codeSe);
			$form.find('#code').val(code);
			$form.attr('action', '/code/form');
			$form.submit();
	    }
	
	    function linkPage(pageNo) {
			$form.find('#pageIndex').val(pageNo);
			$form.attr('action', '/code/list');
			$form.submit();
	    }
	</script>
</body>
