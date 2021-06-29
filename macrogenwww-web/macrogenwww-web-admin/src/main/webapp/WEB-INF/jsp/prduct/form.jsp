<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<style>
	.prductSfe table th{text-align:left;}
	.ctgryUl {width : 100%;}
	.ctgryUl li {padding:5px 0px;display:inline-block;width:350px}
	.ctgryUl li span {border:1px solid #ddd; padding:2px; color:red;float:right;}
	</style>
</head>
<body>
	<!-- 검색조건 저장용 -->
	<form:form commandName="listVo" id="listForm" name="listForm">
		<form:hidden path="pageIndex" />
		<form:hidden path="recordCountPerPage"/>
		<form:hidden path="searchCondition"/>
		<form:hidden path="searchKeyword"/>
		<form:hidden path="prductKndCode"/>
		<form:hidden path="expsrYn"/>
		<form:hidden path="searchPrductctgrySn"/>
	</form:form>

	<form id="editForm" name="editForm" enctype="multipart/form-data" >
		<!-- 내용// -->
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
						<tr v-if="resultVo.prductSn">
							<th>제품 코드<span>*</span></th>
							<td colspan="3" class="tal">
								{{ resultVo.prductSn }}
							</td>
						</tr>
						<tr>
							<th>제품 구분<span>*</span></th>
							<td colspan="3" class="tal">
								<select name="prductKndCode" v-model="resultVo.prductKndCode">
									<option :value="null" >선택</option>
									<option v-for="result in prductKndList" :value="result.code">{{result.codeNm}}</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>제품명 <span>*</span></th>
							<td colspan="3" class="tal">
								<div class="lbMaxlenPrnt">
									<input type="text" name="prductNm" maxlength="50" placeholder="제품명" v-model="resultVo.prductNm" class="w100p" />
								</div>
							</td>
						</tr>
						<tr>
							<th>가격<span>*</span</th>
							<td colspan="3" class="tal">
								<input type="number" name="prductPc" maxlength="9" v-model.number="resultVo.prductPc" placeholder="가격" /> 원
							</td>
						</tr>
						<tr>
							<th>노출 여부<span>*</span></th>
							<td colspan="3" class="tal">
								<label v-for="(result, index) in expsrYnList">
									<input type="radio" name="expsrYn" id="'expsrYn'+index" :value="result.code"
										v-model="resultVo.expsrYn" />{{result.codeNm}}</label>
							</td>
						</tr>
						<tr>
							<th>제품카테고리(대표)</th>
							<td colspan="3" style="text-align:left;">
								<button type="button" name="button" class="btn" v-on:click="onPopupReprsntPrductctgry">검색</button>
								<div v-if="resultVo.reprsntCtgrySn">
									{{ resultVo.reprsntCtgryNmPath }}  <a href="javascript:;" v-on:click="onRemoveReprsntPrductctgry">삭제</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>제품카테고리(추가)</th>
							<td colspan="3" style="text-align:left;">
								<button type="button" name="button" class="btn" v-on:click="onPopupPrductctgry">검색</button>
								<div>
									<ul v-for="(result, index) in resultVo.prductctgryList" class="ctgryUl">
										<li> {{ result.ctgryNmPath }}  <span v-on:click="onRemoveCtgry(index)" > 삭제 </span></li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<th>이미지(대표)</th>
							<td colspan="3" class="tal">
								<div>
									<input type="file" name="reprsntImageFile" v-on:change="onchangeReprsntImageFile" />
									<span>(사이즈 : 가로사이즈 기준 1000(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif)</span>
								</div>
								<div v-if="resultVo.reprsntImageAtchId">
									<img :src="'${publicUrl }' + resultVo.reprsntImageFlpth"
										style="width:100px; vertical-align: bottom;" />
				                    <a href="javascript:;" v-on:click="onDeleteReprsntImage">삭제</a>
								</div>
							</td>

						</tr>
						<tr>
							<th>이미지(추가)</th>
							<td colspan="3" class="tal">
								<div v-if="!resultVo.imageList || resultVo.imageList.length < 10">
									<input type="file" name="imageFile" v-on:change="onchangeImageFile" />
									<span>(사이즈 : 가로사이즈 기준 1000(px)  |  용량 : 3MB 이하  |  형식 : jpg, png, gif | 최대 10장까지)</span>
								</div>
								<div v-for="(result, index) in resultVo.imageList">
									<img :src="'${publicUrl }' + result.physiclFlpth"
										style="width:100px; vertical-align: bottom;" />
				                    <a href="javascript:;" v-on:click="onDeleteImage(index)">삭제</a>
									이미지순서
				                	<input type="text" v-model="result.sortOrdr"
				                		v-on:change="onchangeImageSortOrdr"
				                		maxlength="3" style="width: 100px;" />
								</div>
							</td>

						</tr>

						<tr>
							<th>관련제품</th>
							<td colspan="3" class="tal">
								<button type="button" name="button" class="btn" v-on:click="onPopupRelatePrduct">검색</button>
								<div>
									<ul v-for="(result, index) in resultVo.relatePrductList">
										<li>
											<img v-if="result.relateReprsntImageAtchId" :src="'${publicUrl }' + result.relateReprsntImageFlpth"
												style="width:100px; vertical-align: bottom;" />
											{{ result.relatePrductNm }}
											<a href="javascript:;" v-on:click="onRemoveRelatePrduct(index)" > 삭제 </a>
										</li>
									</ul>
								</div>
							</td>

						</tr>

					</tbody>
				</table>
			</div>

			<div class="board_wrap mb20" v-if="resultVo.prductSn">
				<table class="table_row mb20">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody>
						<tr>
							<th>작성자</th>
							<td class="tal">
								<div class="lbMaxlenPrnt">
									{{ resultVo.registerNm }}
								</div>
							</td>
							<th>등록일</th>
							<td class="tal">
								<div class="lbMaxlenPrnt">
									{{ resultVo.registDt  | timeToDate('YYYY-MM-DD HH:mm:ss')}}
								</div>
							</td>
						</tr>
						<tr>
							<th>수정자</th>
							<td class="tal">
								<div class="lbMaxlenPrnt">
									{{ resultVo.updusrNm }}
								</div>
							</td>
							<th>수정일</th>
							<td class="tal">
								<div class="lbMaxlenPrnt">
									{{ resultVo.updtDt  | timeToDate('YYYY-MM-DD HH:mm:ss')}}
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="board_wrap mb20">
				<div class="btn_wrap tar">
					<button type="button" name="button" class="btn" v-on:click="onSubmit">저장</button>
					<button v-if="resultVo.prductSn" type="button" name="button" class="btn" v-on:click="onDelete">삭제</button>
					<button type="button" name="button" class="btn" v-on:click="onList">목록</button>
				</div>
			</div>

		</div>
		<!-- //내용 -->
	</form>
	<script src="/js/app/PrductForm.js"></script>
	<script>
	$(function (){
		var options = {
			prductSn : ${ empty prductSn ? 'null' : prductSn },
			validateOptions: {
				rules: {
					prductKndCode : { required: true },
					prductNm : { required: true },
					prductPc : { required: true },
					expseYn : { required: true },
				},
				messages: {
					prductKndCode : { required: '필수입력(제품 구분)' },
					prductNm : { required: '필수입력(제품명)' },
					prductPc : { required: '필수입력(가격)' },
					expseYn : { required: '필수입력(노출여부)' },
				}
			}
		};
		PrductForm.init(options);
	});

	function vueUpdated(vm) {
		console.log('vueUpdated')
	}
	</script>

</body>
