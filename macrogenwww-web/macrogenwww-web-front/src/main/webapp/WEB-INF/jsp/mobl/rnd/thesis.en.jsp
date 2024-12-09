<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="non-bg">
        <header class="header">
		    <div class="inner">
		        <h1 class="logo"><a href="/en">마크로젠 로고</a></h1>
		        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
		    </div>
		</header>

        <div class="frame">
            <h2 class="font-h1">Papers</h2>
        </div>
    </div>
	<script>
    $(function(){
        var lastScroll = 0;
        $(window).scroll(function(){
            var st = $(this).scrollTop();
            if (st > lastScroll){
                // console.log('Down');
                $('.header').show().css({'position': 'absolute','top':'0'});
            }
            else if (st === 0) {
                // console.log('Top');
                // $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
            }
            else {
                // console.log('Up');
                $('.header').show().css({'position': 'fixed','top':'0'}).removeClass('header-white');
            }
            lastScroll = st;
        });
    });
</script>

	<form id="listForm" name="listForm">

    <div class="container research-wrap pt-0 vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

        <div class="board">
            <div class="text-list">
                <div class="input-search">
					<input type="text" v-model="listVo.searchKeyword" @keydown.enter="onSearch"
						name="searchKeyword" id="searchKeyword" maxlength="50"
						title="검색" class="form-control" placeholder="Enter search term">
					<input type="text" style="display: none;">
					<a href="javascript:;" class="btn-search" @click="onSearch"></a>
                </div>
                <ul v-if="resultList.length > 0" class="category-list">

                    <li v-for="(result, index) in resultList" class="item">
                        <a :href="result.linkUrl" target="blank">
                            <span class="font-body-h-b">{{ result.jrnl }}</span>
                            <span class="font-h7">{{ result.thesisSj }}</span>
                            <span class="font-date">{{result.registYear }}.{{ result.registMt }}</span>
                        </a>
                    </li>

                </ul>
                <div class="btn-wrapper"
                	v-if="resultList.length > 0 && paginationInfo.currentPageNo < paginationInfo.lastPageNo">
                    <a href="javascript:;" class="btn-more" @click="onMore"><span class="sr-only">더보기</span></a>
                </div>

                <ul v-if="resultList.length == 0 && paginationInfo.currentPageNo"
                	class="category-list no-data">
                    <li class="item">
                        <p>No article</p>
                    </li>
                </ul>
            </div>
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
					searchKeyword : '${ listVo.searchKeyword }',
				},
				paginationInfo : {},
				resultList : [],
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
						url : '/${langId}/rnd/thesis/data',
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
				onMore: function() {
					var vm = this;
					vm.listVo.pageIndex = vm.paginationInfo.currentPageNo + 1;
					vm.fetchData();
				},
			},
    	});
    </script>

</body>
