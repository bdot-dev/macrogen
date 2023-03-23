<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="searchBeginDt"/>
		<form:hidden path="searchEndDt"/>
		<form:hidden path="searchCondition"/>
		<form:hidden path="searchKeyword"/>
	</form:form>
	
	<form id="editForm" name="editForm" enctype="multipart/form-data">
		<div class="page_wrap vuelayer">
			<div class="title_h4_wrap">
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
							<th>노출여부<span>*</span></th>
							<td class="tal" colspan="3">
								<label v-for="(result, index) in expsrYnList">
									<input type="radio" v-model="resultVo.expsrYn" 
										:value="result.code" name="expsrYns" :id="'expsrYns' + index"/>
									{{ result.codeNm }}
								</label>
							</td>
						</tr>
						<tr>
							<th>노출순서<span>*</span></th>
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									<input type="number" ref="expsrPrty" maxlength="3" placeholder="노출순서" v-model="resultVo.expsrPrty" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>타이틀<span>*</span></th>
							
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									(PC)<input type="text" ref="mainNttSjPc" maxlength="50" placeholder="제목(PC)" v-model="resultVo.mainNttSjPc" class="w100p" />
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									(MO)<input type="text" ref="mainNttSjMo" maxlength="50" placeholder="제목(MO)" v-model="resultVo.mainNttSjMo" class="w100p" />
								</div>
							</td>
						</tr>
						<!-- <tr>
							<th>설명 문구<span>*</span></th>
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									(PC)<textarea v-model='resultVo.mainNttCnPc' ref="mainNttCnPc" placeholder="서브문구(PC)" class="w100p devck" rows='4'></textarea>
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									(MO)<textarea v-model='resultVo.mainNttCnMo' ref="mainNttCnMo" placeholder="서브문구(MO)" class="w100p devck" rows='4'></textarea>
								</div>
							</td>
						</tr> -->
						<tr>
							<th>카드 이미지 <span>*</span></th>
							<td colspan="3" class="tal">
								<div>
									(PC)<br>
									<input type="file" name="imageFilePc" v-on:change="onchangeImageFilePc" />
									<span>(사이즈 : 가로사이즈 기준 1030(px)  |  용량 : 3MB 이하  |  형식 : jpg, png)</span>
								</div>
								<div v-if="resultVo.imageAtchIdPc">
									<img :src="'${publicUrl }'+ resultVo.imageFlpthPc"
										style="width:100px; vertical-align: bottom;" />
				                    <!-- <a href="javascript:;" v-on:click="onDeleteImage">삭제</a> -->
								</div>
								<br><br>
								<div>
									(MO)<br>
									<input type="file" name="imageFileMobl" v-on:change="onchangeImageFileMobl" />
									<span>(사이즈 : 가로사이즈 기준 335(px)  |  용량 : 3MB 이하  |  형식 : jpg, png)</span>
								</div>
								<div v-if="resultVo.imageAtchIdMo">
									<img :src="'${publicUrl }' + resultVo.imageFlpthMobl"
										style="width:100px; vertical-align: bottom;" />
				                    <!-- <a href="javascript:;" v-on:click="onDeleteImage">삭제</a> -->
								</div>
							</td>
						</tr>
						<tr>
							<th>링크<span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" id="linkUrl1" ref="lickUrl1" maxlength="50" placeholder="링크" v-model="resultVo.linkUrl1" class="w100p" />
								</div>
							</td>
						</tr>
					</tbody>
				</table>					
			</div>	
				
			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" name="button" class="btn" v-on:click="onSubmit">저장</button>
					<button v-if="resultVo.mainNttSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>
		
		</div>
	</form>
	<script src="/js/app/MainBusinessForm.js"></script>
	<script>
		$(function (){
			var options = {
				mainNttSn : ${ empty mainNttSn ? 'null' : mainNttSn },
				mainBbsId : '${mainBbsId}',
			}
			options.lang = '${langId}',
			MainBusinessForm.init(options);
		});
	
		function vueUpdated(vm) {
		}

	</script>
</body>
