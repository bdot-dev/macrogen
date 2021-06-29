var PrductForm = (function($) {
	var options, $form;

	var init = function (_options){
		options = _options;
		$form = $("#editForm");
		initVue();
	};

	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data : {
				prductSn : options.prductSn,
				resultVo : {},
				submitFlag : false,
				prductKndList : [],
				expsrYnList : [],
			},
			created : function() {
				var vm = this;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/prduct/form/data',
						data : JSON.stringify({ prductSn : vm.prductSn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.prductKndList = data.prductKndList;
						vm.expsrYnList = data.expsrYnList;

					});
				},
				onSubmit : function() {
					var vm = this;
					if (vm.submitFlag) {
						alert('처리중입니다....');
						return false;
					}

					// validate
					$form.validate(options.validateOptions);
					if (!$form.valid()) {
						return false;
					}

					if (!vm.resultVo.expsrYn) {
						alert('필수입력(노출여부)');
						return false;
					}

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/prduct/submit',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;
						goList();
					});
				},
				onDelete : function() {
					var vm = this;

					if (!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/prduct/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				onList : function() {
					goList();
				},
				onPopupReprsntPrductctgry : function(e) {
					var vm = this;
					var options = {
						url : '/prductctgry/treeAjaxHtml',
						callback : 'PrductForm.onPopupReprsntPrductctgryCallback',
						event : e,
					};
					openPopup(options);
				},
				onRemoveReprsntPrductctgry : function() {
					var vm = this;
					vm.resultVo.reprsntCtgrySn = null;
					vm.resultVo.reprsntCtgryNm = null;
					vm.resultVo.reprsntCtgryNmPath = null;
				},
				onPopupPrductctgry : function(e) {
					var vm = this;
					var options = {
						url : '/prductctgry/treeAjaxHtml',
						callback : 'PrductForm.onPopupPrductctgryCallback',
						event : e,
					};
					openPopup(options);
				},
				onRemoveCtgry : function(index) {
					var vm = this;
					vm.resultVo.prductctgryList.splice(index, 1);
				},
				onchangeReprsntImageFile : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.reprsntImageAtchId = data.resultVo.atchId;
						vm.resultVo.reprsntImageFlpth = data.resultVo.physiclFlpth;

					});
				},
				onDeleteReprsntImage : function() {
					var vm = this;
					vm.resultVo.reprsntImageAtchId = null;
					vm.resultVo.reprsntImageFlpth = null;
				},
				onchangeImageFile : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						if (!vm.resultVo.imageList) {
							vm.resultVo.imageList = [];
						}
						vm.resultVo.imageList.push(data.resultVo);
					});
				},
				onDeleteImage : function(index) {
					var vm = this;
					vm.resultVo.imageList.splice(index, 1);
				},
				onchangeImageSortOrdr: function(e) {
					var vm = this;
					var list = vm.resultVo.imageList;
					list.sort(function(a, b) {
						console.log(a.sortOrdr, b.sortOrdr);
						var aOrder = !a.sortOrdr ? 9999 : a.sortOrdr;
						var bOrder = !b.sortOrdr ? 9999 : b.sortOrdr;
						if (aOrder > bOrder)
							return 1;
						if (aOrder < bOrder)
							return -1;
						return 0;
					});
				},
				onPopupRelatePrduct : function(e) {
					var vm = this;
					var options = {
						url : '/prduct/listAjaxHtml',
						callback : 'PrductForm.onPopupRelatePrductCallback',
						event : e,
					};
					openPopup(options);
				},
				onRemoveRelatePrduct : function(index) {
					var vm = this;
					vm.resultVo.relatePrductList.splice(index, 1);
				},

			}, // end of methods
			updated : function() {
				var vm = this;
				if('function' == typeof vueUpdated) {
					vueUpdated(vm);
				}
			},
		}); // end of new vue();
	};

	var goList = function() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/prduct/list');
		$listForm.submit();
	};

	var onPopupReprsntPrductctgryCallback = function(selectedList) {
		var vm = vue;
		console.log(selectedList);
		if (!selectedList || selectedList.length < 1) {
			return false;
		}
		selectedList[0]
		vm.resultVo.reprsntCtgrySn = selectedList[0].ctgrySn;
		vm.resultVo.reprsntCtgryNm = selectedList[0].ctgryNm;
		vm.resultVo.reprsntCtgryNmPath = selectedList[0].ctgryNmPath;
	};

	var onPopupPrductctgryCallback = function(selectedList) {
		var vm = vue;
		console.log(selectedList);
		if (!vm.resultVo.prductctgryList) {
			vm.resultVo.prductctgryList = [];
		}

		selectedList.forEach(function(selected, index) {
			var length = 0;

			// 이미 등록되어 있지 않으면 등록
			if (vm.resultVo.prductctgryList && vm.resultVo.prductctgryList.length > 0) {
				length = vm.resultVo.prductctgryList.filter(function(result) {
					return result.ctgrySn == selected.ctgrySn;
				}).length;
			}

			if (length <= 0) {
				vm.resultVo.prductctgryList.push(selected);
			}
		});
	};

	var onPopupRelatePrductCallback = function(selectedList) {
		var vm = vue;
		if (!vm.resultVo.relatePrductList) {
			vm.resultVo.relatePrductList = [];
		}

		console.log(selectedList);

		selectedList.forEach(function(selected, index) {
			var length = 0;

			// prduct -> relatePrduct
			var relatePrduct = {
				prductSn : vm.resultVo.prductSn,
				relatePrductSn : selected.prductSn,
				relatePrductNm : selected.prductNm,
				relateReprsntImageAtchId : selected.reprsntImageAtchId,
				relateReprsntImageFlpth : selected.reprsntImageFlpth,
				sortOrdr : 99,
			};

			// 이미 등록되어 있지 않으면 등록
			if (vm.resultVo.relatePrductList && vm.resultVo.relatePrductList.length > 0) {
				length = vm.resultVo.relatePrductList.filter(function(result) {
					return result.relatePrductSn == relatePrduct.relatePrductSn;
				}).length;
			}

			if (length <= 0) {
				vm.resultVo.relatePrductList.push(relatePrduct);
			}
		});
	};

	return {
		init : init,
		onPopupReprsntPrductctgryCallback: onPopupReprsntPrductctgryCallback,
		onPopupPrductctgryCallback : onPopupPrductctgryCallback,
		onPopupRelatePrductCallback : onPopupRelatePrductCallback,
	};
}(jQuery));