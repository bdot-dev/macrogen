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
                        <tr v-if="menu.id">
                            <th>메뉴 아이디</th>
                            <td class="tal">
                              {{ menu.id }}
                            </td>
                            <th>상위메뉴 아이디</th>
                            <td class="tal">
                              {{ menu.parentId ? menu.parentId : '-' }}
                            </td>
                        </tr>
						<tr>
							<th>메뉴이름 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt"><input type="text" v-model="menu.text"
									placeholder="메뉴이름" maxlength="15" class="w100p txtMaxlen"></div>
							</td>
						</tr>
						<tr>
							<th>노출여부</th>
							<td colspan="3">
								<div class="tal">
	   								<label v-for="(result, index) in expsrYnList">
	   									<input type="radio" v-model="menu.expsrYn"
	   										:value="result.code" name="expsrYn" :id="'expsrYn' + index">
	   									{{result.codeNm}}
	   								</label>
								</div>
							</td>
						</tr>
						<tr>
							<th>메뉴구분</th>
							<td colspan="3" class="tal">
								<label v-for="(result, index) in menuSeCodeList">
   									<input type="radio" v-model="menu.menuSeCode"
   										:value="result.code" name="menuSeCode" :id="'menuSeCode' + index">
   									{{result.codeNm}}
   								</label>
								<div v-if="menu.menuSeCode === 'URL'" class="tal">
									메뉴URL
									<div class="lbMaxlenPrnt"><input type="text" v-model="menu.menuUrl" maxlength="2000"
									  placeholder="메뉴URL" class="w100p txtMaxlen" style="width:90%; display: inline-block;"></div>
								</div>
							</td>
						</tr>
                        <tr>
                            <th>클래스명(css) </th>
                            <td colspan="3" class="tal">
                                <input type="text" v-model="menu.classNm"
                                  placeholder="클래스명" class="w100p" maxlength="50" style="width:150px;">
                            </td>
                        </tr>
						<tr>
							<th>메타태그 키워드 </th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt"><input type="text" v-model="menu.metaTagKwrd"
									placeholder="메타태그 키워드" maxlength="100" class="w100p txtMaxlen"></div>
							</td>
						</tr>
						<tr>
							<th>메타태그 설명 </th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt"><input type="text" v-model="menu.metaTagDc"
									placeholder="메타태그 설명" maxlength="200" class="w100p txtMaxlen"></div>
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

	<script src="/js/app/MenuList.js"></script>
	<script>
		$(function() {
			var options = {};
			MenuList.init(options);
		});
	</script>

</body>
