<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<!-- 검색조건 저장용 -->
	<form:form commandName="resultVo" id="editForm" name="editForm">
	<form:hidden path="pageIndex" />
	<form:hidden path="mode" />

		<!-- //페이지 타이틀 -->

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
							<th>관리자구분 <span>*</span></th>
							<td colspan="3" class="tal">
								${resultVo.roleNm } (${resultVo.roleId })
							</td>
						</tr>
						<tr>
							<th>아이디 <span>*</span></th>
							<td colspan="3" class="tal">
								${resultVo.loginId}
								<form:hidden path="userSn" />
								<form:hidden path="loginId" />
							</td>
						</tr>
						<tr>
							<th>패스워드 <span>*</span></th>
							<td>
								<input id="loginPassword" name="loginPassword" type="password" maxlength="20" placeholder="비밀번호 입력" class="w100p" />
							</td>
							<th>패스워드 확인 <span>*</span></th>
							<td>
								<input id="loginPasswordConf" name="loginPasswordConf" type="password" maxlength="20" placeholder="비밀번호 확인" class="w100p" />
							</td>
						</tr>
						<tr>
							<th>이름 <span>*</span></th>
							<td colspan="3" class="tal">
								${resultVo.userNm}
								<form:hidden path="userNm" />
							</td>
						</tr>

						<tr>
							<th>이메일</th>
							<td colspan="3">
								<form:input path="email" maxlength="50" placeholder="이메일" class="w100p" />
							</td>
						</tr>

						<tr>
							<th>휴대폰번호</th>
							<td colspan="3">
								<form:input path="mbtlnum" maxlength="50" placeholder="휴대폰번호" class="w100p" />
							</td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td colspan="3">
								<form:input path="telno" maxlength="50" placeholder="전화번호" class="w100p" />
							</td>
						</tr>

						<c:if test="${resultVo.mode eq 'UPDATE' }">
						<tr>
							<th>등록일시</th>
							<td><fmt:formatDate value="${resultVo.registDt }" pattern="yyyy-MM-dd HH:mm" /></td>
							<th>수정일시</th>
							<td><fmt:formatDate value="${resultVo.updtDt }" pattern="yyyy-MM-dd HH:mm" /></td>
						</tr>
						</c:if>

					</tbody>
				</table>
			</div>
			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" name="button" class="btn btnSave">저장</button>
					<!-- <button type="button" name="button" class="btn btnList">목록</button> -->
				</div>
			</div>
		</div>
		<!-- //내용 -->

	</form:form>

    <c:if test="${param.alert eq 'expired' }">
    <script>
    	alert('비밀번호를 변경해주세요.')
    </script>
    </c:if>

	<script>
	var $form = $('#editForm');

	$(function() {
		var validateOptions = {
			rules: {
				roleId: { required: true },
				loginPassword: {
					passwordFormat: true },
				loginPasswordConf: {
					equalTo: '#loginPassword'},
			},
			messages: {
				roleId: { required: '필수입력입니다' },
				loginPassword: {
					passwordFormat: '영문, 숫자, 특수문자를 조합하여 8~20자로 입력해주세요'},
				loginPasswordConf: {
					equalTo: '비밀번호 확인이 일치하지 않습니다'},
			}
		};

		$.validator.addMethod('passwordFormat', function(value, element) {
			return this.optional(element) || checkPasswordFormat(value);
		});

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
				url: '/myinfo/submit',
				success: function(data) {
					console.log(data);
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

	});

	function goList() {
		$form.attr('action', '/myinfo/form');
		$form.submit();
	}
	</script>
</body>