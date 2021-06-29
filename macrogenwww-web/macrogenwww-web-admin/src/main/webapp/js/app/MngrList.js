var MngrList = (function($) {

	var options;
	var $form;

	var init = function(_options) {
		options = _options;
		$form = $("#listForm");

		initVue();
	};
	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data : {
				listVo : {},
				paginationInfo : {},
				resultList : [],
				recordCountPerPageList : [],
				roleList : []
			},
			created : function() {
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
						url : '/mngr/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function(data) {
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
						vm.recordCountPerPageList = data.recordCountPerPageList;
						vm.roleList = data.roleList;
					});
				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onRecordCountPerPage : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onAdd : function() {
					var vm = this;
					$form.attr({
						action: '/mngr/form',
						method: 'POST',
						onsubmit: null,
					}).submit();
				},
				onView : function(userSn) {
					var vm = this;
					$form.attr({
						action: '/mngr/form/' + userSn,
						method: 'POST',
						onsubmit: null,
					}).submit();
				},
				pageMove : function(page) {
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
				}
			},
			updated : function() {
				var vm = this;
				if('function' == typeof vueUpdated) {
					vueUpdated(vm);
				}
			},
		});
	};

	return {
		init : init
	};
}(jQuery));
