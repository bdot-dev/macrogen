<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="codeVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage"/>
		<form:hidden path="searchCondition"/>
		<form:hidden path="searchKeyword"/>
	</form:form>

	<form:form commandName="resultVo" id="editForm" name="editForm">
	<form:hidden path="mode" />

	<!-- 내용// -->
	<div class="page_wrap">
		<div class="title_h4_wrap">
			<h4>&nbsp;</h4>
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
						<th>코드구분 <span>*</span></th>
						<td colspan="3">
							<form:input path="codeSe" maxlength="50" placeholder="코드구분" class="w100p" readonly="${resultVo.mode eq 'UPDATE' ? true : false }" />
						</td>
					</tr>
					<tr>
						<th>코드 <span>*</span></th>
						<td colspan="3">
							<form:input path="code" maxlength="50" placeholder="코드" class="w100p" readonly="${resultVo.mode eq 'UPDATE' ? true : false }" />
						</td>
					</tr>
					<tr>
						<th>코드명<span>*</span></th>
						<td colspan="3">
							<form:input path="codeNm" maxlength="200" placeholder="코드명" class="w100p" />
						</td>
					</tr>
					<tr>
						<th>코드명(국문)<span>*</span></th>
						<td colspan="3">
							<form:input path="codeNmKo" maxlength="200" placeholder="코드명(국문)" class="w100p" />
						</td>
					</tr>
					<tr>
						<th>코드명(영문)<span>*</span></th>
						<td colspan="3">
							<form:input path="codeNmEn" maxlength="200" placeholder="코드명(영문)" class="w100p" />
						</td>
					</tr>
					<tr>
						<th>정렬순서<span>*</span></th>
						<td colspan="3">
							<form:input path="sortOrdr" maxlength="5" placeholder="정렬순서(숫자)" class="w100p" />
						</td>
					</tr>

					<c:if test="${resultVo.mode eq 'UPDATE' }">
					<tr>
						<th>등록일시</th>
						<td><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy-MM-dd HH:mm" /></td>
						<th>수정일시</th>
						<td class="tal"><fmt:formatDate value="${resultVo.updtDt }" pattern="yyyy-MM-dd HH:mm" /></td>
					</tr>
					</c:if>

				</tbody>
			</table>
		</div>
		<div class="board_wrap mb20">
			<div class="btn_wrap tar">
				<button type="button" name="button" class="btn btnSave">저장</button>
				<c:if test="${resultVo.mode eq 'UPDATE' }">
				<button type="button" name="button" class="btn btnDelete">삭제</button>
				</c:if>
				<button type="button" name="button" class="btn btnList">목록</button>
			</div>
		</div>
	</div>
	<!-- //내용 -->

	</form:form>

	<script>
	var $form = $('#editForm');

	$(function() {
		var validateOptions = {
			rules: {
				codeSe: { required: true },
				code: { required: true },
				codeNm: { required: true },
				sortOrdr: { required: true, number: true },
			},
			messages: {
				codeSe: { required: '필수입력입니다' },
				code: { required: '필수입력입니다' },
				codeNm: { required: '필수입력입니다' },
				sortOrdr: {
					required: '필수입력입니다',
					number: '숫자를 입력하세요.'
				},
			}
		};

		$form.find(".btnSave").on('click', function(e){

			// validate
			validator = $form.validate(validateOptions);
			if (!$form.valid()) {
				return false;
			}

			if (!confirm('저장하시겠습니까?')) {
				return false;
			}

			$form.ajaxSubmit({
				type: 'post', dataType: 'json',
				url: '/code/submit',
				success: function(data) {
					if (data && typeof data !== 'object') {
						data = $.parseJSON(data);
					}
					if (data && data.result === 'success') {
						alert('저장되었습니다.');
						goList();
					}
				}
			});
	    });

		$form.find(".btnDelete").on('click', function(e){
			if (!$form.find('#codeSe').val() || !$form.find('#code').val()) {
				alert('비정상접근입니다.');
				return false;
			}

			if (!confirm('삭제하시겠습니까?')) {
				return false;
			}

			$form.ajaxSubmit({
				type: 'post', dataType: 'json',
				url: '/code/delete',
				success: function(data) {
					if (data && typeof data !== 'object') {
						data = $.parseJSON(data);
					}
					if (data && data.result === 'success') {
						alert('삭제되었습니다.');
						goList();
					}
				}
			});
	    });

		$form.find(".btnList").on('click', function(e){
			goList();
	    });


	});

	function goList() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/code/list');
		$listForm.submit();
	}
	</script>
</body>
