<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<div class="modal-header">
    <h5 class="modal-title">Macrogen ${ wnpzClCodeVo['codeNm'.concat(lang)] }</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
	<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="wnpzClCode" />

    <div class="list-of-winners vuelayer" v-cloak>
		<input type="hidden" id="pageIndex" name="pageIndex" :value="listVo.pageIndex" />

        <div class="title">Previous Winners</div>
        <ul class="row">
            <li v-for="(result, index) in resultList" class="col col-6">
                <div class="img"><img :src="'${publicUrl }' + result.photoFlpth" :alt="result.wnpzNm"
                	@click="onViewLink(result.wnpzSn)"></div>
                <div class="name"><a href="#" @click="onViewLink(result.wnpzSn)">{{ result.wnpzNm }}</a></div>
                <div class="desc">{{ result.wnpzTmeCodeNm${lang} }}</div>
            </li>
        </ul>
        <div v-if="resultList.length > 0 && paginationInfo.currentPageNo < paginationInfo.lastPageNo" class="btn-wrapper">
            <a href="javascript:;" class="btn-more" @click="onMore"><span class="sr-only">더보기</span></a>
        </div>
    </div>
</div>

</form:form>

<script>
	$(function() {
		$('.btn-close').on('click', function() {
			window.history.replaceState({}, document.title, ' ');
		});

	    $('.btn-close').on('click',function (){
	    	modal.hide();
	    })
	});
</script>

<script>
	var $form = $("#listForm");
    var $modalContent = $('#modal .modal-content');

	vue = new Vue({
		el : '.vuelayer',
		data: {
			listVo: {
				pageIndex: ${ listVo.pageIndex },
				recordCountPerPage : ${ listVo.recordCountPerPage },
				wnpzClCode : '${ listVo.wnpzClCode }',
			},
			paginationInfo : {},
			resultList : [],
		},
		created: function() {
			var vm = this;
			vm.fetchData();
		},
		methods: {
			fetchData : function() {
				var vm = this;
				$.ajax({
					dataType : 'json', type : 'POST', contentType : 'application/json',
					url : '/${langId}/company/winner/list/data',
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
			onMore: function() {
				var vm = this;
				vm.listVo.pageIndex = vm.paginationInfo.currentPageNo + 1;
				vm.fetchData();
			},
			onViewLink: function(nttSn) {
				linkView(nttSn)
			},
		},
	});

	function linkView(sn) {
		$.ajax({
			dataType: 'html', type : 'post',
			url: '/${rc.locale.language }/company/winner/viewAjaxHtml/' + sn,
			data: $form.serialize(),
		}).done(function(html) {
			$modalContent.empty().html(html);
			modal.show();
		});
	}
</script>
