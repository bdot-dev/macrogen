<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="page_wrap">

		<div class="board_wrap tree_box mb20">
			<div class="tree jstree" id="jstree" style="overflow-x:scroll;"></div>

            <form id="editForm" name="editForm" enctype="multipart/form-data">

                <div id="ctgryLayer" v-cloak v-if="ctgry.id">
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
    						<tr v-if="ctgry.id">
    							<th>카테고리코드<span>*</span></th>
    							<td colspan="3" v-text="ctgry.id" class="tal">
    							</td>
    						</tr>
    						<tr>
    							<th>카테고리이름 <span>*</span></th>
    							<td colspan="3">
    								<input type="text" v-model="ctgry.text" id="ctgryNm"
    									placeholder="카테고리이름" class="w100p" maxlength="20">
    							</td>
    						</tr>
    						<tr>
    							<th>노출여부 <span>*</span></th>
    							<td colspan="3" class="tal">

    								<label v-for="(result, index) in expsrYnList">
    									<input type="radio" v-model="ctgry.expsrYn"
    										:value="result.code" name="expsrYn" :id="'expsrYn' + index">
    									{{result.codeNm}}
    								</label>

    							</td>
    						</tr>
    					</tbody>
    				</table>
    				<div class="board_wrap mb20">
    					<div class="btn_wrap tar">
    						<button type="button" v-on:click="onclickSave(ctgry.id )"
    							class="btn">저장</button>
    					</div>
    				</div>
    			</div>

            </form>

		</div>
	</div>
	<script src="/js/app/PrductctgryList.js"></script>
	<script>
		$(function() {
			var options = {};
			PrductctgryList.init(options);
		});
	</script>

</body>