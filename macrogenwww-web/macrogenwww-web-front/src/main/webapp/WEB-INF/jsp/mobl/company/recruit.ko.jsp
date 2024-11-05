<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="non-bg">
        <header class="header">
		    <div class="inner">
		        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
		        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
		    </div>
		</header>

        <div class="frame">
            <h2 class="font-h1">채용안내</h2>
        </div>
    </div>

	<form id="listForm" name="listForm">

    <div class="container pt-0 vuelayer">
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

        <div class="macrogen recruitment-info">

            <!-- s 전형절차 -->
            <div class="section">
                <div class="font-h5">전형절차</div>
                <div class="img-recruitment-info">
                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-recruitment-info.png" alt="전형절차">
                </div>
            </div>
            <!-- e 전형절차 -->

            <!-- s 상시채용 -->
            <div class="section">
                <div class="font-h5">상시채용</div>
                <div class="font-body">지원양식을 다운로드하여 작성한 후 채용 담당자의 메일로 송부해주시기 바랍니다.</div>
                <div class="file-download">
                    <div v-if="applFormVo && applFormVo.applFormWordAtchId" class="item">
                        <i class="icon ico-file-doc"></i>
                        <span class="font-body-b">마크로젠 입사지원양식.doc</span>
                        <a :href="'/${rc.locale.language}/company/recruit/download/file/'  + applFormVo.applFormWordAtchId" target="_blank" class="download"><i class="icon ico-download-black"></i></a>
                    </div>
                    <div v-if="applFormVo && applFormVo.applFormHwpAtchId" class="item">
                        <i class="icon ico-file-hwp"></i>
                        <span class="font-body-b">[자사양식]마크로젠_상시채용_입사지원양식.hwp</span>
                        <a :href="'/${rc.locale.language}/company/recruit/download/file/'  + applFormVo.applFormHwpAtchId" target="_blank" class="download"><i class="icon ico-download-black"></i></a>
                    </div>
                </div>
                <div class="btn-wrap">
                    <a href="mailto:hire@macrogen.com" target="_blank" class="btn btn-primary btn-round"><span>채용담당자 메일접수</span></a>
                </div>
            </div>
            <!-- e 상시채용 -->

            <!-- s 채용공고 -->
            <div class="section">
                <div class="font-h5">채용공고</div>
                <div class="board">
                    <div class="text-list">
                        <div class="dropdown">
                            <div class="select">
                                <span>{{ listVo.searchSportSeCodeNm ? listVo.searchSportSeCodeNm : '지원구분' }}</span>
                                <i class="ico-select-nor"></i>
                            </div>
                            <input type="hidden" title="select">
                            <ul class="dropdown-menu">
                            	<li @click="onSportSeCode('', '')">지원구분</li>
                                <li v-for="(result, index) in sportSeCodeList"
                                	@click="onSportSeCode(result.code, result.codeNm${lang})">{{ result.codeNm${lang} }}</li>
                            </ul>
                        </div>
                        <ul v-if="resultList.length > 0" class="category-list flag">

                            <li v-for="(result, index) in resultList" class="item">
	                            <a href="javascript:;" @click="onViewLink(result.empaSn)">
                                    <span class="badge-recruit" :class="{ 'ongoing' : result.rceptSttusCode === 'P' }"><span class="sr-only">{{ result.rceptSttusCodeNm }}</span></span>
                                    <span class="font-body-h-b">{{ result.sportSeCodeNm }}</span>
                                    <span class="font-h7">{{ result.empaSj }}</span>
                                    <span class="font-date">{{ result.rceptBeginDe | timeToDate('YYYY.MM.DD') }} - {{ result.rceptEndDe | timeToDate('YYYY.MM.DD') }}</span>
                                </a>
                            </li>

                        </ul>
                        <div v-if="resultList.length > 0 && paginationInfo.currentPageNo < paginationInfo.lastPageNo" class="btn-wrapper">
                            <a href="javascript:;" class="btn-more" @click="onMore"><span class="sr-only">더보기</span></a>
                        </div>

	                    <%-- 목록 없을경우 --%>
                        <div v-if="resultList.length == 0 && paginationInfo.currentPageNo" class="btn-wrapper">
		                    <div class="empty">
		                        <div class="img"><img src="/publishing/mobile-ko/dist/img/newsroom/img-empty.png" alt="등록된 게시물이 없습니다"></div>
		                        <div class="font-body">등록된 게시물이 없습니다</div>
		                    </div>
		                </div>
                    </div>
                </div>
            </div>
            <!-- e 채용공고 -->
        </div>
    </div>

    <script>
		var $form = $('#listForm');

    	var vue = new Vue({
			el : '.vuelayer',
			data : {
				listVo : {
					pageIndex: ${ listVo.pageIndex },
					recordCountPerPage : ${ listVo.recordCountPerPage },
					searchSportSeCode : '',
					searchSportSeCodeNm : '',
				},
				paginationInfo : {},
				resultList : [],
				sportSeCodeList: [],
				applFormVo: {},
			},
			created: function() {
				var vm = this;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json',
						url : '/${langId}/company/recruit/data',
						data : JSON.stringify(vm.listVo)
					}).done(function (data){
						if (!vm.resultList) {
							vm.resultList = [];
						}
						if (vm.listVo.pageIndex == 1) {
							vm.resultList = [];
						}
						if (data.resultList && data.resultList.length > 0) {
							data.resultList.forEach(function(item, index) {
								vm.resultList.push(item);
							});
						}
						vm.paginationInfo = data.paginationInfo;
						vm.sportSeCodeList = data.sportSeCodeList;
						vm.applFormVo = data.applFormVo;
					});
				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onViewLink : function (nttSn){
					$form.attr({
						action: '/${langId}/company/recruit/' + nttSn,
						method : 'get'
					}).submit();
				},
				onMore: function() {
					var vm = this;
					vm.listVo.pageIndex = vm.paginationInfo.currentPageNo + 1;
					vm.fetchData();
				},
				onSportSeCode: function(code, codeNm) {
					var vm = this;
					vm.listVo.searchSportSeCode = code;
					vm.listVo.searchSportSeCodeNm = codeNm;
					vm.onSearch();
				}
			},
    	});
    </script>

</body>