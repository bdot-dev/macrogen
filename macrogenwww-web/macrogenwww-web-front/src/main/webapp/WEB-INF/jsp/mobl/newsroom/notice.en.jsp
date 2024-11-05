<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="non-bg">
        <header class="header">
		    <div class="inner">
		        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
		        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
		    </div>
		</header>

        <div class="frame">
            <h2 class="font-h1">Notice</h2>
        </div>
    </div>

	<form id="listForm" name="listForm">

    <div class="container pt-0 vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

        <div class="newsroom">
            <div class="board">
                <div class="text-list">
                    <div class="input-search">
                        <input type="text" v-model="listVo.searchKeyword" @keydown.enter="onSearch"
                        	name="searchKeyword" id="searchKeyword" maxlength="50" title="검색" class="form-control" placeholder="Enter search term">
						<input type="text" style="display: none;">
                        <a href="javascript:;" class="btn-search" @click="onSearch"></a>
                    </div>
                    <ul v-if="resultList.length > 0" class="list">
                        <li v-for="(result, index) in resultList" class="item">
                            <a href="javascript:;" @click="onViewLink(result.nttSn)">
                                <span class="font-h7">{{ result.nttSj }}</span>
                                <span class="font-date">{{ result.registDt | timeToDate('YYYY.MM.DD') }}</span>
                            </a>
                        </li>
                    </ul>
                    <div v-if="resultList.length > 0 && paginationInfo.currentPageNo < paginationInfo.lastPageNo" class="btn-wrapper">
                        <a href="javascript:;" class="btn-more" @click="onMore"><span class="sr-only">더보기</span></a>
                    </div>

                    <%-- 목록 없을경우 --%>
                    <div v-if="resultList.length == 0 && paginationInfo.currentPageNo" class="empty">
                        <div class="img"><img src="/publishing/mobile-en/dist/img/newsroom/img-empty.png" alt="등록된 게시물이 없습니다"></div>
                        <div class="font-body">No article</div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    </form>

    <script>
		var $form = $('#listForm');

    	var vue = new Vue({
			el : '.vuelayer',
			data : {
				listVo : {
					pageIndex: ${ listVo.pageIndex },
					recordCountPerPage : ${ listVo.recordCountPerPage },
					searchKeyword : '${ listVo.searchKeyword }',
				},
				paginationInfo : {},
				resultList : [],
			},
			created : function (){
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
						url : '/${langId}/newsroom/notice/data',
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
					});
				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onViewLink : function (nttSn){
					$form.attr({
						action: '/${langId}/newsroom/notice/' + nttSn,
						method : 'get'
					}).submit();
				},
				onMore: function() {
					var vm = this;
					vm.listVo.pageIndex = vm.paginationInfo.currentPageNo + 1;
					vm.fetchData();
				},
			},
    	});
    </script>

</body>
