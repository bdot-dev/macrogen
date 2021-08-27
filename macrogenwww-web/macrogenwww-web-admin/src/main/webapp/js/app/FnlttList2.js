var FnlttList = (function($) {
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
			watch: {
				resultList: {
					handler(val, oldVal) {
						console.log('resultList changed',
								JSON.stringify(val), JSON.stringify(oldVal));
						console.log('JSON.stringify(val) == JSON.stringify(oldVal)',
								JSON.stringify(val) == JSON.stringify(oldVal));
					},
					deep: true,
				},
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({ dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/fnltt/list/data',
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
						curAssets : '0',
						noncurAssets : '0',
						curLiabil : '0',
						noncurLiabil : '0',
						capl : '0',
						capitalSurplus : '0',
						accOtherCompIncome : '0',
						otherCompOfEquity : '0',
						retainedEarnings : '0',
						noncontrInterest : '0',
					});

					if (vm.resultList.length > 3) {
						vm.resultList.pop();
					}
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

					debugger;

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/fnltt/submit',
						data : JSON.stringify({ listUpdtDe: vm.listUpdtDe, fnlttList: vm.resultList }),
					}).done(function(data) {
						vm.submitFlag = false;
						vm.fetchData();
					});

				},
				formatNumber: function(index, propNm) {
					var vm = this;
					var propVal = vm.resultList[index][propNm];
					if (!propVal) return 0;

					propVal = propVal.replace(/[^0-9-]/g, '');
					if (!propVal) return 0;

					propVal = propVal.replace(/^0+/, '');
					if (!propVal) return 0;

					vm.resultList[index][propNm] = numberWithCommas(propVal);
				},
				totalAssets : function(result) {
					var curAssets = result.curAssets.replace(/[^0-9-]/g, '');
					if (!curAssets) curAssets = 0;
					var noncurAssets = result.noncurAssets.replace(/[^0-9-]/g, '');
					if (!noncurAssets) noncurAssets = 0;

					return Number(curAssets) + Number(noncurAssets);
				},
				totalLiabil : function(result) {
					var curLiabil = result.curLiabil.replace(/[^0-9-]/g, '');
					if (!curLiabil)
						curLiabil = 0;

					var noncurLiabil = result.noncurLiabil.replace(/[^0-9-]/g, '');
					if (!noncurLiabil)
						noncurLiabil = 0;

					return Number(curLiabil) + Number(noncurLiabil);
				},
				totalEquity : function(result) {
					var vm = this;
					return Number(vm.totalAssets(result)) - Number(vm.totalLiabil(result));
				},
				ownersOfParentEquity : function(result) {
					var vm = this;
					var noncontrInterest = result.noncontrInterest.replace(/[^0-9-]/g, '');
					if (!noncontrInterest) noncontrInterest = 0;

					return Number(vm.totalEquity(result)) - Number(noncontrInterest);
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
						if (!vm.resultList[i].updtDe) {
							alert('필수입력 - 항목일자');
							ret = false;
							break;
						}

						if (!vm.resultList[i].curAssets) {
							vm.$refs.curAssets[i].focus();
							alert('필수입력 - 유동자산');
							ret = false;
							break;
						}
						if (!vm.resultList[i].noncurAssets) {
							vm.$refs.noncurAssets[i].focus();
							alert('필수입력 - 비유동자산');
							ret = false;
							break;
						}
						if (!vm.resultList[i].curLiabil) {
							vm.$refs.curLiabil[i].focus();
							alert('필수입력 - 유동부채');
							ret = false;
							break;
						}
						if (!vm.resultList[i].noncurLiabil) {
							vm.$refs.noncurLiabil[i].focus();
							alert('필수입력 - 비유동부채');
							ret = false;
							break;
						}

						//자본금
						if (!vm.resultList[i].capl) {
							vm.$refs.capl[i].focus();
							alert('필수입력 - 자본금');
							ret = false;
							break;
						}
						//주식발행초과금
						if (!vm.resultList[i].capitalSurplus) {
							vm.$refs.capitalSurplus[i].focus();
							alert('필수입력 - 주식발행초과금');
							ret = false;
							break;
						}
						//기타포괄손익누계액
						if (!vm.resultList[i].accOtherCompIncome) {
							vm.$refs.accOtherCompIncome[i].focus();
							alert('필수입력 - 기타포괄손익누계액');
							ret = false;
							break;
						}
						//기타자본항목
						if (!vm.resultList[i].otherCompOfEquity) {
							vm.$refs.otherCompOfEquity[i].focus();
							alert('필수입력 - 기타자본항목');
							ret = false;
							break;
						}
						//이익잉여금
						if (!vm.resultList[i].retainedEarnings) {
							vm.$refs.retainedEarnings[i].focus();
							alert('필수입력 - 이익잉여금');
							ret = false;
							break;
						}
						//비지배지분
						if (!vm.resultList[i].noncontrInterest) {
							vm.$refs.noncontrInterest[i].focus();
							alert('필수입력 - 비지배지분');
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
