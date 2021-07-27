<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form name="editForm" id="editForm" method="post">

	<!-- 내용// -->
	<div class="page_wrap">
		<div class="title_h4_wrap">
			<h4>&nbsp;</h4>
			<span>초기 비밀 번호 변경</span>
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
						<th>아이디 <span>*</span></th>
						<td colspan="3" class="tal">
							${resultVo.loginId}
						</td>
					</tr>
					<tr>
						<th>패스워드 <span>*</span></th>
						<td>
							<input id="loginPassword" name="loginPassword" type="password" maxlength="20" placeholder="비밀번호 입력" class="w100p" />
							<span>영문/숫자/특수문자를 조합하여 8~20자</span>
						</td>
					</tr>
					<tr>
						<th>패스워드 확인 <span>*</span></th>
						<td>
							<input id="loginPasswordConf" name="loginPasswordConf" type="password" maxlength="20" placeholder="비밀번호 확인" class="w100p" />
						</td>
					</tr>

				</tbody>
			</table>
		</div>
		<div class="board_wrap mb20">
			<div class="btn_wrap tal">
				<button type="button" name="button" class="btn btnSave">저장</button>
				<!-- <button type="button" name="button" class="btn btnList">목록</button> -->
			</div>
		</div>
	</div>
	<!-- //내용 -->

	</form>

	<script>
	var $form = $('#editForm');

	$(function() {
		var validateOptions = {
			rules: {
				loginPassword: {
					required: true,
					passwordFormat: true },
				loginPasswordConf: {
					equalTo: '#loginPassword'},
			},
			messages: {
				loginPassword: {
					required: '비밀번호를 입력하세요.',
					passwordFormat: '비밀번호 형식을 확인해 주세요.\n\n(영문/숫자/특수문자를 조합하여 8~20자, 아이디는 포함할 수 없음, 3개이상 연속된 문자열 지정불가(예:123, abc, ABC))'},
				loginPasswordConf: {
					equalTo: '비밀번호 확인이 일치하지 않습니다'},
			}
		};

		$.validator.addMethod('passwordFormat', function(value, element) {
			return this.optional(element) || checkPasswordFormat(value, '${resultVo.loginId}');
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
				url: '/change-initial-password/submit',
				success: function(data) {
					console.log(data);
					if (data && typeof data !== 'object') {
						data = $.parseJSON(data);
					}
					if (data) {
						if (data.result === 'success') {
							alert('저장되었습니다.');
							location.href = '/login';
						} else if (data.result == 'invalid_password_equal') {
							alert('동일한 비밀번호로 변경할 수 없습니다.')
						}
					}
				}
			});
	    });

	});

	</script>
</body>