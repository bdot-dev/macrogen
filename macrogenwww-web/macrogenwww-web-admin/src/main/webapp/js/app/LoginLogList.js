var loginLogList = (function($) {

	var options, $form;

	var init = function (_options){
		options = _options;
		$form = $('#listForm');

		initVue();
	};
	var initVue = function (){
		vue = new Vue({
			el : '.vuelayer',
			data : {
				listVo : {},
				resultList : {},
				paginationInfo : {},
				recordCountPerPageList : [],
				conList			:	[],
			},
			created : function (){
				var vm = this;
				vm.listVo = options.listVo;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json',
						url : '/loginLog/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function (data){
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
						vm.recordCountPerPageList = data.recordCountPerPageList;
						vm.conList = data.conList;
					})
				},
				onSearch : function (){
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onRecordCountPerPage : function (event){
					var vm = this;
					vm.listVo.recordCountPerPage = event.target.value;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				pageMove : function (page){
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
				},
				onExcel : function (){
					$form.attr('action', '/loginLog/excel');
					$form.submit();
				},
			},
			updated : function (){
				var vm = this;
				vueUpdated(vm);
			}
		})
	}

	return {
		init : init
	};
}(jQuery));
