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
		<div class="page_wrap vuelayer" v-cloak>
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
							<th>제목 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" v-model="resultVo.title" ref="title" placeholder="제목" class="w100p" />
								</div>
							</td>
						</tr>
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
							<th>타이틀</th>

							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									(PC)<input type="text" ref="mainNttSjPc" maxlength="300" placeholder="제목(PC)" v-model="resultVo.mainNttSjPc" class="w100p" />
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									(MO)<input type="text" ref="mainNttSjMo" maxlength="300" placeholder="제목(MO)" v-model="resultVo.mainNttSjMo" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>서브문구</th>
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									(PC)<textarea v-model='resultVo.mainNttCnPc' ref="mainNttCnPc" placeholder="서브문구(PC)" class="w100p devck" rows='4'></textarea>
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									(MO)<textarea v-model='resultVo.mainNttCnMo' ref="mainNttCnMo" placeholder="서브문구(MO)" class="w100p devck" rows='4'></textarea>
								</div>
							</td>
						</tr>
						<tr>
							<th>배너 이미지</th>
							<td colspan="3" class="tal">
								<div>
									(PC)<br>
									<input type="file" name="imageFilePc" v-on:change="onchangeImageFilePc" />
									<span>(사이즈 : 가로사이즈 기준 1920(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
								</div>
								<div v-if="resultVo.imageAtchIdPc">
									<img :src="'${publicUrl }'+ resultVo.imageFlpthPc"
										style="width:100px; vertical-align: bottom;" />
				                    <a href="javascript:;" v-on:click="onDeleteImagePc">삭제</a>
								</div>
								<br><br>
								<div>
									(MO)<br>
									<input type="file" name="imageFileMobl" v-on:change="onchangeImageFileMobl" />
									<span>(사이즈 : 가로사이즈 기준 375(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
								</div>
								<div v-if="resultVo.imageAtchIdMo">
									<img :src="'${publicUrl }' + resultVo.imageFlpthMobl"
										style="width:100px; vertical-align: bottom;" />
				                    <a href="javascript:;" v-on:click="onDeleteImageMo">삭제</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>영상 URL</th>

							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									(PC)<input type="text" placeholder="영상 URL(PC)"
										v-model="resultVo.mediaUrlPc" class="w100p" ref="mediaUrlPc" />
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									(MO)<input type="text" placeholder="영상 URL(MO)"
										v-model="resultVo.mediaUrlMo" class="w100p" ref="mediaUrlMo" />
								</div>
							</td>
						</tr>
						<tr>
							<th>버튼 여부<span>*</span></th>
							<td class="tal" colspan="3">
								<label><input v-on:click="onBtYn(0)" type="radio" id="btYn0" v-model="resultVo.btYn" name="btYn" value="0" checked="checked"/> 버튼없음</label>&nbsp;
								<label><input v-on:click="onBtYn(1)" type="radio" id="btYn1" v-model="resultVo.btYn" name="btYn" value="1" /> 1개</label>&nbsp;
								<label><input v-on:click="onBtYn(2)" type="radio" id="btYn2" v-model="resultVo.btYn" name="btYn" value="2" /> 2개</label>
							</td>
						</tr>
						<!-- 버튼 1개 영역 -->
						<tr id="show1" style="display: none;">
							<th>버튼 1<span>*</span></th>
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									(PC)<input type="text" id="btSjPc1" ref="btSjPc1" maxlength="50" placeholder="버튼명(PC)" v-model="resultVo.btSjPc1" class="w100p" />
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									(MO)<input type="text" id="btSjMo1" ref="btSjMo1" maxlength="50" placeholder="버튼명(MO)" v-model="resultVo.btSjMo1" class="w100p" />
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									링크<input type="text" id="linkUrl1" ref="linkUrl1" maxlength="200" placeholder="링크" v-model="resultVo.linkUrl1" class="w100p" />
								</div>
							</td>
						</tr>
						<!-- 버튼 2개 영역 -->
						<tr id="show2" style="display: none;">
							<th>버튼 2<span>*</span></th>
							<td class="tal" colspan="3">
								<div class="lbMaxlenPrnt">
									(PC)<input type="text" ref="btSjPc2" maxlength="50" placeholder="버튼명(PC)" v-model="resultVo.btSjPc2" class="w100p" />
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									(MO)<input type="text" ref="btSjMo2" maxlength="50" placeholder="버튼명(MO)" v-model="resultVo.btSjMo2" class="w100p" />
								</div>
								<br>
								<div class="lbMaxlenPrnt">
									링크<input type="text" ref="linkUrl2" maxlength="200" placeholder="링크" v-model="resultVo.linkUrl2" class="w100p" />
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
	<script src="/js/app/MainNttForm.js"></script>
	<script>
		$(function (){
			var options = {
				mainNttSn : ${ empty mainNttSn ? 'null' : mainNttSn },
				mainBbsId : '${mainBbsId}',
			}
			options.lang = '${langId}',
			MainNttForm.init(options);
		});

		function vueUpdated(vm) {
		}


	</script>
</body>