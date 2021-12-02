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
            <div class="font-h1">Media library</div>
        </div>
    </div>

	<form id="listForm" name="listForm">

    <div class="container pt-0 vuelayer" v-cloak>
		<input type="hidden" name="pageIndex" :value="listVo.pageIndex" />

        <div class="newsroom">
            <div class="board">
                <div class="thumbnail-list">
                    <div class="input-search">
                        <input type="text" v-model="listVo.searchKeyword" @keydown.enter="onSearch"
                        	name="searchKeyword" id="searchKeyword" maxlength="50" title="검색" class="form-control" placeholder="Enter search term">
						<input type="text" style="display: none;">
                        <a href="javascript:;" class="btn-search" @click="onSearch"></a>
                    </div>
                    <ul v-if="resultList.length > 0" class="list">
                        <li v-for="(result, index) in resultList" class="item">
	                        <span class="img" @click="onViewLink(result.nttSn)"
	                        	:style="'background-image: url(${publicUrl }' + result.thumbFlpth + ')'">
	                            <span class="media">
	                                <a class="btn-count" href="javascript:;">
	                                	<i v-if="result.imageList && result.imageList.length > 1" class="icon ico-imgCount-white"></i>
	                                	<em v-if="result.imageList && result.imageList.length > 1">{{ result.imageList.length }}</em>
	                                </a>
	                                <a class="btn-download-sm" href="javascript:;">
	                                	<i v-if="result.atchList && result.atchList.length > 0" class="icon ico-download-white-sm"></i>
	                                </a>
	                            </span>
	                        </span>
                            <a href="javascript:;"  @click="onViewLink(result.nttSn)" class="font-h7">{{ result.nttSumry }}</a>
                            <span class="font-date">{{ result.registDt | timeToDate('YYYY.MM.DD') }}</span>
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
						url : '/${langId}/newsroom/media-library/data',
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
				onViewLink : function(nttSn) {
					showViewModal(nttSn);
				},
				onMore: function() {
					var vm = this;
					vm.listVo.pageIndex = vm.paginationInfo.currentPageNo + 1;
					vm.fetchData();
				},
			},
    	});

    	function showViewModal(nttSn) {
		    var $modalContent = $('#modal .modal-content');
   			$.ajax({
   				dataType: 'html', type : 'post',
   				url: '/${rc.locale.language}/newsroom/media-library/viewAjaxHtml/' + nttSn,
   				data: { },
   			}).done(function(html) {
   				modal.show();
   				$modalContent.empty().html(html);
   			});
    	}

    </script>

	<%-- 상세보기 모달 --%>
	<div class="modal modal-look-up" tabindex="-1" id="modal" data-bs-backdrop="static">
	    <div class="modal-dialog">
	        <div class="modal-content"></div>
	    </div>
	    <a href="#" class="btn-totop"></a>
	</div>
	<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer" data-bs-backdrop="static">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <a href="#" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><span class="sr-only">닫기</span></a>
	            <div class="parent">
	                <div class="panzoom">
	                    <img src="/publishing/mobile-en/dist/img/@temp/newsroom/sample-1.png" alt="">
	                </div>
		        </div>
		    </div>
	    </div>
	</div>
	<div class="toast-popup">
	    <p>이미지를 확대할 수 있습니다</p>
	</div>
	<script>
	    var modal = new bootstrap.Modal(document.getElementById('modal'))

	    $(document).ready(function(){
	        $('.btn-totop').click(function(){
	            $('.modal').animate( { scrollTop:0 },{duration : 100});
	            return false;
	        });

	        $('.modal').on('scroll', function (){
	            var scrollTop = $('.modal').scrollTop()
	            if (scrollTop > 150) {
	                $('.btn-totop').css({'opacity' : 1})
	            } else {
	                $('.btn-totop').css({'opacity' : 0})
	            }
	        })

	        // zoom
	        /* var el = document.querySelector('.pinch-zoom');
	        new PinchZoom.default(el, {}); */

	        // toast popup
	        /*
	        function showToastPopup() {
	            $('.toast-popup').addClass('active');
	            setTimeout(hideToastPopup, 2000);
	        }

	        function hideToastPopup() {
	            $('.toast-popup').removeClass('active');
	        }

	        function toastPopup() {
	            setTimeout(showToastPopup, 1500);
	        }

	        $('._openImageViewer').on('click',function (){
	            toastPopup();
	        }); */

	    });

        /*
        $('#modalImageViewer').on('show.bs.modal', function (e) {
        	console.log('show.bs.modal', $(e.currentTarget).find('#view-image').attr('src'))
		});
        */

	</script>



</body>
