<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="page_wrap">

		<div class="board_wrap tree_box mb20">
			<div class="tree jstree" id="jstree"></div>

			<div id="menuLayer" v-cloak v-if="menu.id">
				<div class="title_h4_wrap">
					<span><em>*</em> 는 필수 입력값</span>
				</div>
				<table class="table_row mb20">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody>
						<tr>
							<th>메뉴순번 <span>*</span></th>
							<td colspan="3" class="tal">
								<input type="text" v-model="menu.id"
									class="w100p" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th>메뉴이름 <span>*</span></th>
							<td colspan="3">
								<input type="text" v-model="menu.text"
									placeholder="메뉴이름" class="w100p">
							</td>
						</tr>
						<tr>
							<th>메뉴URL</th>
							<td colspan="3">
								<input type="text" v-model="menu.menuUrl"
									placeholder="메뉴URL" class="w100p">
							</td>
						</tr>
					</tbody>
				</table>
				<div class="board_wrap mb20">
					<div class="btn_wrap tar">
						<button type="button" v-on:click="onclickSave(menu.id )"
							class="btn">저장</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="/js/app/MngrmenuList.js"></script>
	<script>
		$(function() {
			var options = {};
			MngrmenuList.init(options);
		});
	</script>

</body>
