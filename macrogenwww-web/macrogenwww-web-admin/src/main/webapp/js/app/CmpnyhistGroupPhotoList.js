var CmpnyhistGroupPhotoList = (function($) {
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
				cmpnyhistGroupList: [],
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
						url : '/' + options.lang + '/cmpnyhist/group/photo/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function(data) {
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
						vm.cmpnyhistGroupList = data.cmpnyhistGroupList;
					});
				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onAdd : function() {
					$form.attr({
						action : '/' + options.lang + '/cmpnyhist/group/photo/form',
						method : 'post'
					}).submit();
				},
				onViewLink : function(sn) {
					$form.attr({
						action : '/' + options.lang + '/cmpnyhist/group/photo/form/' + sn,
						method : 'post'
					}).submit();
				},
				pageMove : function(page) {
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
				},
				onchangeSortOrdrPnrm: function() {
					var vm = this;
					var list = vm.resultList;
					list.sort(function(a, b) {
						var aOrder = (!a.sortOrdr || isNaN(a.sortOrdr)) ? 9999 : a.sortOrdr;
						var bOrder = (!b.sortOrdr || isNaN(a.sortOrdr)) ? 9999 : b.sortOrdr;
						if (aOrder > bOrder)
							return 1;
						if (aOrder < bOrder)
							return -1;
						return 0;
					});

				},
				onSaveSortOrdr: function() {
					var vm = this;

					if (!confirm('저장하시겠습니까?')) {
						return false;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/cmpnyhist/group/photo/saveSortOrders',
						data : JSON.stringify(vm.resultList),
					}).done(function(data) {
						vm.fetchData();
						vm.checkedPkList = [];
					});

				},
				groupDisplayNm: function(result) {
					return "[" + result.beginYear + "-" +
						(result.endYear == 'present' ? '현재' : result.endYear) + "] " +
						result.groupnmKo;
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
