<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="roleVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage"/>
		<form:hidden path="searchCondition"/>
		<form:hidden path="searchKeyword"/>
	</form:form>

	<form:form commandName="resultVo" id="editForm" name="editForm">
	<form:hidden path="mode" />
	<input type="hidden" id="menuSnList" name="menuSnList" />
	<input type="hidden" id="pendncyMenuSnList" name="pendncyMenuSnList" />
	<input type="hidden" id="accessSnList" name="accessSnList" />
	
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
						<th>권한ID <span>*</span></th>
						<td colspan="3">
							<form:input path="roleId" maxlength="50" placeholder="권한ID" class="w100p" readonly="${resultVo.mode eq 'UPDATE' ? true : false }" />
						</td>
					</tr>
					<tr>
						<th>권한이름 <span>*</span></th>
						<td colspan="3" class="tal">
							<form:input path="roleNm" maxlength="15" placeholder="권한이름" class="w100p" />
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

					<tr>
						<th>접근가능 메뉴<span></span></th>
						<td colspan="3" class="tal">
							<div class="tree jstree" id="jstree"></div>
						</td>
					</tr>
					<style>
					ul.accUl li {padding:3px 0px;}
					ul.accUl li div.checkUrl {display:inline-block;width:3%;text-align:center;}
					ul.accUl li div.titleUrl {display:inline-block;width:85%;}
					</style>
					<tr>
						<th>URL 접근 권한<span></span></th>
						<td colspan="3" class="tal">
							<ul class="accUl">
								<c:forEach items="${urlList }" var="item" varStatus="stats">
								<li>
									<div class="checkUrl">
										<c:choose>
											<c:when test="${item.accFlag eq 'Y'}">
												<input type="checkbox" id="access_<c:out value="${stats.count }" />" value="<c:out value="${item.menuSn }" />" name="accessSn" checked="true"  />
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="access_<c:out value="${stats.count }" />" value="<c:out value="${item.menuSn }" />" name="accessSn" />
											</c:otherwise>
										</c:choose>
										
									</div>
									<div class="titleUrl" >
										<label for="access_<c:out value="${stats.count }" />">
											<c:out value="${item.menuNmPath }" /> ( <c:out value="${item.url }" /> )
										</label>
									</div>
								</li>
								</c:forEach>
							</ul>
						</td>
					</tr>
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

	<script src="/js/app/RoleForm.js"></script>
	<script>
		$(function() {
			var options = {};
			options.validateOptions = {
				rules: {
					roleId: { required: true },
					roleNm: { required: true },
				},
				messages: {
					roleId: { required: '필수입력입니다' },
					roleNm: { required: '필수입력입니다' },
				}
			};
			RoleForm.init(options);
		});
	</script>
	
</body>
