<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="charstVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage"/>
		<form:hidden path="searchKeyword"/>
	</form:form>

	<form:form commandName="resultVo" id="editForm" name="editForm" enctype="multipart/form-data">
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
						<th>문자열ID <span>*</span></th>
						<td colspan="3">
                            <c:if test="${resultVo.mode eq 'UPDATE' }">
                                <form:input path="charstId" class="w100p" readonly="true" />
                            </c:if>
                            <c:if test="${resultVo.mode ne 'UPDATE' }">
                                <form:input path="charstId" maxlength="50" placeholder="영소문자,숫자,_,.사용할것 중복안되게 입력할것. (예: common.all)" class="w100p" />
                            </c:if>
						</td>
					</tr>
					<tr>
						<th>문자열 <span>*</span></th>
						<td colspan="3">
                            <form:textarea path="charst" style="height:150px; width:100%;" placeholder="전체" />
						</td>
					</tr>
                    <tr>
                        <th>문자열(한글) <span>*</span></th>
                        <td colspan="3">
                            <form:textarea path="charstKo" style="height:150px; width:100%;" placeholder="전체" />
                        </td>
                    </tr>
                    <tr>
                        <th>문자열(영어) <span>*</span></th>
                        <td colspan="3">
                            <form:textarea path="charstEn" style="height:150px; width:100%;" placeholder="ALL" />
                        </td>
                    </tr>
                    <tr>
                        <th>문자열(중국어) <span>*</span></th>
                        <td colspan="3">
                            <form:textarea path="charstZh" style="height:150px; width:100%;" placeholder="全部" />
                        </td>
                    </tr>
                    <tr>
                        <th>문자열(일본어) <span>*</span></th>
                        <td colspan="3">
                            <form:textarea path="charstJa" style="height:150px; width:100%;" placeholder="全体" />
                        </td>
                    </tr>

					<c:if test="${resultVo.mode eq 'UPDATE' }">
					<tr>
						<th>등록일시</th>
						<td class="tal"><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy-MM-dd HH:mm" /></td>
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
				charstId: { required: true },
				charst: { required: true },
				charstKo: { required: true },
				charstEn: { required: true },
				charstZh: { required: true },
			},
			messages: {
				charstId: { required: '필수입력입니다' },
				charst: { required: '필수입력입니다' },
				charstKo: { required: '필수입력입니다' },
				charstEn: { required: '필수입력입니다' },
				charstZh: { required: '필수입력입니다' },
			}
		};

		$form.find(".btnSave").on('click', function(e) {

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
				url: '/charst/submit',
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
			if (!$form.find('#charstId').val()) {
				alert('비정상접근입니다.');
				return false;
			}

			if (!confirm('삭제하시겠습니까?')) {
				return false;
			}

			$form.ajaxSubmit({
				type: 'post', dataType: 'json',
				url: '/charst/delete',
				success: function(data) {
					if (data && typeof data !== 'object') {
						data = $.parseJSON(data);
					}
					if (data) {
						if (data.result === 'success') {
							alert('삭제되었습니다.');
							goList();
						} else if (data.result === 'fail_has_children') {
							alert('삭제할 수 없습니다 (참조되고 있는 정보 입니다.)');
						}
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
		$listForm.attr('action', '/charst/list');
		$listForm.submit();
	}

	</script>

</body>
