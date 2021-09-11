var PlosdocList = (function($) {
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
				listUpdtDe : '',
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
						url : '/fnltt/plosdoc/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function(data) {
						vm.resultList = data.resultList;
						vm.listUpdtDe = data.listUpdtDe;
						vm.paginationInfo = data.paginationInfo;
					});
				},
				onAdd : function() {
					var vm = this;
					vm.resultList.unshift({
						sales : 0,
						costSales : 0,
						sellAdminExpenses : 0,
						etcErn: 0,
						etcCt: 0,
						// incomeLossBefIncometax : 0,
						incometaxExpenses : 0,
						discontOperIncome : 0,
						otherCompIncome : 0,
					});

					if (vm.resultList.length > 3) {
						vm.resultList.pop();
					}
				},

				grossProfit: function(result) {
					return result.sales - result.costSales;
				},
				operatingIncome: function(result) {
					return this.grossProfit(result) - result.sellAdminExpenses;
				},
				incomeLossBefIncometax: function(result) {
					return this.operatingIncome(result) + result.etcErn - result.etcCt;
				},
				netIncome: function(result) {
					return this.incomeLossBefIncometax(result) - result.incometaxExpenses
						+ result.discontOperIncome;
				},
				totalComprehensiveIncome: function(result) {
					return this.netIncome(result) + result.otherCompIncome;
				},

				onSave : function() {
					var vm = this;
					if (vm.submitFlag) {
						alert('처리중입니다....');
						return false;
					}

					// validate
					if (!vm.validate()) {
						return false;
					}

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/fnltt/plosdoc/submit',
						data : JSON.stringify({ listUpdtDe: vm.listUpdtDe, plosdocList: vm.resultList }),
					}).done(function(data) {
						vm.submitFlag = false;
						vm.fetchData();
					});

				},
				validate: function() {
					var vm = this;
					if (!vm.listUpdtDe) {
						alert('필수입력 - 업데이트 날짜');
						return false;
					}

					if (!vm.resultList || vm.resultList.length == 0) {
						if (!confirm('등록된 재무정보가 없습니다.\n계속하시겠습니까?')) {
							return false;
						}
					}

					var ret = true;
					for (var i = 0; i < vm.resultList.length; i ++) {
						if (!vm.resultList[i].iemOdrKo) {
							vm.$refs.iemOdrKo[i].focus();
							alert('필수입력 - 항목차수(국문)');
							ret = false;
							break;
						}
						if (!vm.resultList[i].iemOdrEn) {
							vm.$refs.iemOdrEn[i].focus();
							alert('필수입력 - 항목차수(영문)');
							ret = false;
							break;
						}
						if (!vm.resultList[i].iemDe) {
							alert('필수입력 - 항목일자');
							ret = false;
							break;
						}

						// 매출액 sales
						if (vm.resultList[i].sales != 0 && !vm.resultList[i].sales) {
							vm.$refs.sales[i].focus();
							alert('필수입력 - 매출액');
							ret = false;
							break;
						}
						// 매출원가 costSales
						if (vm.resultList[i].costSales != 0 && !vm.resultList[i].costSales) {
							vm.$refs.costSales[i].focus();
							alert('필수입력 - 매출원가');
							ret = false;
							break;
						}
						// 판매비와관리지 sellAdminExpenses
						if (vm.resultList[i].sellAdminExpenses != 0 && !vm.resultList[i].sellAdminExpenses) {
							vm.$refs.sellAdminExpenses[i].focus();
							alert('필수입력 - 판매비와관리지');
							ret = false;
							break;
						}

						// 기타수익 etcErn
						if (vm.resultList[i].etcErn != 0 && !vm.resultList[i].etcErn) {
							vm.$refs.etcErn[i].focus();
							alert('필수입력 - 판매비와관리지');
							ret = false;
							break;
						}
						// 기타비용 etcCt
						if (vm.resultList[i].etcCt != 0 && !vm.resultList[i].etcCt) {
							vm.$refs.etcCt[i].focus();
							alert('필수입력 - 판매비와관리지');
							ret = false;
							break;
						}

						// 법인세비용차감전순이익 incomeLossBefIncometax
						/*if (vm.resultList[i].incomeLossBefIncometax != 0 && !vm.resultList[i].incomeLossBefIncometax) {
							vm.$refs.incomeLossBefIncometax[i].focus();
							alert('필수입력 - 법인세비용차감전순이익');
							ret = false;
							break;
						}*/

						// 법인세비용 incometaxExpenses
						if (vm.resultList[i].incometaxExpenses != 0 && !vm.resultList[i].incometaxExpenses) {
							vm.$refs.incometaxExpenses[i].focus();
							alert('필수입력 - 법인세비용');
							ret = false;
							break;
						}
						// 중단영업이익 discontOperIncome
						if (vm.resultList[i].discontOperIncome != 0 && !vm.resultList[i].discontOperIncome) {
							vm.$refs.discontOperIncome[i].focus();
							alert('필수입력 - 중단영업이익');
							ret = false;
							break;
						}
						// 기타포괄손익 otherCompIncome
						if (vm.resultList[i].otherCompIncome != 0 && !vm.resultList[i].otherCompIncome) {
							vm.$refs.otherCompIncome[i].focus();
							alert('필수입력 - 기타포괄손익');
							ret = false;
							break;
						}

					}

					return ret;
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
