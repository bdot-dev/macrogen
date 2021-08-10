var CmpnyhistGroupForm = (function($) {
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
				cmpnyhistGroupSn : options.cmpnyhistGroupSn,
				resultVo : {},
				submitFlag : false,
				currYear: '2021',
			},
			computed: {
				yearList: function() {
					var vm = this;
					var ret = [];
					var i = 0;
					while (1997 <= vm.currYear - i) {
						ret.push(vm.currYear - i);
						i ++;
					}
					return ret;
				},
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
						url : '/' + options.lang + '/cmpnyhist/group/form/data',
						data : JSON.stringify({ cmpnyhistGroupSn : vm.cmpnyhistGroupSn }),
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
						url : '/' + options.lang + '/cmpnyhist/group/submit',
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
						url : '/' + options.lang + '/cmpnyhist/group/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				validate: function() {
					var vm = this;
					if (!vm.resultVo.beginYear) {
						alert('필수입력 - 시작연도');
						vm.$refs.beginYear.focus();
						return false;
					}
					if (!vm.resultVo.endYear) {
						alert('필수입력 - 종료연도');
						vm.$refs.endYear.focus();
						return false;
					}
					if (!vm.resultVo.groupnmKo) {
						alert('필수입력 - 그룹명 국문');
						vm.$refs.groupnmKo.focus();
						return false;
					}
					if (!vm.resultVo.groupnmEn) {
						alert('필수입력 - 그룹명 영문');
						vm.$refs.groupnmEn.focus();
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
		$listForm.attr('action', '/' + options.lang + '/cmpnyhist/group/list');
		$listForm.submit();
	};

	return {
		init : init,
	};

}(jQuery));
