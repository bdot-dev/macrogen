var nttList = (function($) {

	var options, $form;

	var init = function (_options){
		options = _options;
		$form = $('#listForm');

		initVue();
	},
	initVue = function (){
		vue = new Vue({
			el : '.vuelayer',
			data : {
				paginationInfo : {},
				listVo : {},
				resultList : [],
				recordCountPerPageList : [],
				bbsCtgryList : [],
				expsrYnList : [],
			},
			created : function (){
				var vm = this;
				vm.listVo = options.listVo;
				vm.fetchData();
			},
			methods : {
				fetchData : function (){
					var vm = this;
					$.ajax({
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json',
						url : '/' + options.bbsId + '/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function (data){
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
						vm.recordCountPerPageList = data.recordCountPerPageList;
						vm.bbsCtgryList = data.bbsCtgryList;
						vm.expsrYnList = data.expsrYnList;
					});
				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onRecordCountPerPage : function (event){
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onOrderBy : function (event){
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onViewLink : function (nttSn){
					$form.attr({
						action: '/' + options.bbsId + '/form/' + nttSn ,
						method : 'POST'
					}).submit();
				},
				pageMove : function(page) {
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
				},
				onAdd : function() {
					var vm = this;
					vm.listVo.nttSn = '';
					$form.attr({
						action: '/' + options.bbsId + '/form/' ,
						method : 'POST'
					}).submit();
				}
			}
		});
	};

	return {
		init : init
	};
}(jQuery));
