var PrductList = (function($) {
	var options, $form;

	var init = function(_options) {
		options = _options;
		$form = $('#listForm');
		initVue();
	};
	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data : {
				listVo : {},
				resultList : [],
				paginationInfo : {},
				recordCountPerPageList : [],
				expsrYnList : [],
				prductKndList : [],
				prductctgryList : [],
			},
			created : function() {
				var vm = this;
				vm.listVo = options.listVo;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;

					// set listVo.prductctgrySnList
					vm.listVo.prductctgrySnList = [];
					if (vm.listVo.searchPrductctgrySn) {
						vm.listVo.prductctgrySnList.push(vm.listVo.searchPrductctgrySn);
					}

					$.ajax({ dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/prduct/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function(data) {
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
						vm.recordCountPerPageList = data.recordCountPerPageList;
						vm.expsrYnList = data.expsrYnList;
						vm.prductKndList = data.prductKndList;
						vm.prductctgryList = data.prductctgryList;
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
					$form.attr({
						action : '/prduct/form',
						method : 'post'
					}).submit();
				},
				onViewLink : function(prductSn) {
					$form.attr({
						action : '/prduct/form/' + prductSn,
						method : 'post'
					}).submit();
				},
				pageMove : function(page) {
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
				},
				onSortSave: function() {
					var vm = this;
					$.ajax({ dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/prduct/list/saveSort',
						data : JSON.stringify(vm.resultList)
					}).done(function(data) {
						alert('노출순서가 저장되었습니다.');
					});
				},
				onDisplay : function(item) {
					item.expsrYn = (item.expsrYn == 'Y') ? 'N' : 'Y' ;
					$.ajax({ dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/prduct/list/saveExpsr',
						data : JSON.stringify(item)
					}).done(function(data) {
						alert('처리되었습니다.');
					});
				}
			},
			updated : function() {
				var vm = this;
				if('function' == typeof vueUpdated) {
					vueUpdated(vm);
				}
			}
		});
	};

	return {
		init : init
	};
}(jQuery));
