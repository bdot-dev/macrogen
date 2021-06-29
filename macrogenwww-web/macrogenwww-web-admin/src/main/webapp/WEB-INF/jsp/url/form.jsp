<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="urlVo" id="listForm" name="listForm">
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
						<th>URL <span>*</span></th>
						<td colspan="3">
							<form:input path="url" maxlength="50" placeholder="URL" class="w100p" 
								readonly="${resultVo.mode eq 'UPDATE' ? true : false }" />
						</td>
					</tr>
					<tr>
						<th>메뉴 <span>*</span></th>
						<td colspan="3" class="tal">
							<form:select path="menuSn">
								<form:options items="${menuList }" itemValue="menuSn" itemLabel="menuNmPath" />
							</form:select>
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
				url: { required: true },
				menuSn: { required: true },
			},
			messages: {
				url: { required: '필수입력입니다' },
				menuSn: { required: '필수입력입니다' },
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
				url: '/url/submit',
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
			if (!$form.find('#url').val()) {
				alert('비정상접근입니다.');
				return false;
			}
			
			if (!confirm('삭제하시겠습니까?')) {
				return false;
			}

			$form.ajaxSubmit({
				type: 'post', dataType: 'json',
				url: '/url/delete',
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
		$listForm.attr('action', '/url/list');
		$listForm.submit();
	}
	</script>
</body>
