var ThesisForm = (function($) {
	var options, $form;

	var init = function(_options) {
		options = _options;
		$form = $("#editForm");
		initVue();
	};

	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data : {
				thesisSn : options.thesisSn,
				resultVo : {},
				submitFlag : false,
				registMtList: ['01','02','03','04','05','06','07','08','09','10','11','12'],
				currYear: '2021',
			},
			computed: {
				registYearList: function() {
					var vm = this;
					var ret = [];
					var i = 0;
					while (1997 <= vm.currYear - i) {
						ret.push(vm.currYear - i);
						i ++;
					}
					return ret;
				},
			},			created : function() {
				var vm = this;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/thesis/form/data',
						data : JSON.stringify({ thesisSn : vm.thesisSn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.currYear = data.currYear;
					});
				},
				onSubmit : function() {
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
						url : '/' + options.lang + '/thesis/submit',
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
						url : '/' + options.lang + '/thesis/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				validate: function() {
					var vm = this;
					if (!vm.resultVo.thesisSj) {
						alert('필수입력 - 논문제목');
						vm.$refs.thesisSj.focus();
						return false;
					}
					if (!vm.resultVo.jrnl) {
						alert('필수입력 - 저널');
						vm.$refs.jrnl.focus();
						return false;
					}
					if (!vm.resultVo.linkUrl) {
						alert('필수입력 - 논문 Link URL');
						vm.$refs.linkUrl.focus();
						return false;
					}
					if (!vm.resultVo.registYear) {
						alert('필수입력 - 등록 연도/월');
						vm.$refs.registYear.focus();
						return false;
					}
					if (!vm.resultVo.registMt) {
						alert('필수입력 - 등록 연도/월');
						vm.$refs.registMt.focus();
						return false;
					}
					return true;
				},

				onList : function() {
					goList();
				},
			},
			updated : function() {
				var vm = this;
				if('function' == typeof vueUpdated) {
					vueUpdated(vm);
				}
			},

		});
	};

	var goList = function() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/' + options.lang + '/thesis/list');
		$listForm.submit();
	};

	return {
		init : init,
	};

}(jQuery));
