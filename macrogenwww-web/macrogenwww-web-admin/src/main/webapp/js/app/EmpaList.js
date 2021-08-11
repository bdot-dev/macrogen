var EmpaList = (function($) {
	var options, $form;

	var init = function(_options) {
		options = _options;
		$form = $('#listForm');
		initVue();
	};

	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data: {
				listVo : {},
				resultList : [],
				paginationInfo : {},
				rceptSttusCodeList: [],
				checkedPkList: [],
			},
			created : function() {
				var vm = this;
				vm.listVo = options.listVo;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({ dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/empa/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function(data) {
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
						vm.rceptSttusCodeList = data.rceptSttusCodeList;
					});
				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onAdd : function() {
					$form.attr({
						action : '/' + options.lang + '/empa/form',
						method : 'post'
					}).submit();
				},
				onViewLink : function(sn) {
					$form.attr({
						action : '/' + options.lang + '/empa/form/' + sn,
						method : 'post'
					}).submit();
				},
				pageMove : function(page) {
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
				},
				checkAll: function(e) {
					var vm = this;
					vm.checkedPkList = [];
					if (e.target.checked) {
						vm.resultList.forEach(function(result) {
							vm.checkedPkList.push(result.empaSn);
						});
					}
				},
				onDeleteChecked: function() {
					var vm = this;
					if (vm.checkedPkList.length <= 0) {
						alert('삭제할 항목을 선택해 주세요.');
						return false;
					}

					if (vm.checkedPkList.length > 0 &&
							!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/empa/deleteList',
						data : JSON.stringify({ empaSnList : vm.checkedPkList }),
					}).done(function(data) {
						vm.fetchData();
						vm.checkedPkList = [];
					});

				},
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
		init: init
	};

}(jQuery));
