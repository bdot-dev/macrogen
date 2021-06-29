var popupList = (function($) {

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
				expsrYnList : [],
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
						url : '/popup/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function (data){
						vm.resultList = data.resultList;
						vm.expsrYnList = data.expsrYnList;
						vm.paginationInfo = data.paginationInfo;
						vm.recordCountPerPageList = data.recordCountPerPageList;
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
				onChangeOrderBy : function (){
					var vm = this;
					vm.fetchData();
				},
				onAdd : function (){
					$form.attr({
						action: '/popup/form',
						method : 'POST'
					}).submit();
				},
				onSaveSort : function (){
					var vm = this;
					$.ajax({
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json',
						url : '/popup/sortSave',
						data : JSON.stringify(vm.resultList)
					}).done(function (data){
						alert('노출순서가 저장되었습니다.');
					});
				},
				onClickView : function (sn){
					$form.attr({
						action: '/popup/form/' + sn,
						method : 'POST'
					}).submit();
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
