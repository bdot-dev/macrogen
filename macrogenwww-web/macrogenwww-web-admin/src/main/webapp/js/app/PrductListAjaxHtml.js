var PrductListAjaxHtml = (function($) {
	var options;
	var init = function(_option) {
		$form = $('#listForm');
		options = _option;
		initVue();
	};
	var initVue = function() {
		prductPopVue = new Vue({
			el : '#popup_layer',
			data : {
				listVo : {},
				paginationInfo : {},
				resultList : {},
			},
			computed : {
				checkedPrductList : function() {
					var vm = this;
					if (!vm.resultList || vm.resultList.length < 1) {
						return null;
					}
					return vm.resultList.filter(function(result) {
						return result.checked == true;
					})
				},

			},
			created : function() {
				var vm = this;
				vm.listVo = options.listVo;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({ dataType : 'json', type : 'POST',
						url : '/prduct/list/data',
						contentType : 'application/json',
						data : JSON.stringify(vm.listVo)
					}).done(function(data) {
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
					});
				},
				pageMove : function(page) {
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
				},
				onClose : function() {
					closePopup();
				},
				onSelect : function() {
					var vm = this;
					if (vm.checkedPrductList.length == 0) {
						alert('제품을 선택해주세요');
						return false;
					}

					var callback = getFunctionByNm($('#popup_result').data('callback'));
					if (!callback) {
						closePopup();
						return false;
					}

					var selectedList = vm.checkedPrductList;
					if (selectedList && selectedList.length > 0) {
						callback(selectedList);
					}
					closePopup();
				},
				onSearch : function() {
					var vm = this;
					vm.fetchData();
				},
				onDownSearch : function(event) {
					var vm = this;
					if (event.keyCode == 13) {
						event.preventDefault();
						vm.onSearch();
					}
				},
			},
			updated : function() {
				$('#popup_layer').css('overflow-y', 'auto');
			}
		})
	};

	return {
		init : init
	}
}(jQuery));