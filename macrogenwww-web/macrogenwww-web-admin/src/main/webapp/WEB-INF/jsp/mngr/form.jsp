<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage"/>
		<form:hidden path="roleId"/>
		<form:hidden path="searchCondition"/>
		<form:hidden path="searchKeyword"/>
	</form:form>

	<form id="editForm" name="editForm" enctype="multipart/form-data">
		<!-- 내용// -->
		<div class="page_wrap vuelayer" v-cloak>
			<div class="title_h4_wrap">
				<h4>&nbsp;</h4>
				<span><em>*</em> 는 필수 입력값</span>
			</div>
			<ul>
				<li>* 아이디는 영문 또는 숫자를 조합하여 5~20자로 입력해주세요.</li>
				<li>* 비밀번호는 영문, 숫자, 특수문자를 조합하여 8~20자로 입력해주세요.</li>
			</ul>

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
								<select name="roldId" v-model="resultVo.roleId">
									<option v-for="option in roleList" v-bind:value="option.roleId">
										{{ option.roleNm }}
									</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>아이디 <span>*</span></th>
							<td colspan="3" class="tal">
								<input type="text" name="loginId" maxlength="20" placeholder="아이디"
									v-model="resultVo.loginId" v-on:change="onchangeLoginId"
									:readonly="resultVo.userSn" />
								<input type="hidden" name="userSn" v-model="resultVo.userSn" />
							</td>
						</tr>
						<tr>
							<th>비밀번호 <span>*</span></th>
							<td>
								<input id="loginPassword" name="loginPassword" type="password" maxlength="20" placeholder="비밀번호 입력" class="w100p" />
							</td>
							<th>비밀번호 확인 <span>*</span></th>
							<td>
								<input id="loginPasswordConf" name="loginPasswordConf" type="password" maxlength="20" placeholder="비밀번호 확인" class="w100p" />
							</td>
						</tr>
						<tr>
							<th>이름 <span>*</span></th>
							<td colspan="3">
								<input type="text" v-model="resultVo.userNm" name="userNm" maxlength="5" placeholder="이름" class="w100p" />
							</td>
						</tr>

						<tr>
							<th>이메일 </th>
							<td colspan="3">
								<input type="text" v-model="resultVo.email" maxlength="50" placeholder="이메일" class="w100p" />
							</td>
						</tr>
						<tr>
							<th>휴대폰번호 </th>
							<td colspan="3">
								<input type="text" v-model="resultVo.mbtlnum" maxlength="50" placeholder="휴대폰번호" class="w100p" />
							</td>
						</tr>
						<tr>
							<th>전화번호 </th>
							<td colspan="3">
								<input type="text" v-model="resultVo.telno" maxlength="50" placeholder="전화번호" class="w100p" />
							</td>
						</tr>

                        <tr v-if="resultVo.userSn">
                            <th>로그인 횟수</th>
                            <td class="tal">{{ resultVo.loginCo | numberWithCommas}}</td>
                            <th>마지막 로그인</th>
                            <td class="tal">{{ resultVo.lastLoginDt | timeToDate('YYYY-MM-DD HH:mm:ss') }}</td>

                        </tr>
                        <tr v-if="resultVo.userSn">
                            <th>비밀번호 입력오류 횟수</th>
                            <td class="tal">{{ resultVo.passwordInputErrorCo | numberWithCommas}}</td>
                            <th>비밀번호 최종변경</th>
                            <td class="tal">{{ resultVo.lastPasswordChangeDt | timeToDate('YYYY-MM-DD HH:mm:ss') }}</td>

                        </tr>
						<tr v-if="resultVo.userSn">
							<th>등록일시</th>
							<td class="tal">{{ resultVo.registDt | timeToDate('YYYY-MM-DD HH:mm:ss') }}</td>
							<th>수정일시</th>
							<td class="tal">{{ resultVo.updtDt | timeToDate('YYYY-MM-DD HH:mm:ss') }}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" name="button" class="btn btnSave" v-on:click="onSubmit">저장</button>
					<button v-if="resultVo.userSn" type="button" name="button" class="btn btnDelete" v-on:click="onDelete">삭제</button>
                    <button v-if="resultVo.userSn" type="button" name="button" class="btn btnInitErrCnt" v-on:click="onInitErrCnt">비밀번호 입력 오류 회수 초기화</button>
					<button type="button" name="button" class="btn btnList" v-on:click="onList">목록</button>
				</div>
			</div>
		</div>
		<!-- //내용 -->

	</form>

	<script type="text/javascript" src="/js/app/MngrForm.js" ></script>
	<script type="text/javascript">
	$(function (){
		var options = {
			userSn : ${ empty userSn ? 'null' : userSn },
			validateOptions: {
				rules: {
					loginId : {
						required: true,
						loginIdFormat: true,
					},
					userNm : { required: true },
					loginPassword: {
						required: true,
						passwordFormat: true,
					},
					loginPasswordConf: {
						equalTo: '#loginPassword'
					},
				},
				messages: {
					loginId: {
						required: '로그인 아이디를 입력해주세요.',
						loginIdFormat: '영문 또는 숫자를 조합하여 5~20자로 입력해주세요.',
					},
					userNm: {
						required: '이름을 입력해주세요.'
					},
					loginPassword: {
						required: '비밀번호는 필수입력입니다',
						passwordFormat: '영문, 숫자, 특수문자를 조합하여 8~20자로 입력해주세요.',
					},
					loginPasswordConf: {
						equalTo: '비밀번호 확인이 일치하지 않습니다'
					}
				}
			}
		}

		MngrForm.init(options);
	});

	</script>

</body>
