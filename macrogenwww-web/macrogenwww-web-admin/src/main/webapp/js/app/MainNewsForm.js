var MainNewsForm = (function($) {
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
				mainSomlnkSn : options.mainSomlnkSn,
				resultVo : {},
				submitFlag : false,
				somlnkCtgryCodeList: [],
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
						url : '/' + options.lang + '/main-news/form/data',
						data : JSON.stringify({ mainSomlnkSn : vm.mainSomlnkSn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.somlnkCtgryCodeList = data.somlnkCtgryCodeList;
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
						url : '/' + options.lang + '/main-news/submit',
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
						url : '/' + options.lang + '/main-news/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				validate: function() {
					var vm = this;
					if (!vm.resultVo.somlnkCtgryCode) {
						alert('필수입력 - 카테고리');
						vm.$refs.somlnkCtgryCode.focus();
						return false;
					}
					if (!vm.resultVo.imageAtchId) {
						alert('필수입력 - 대표 이미지');
						return false;
					}
					if (!vm.resultVo.somlnkSj) {
						alert('필수입력 - 제목');
						vm.$refs.somlnkSj.focus();
						return false;
					}
					if (!vm.resultVo.somlnkDt) {
						alert('필수입력 - 내용');
						vm.$refs.somlnkDt.focus();
						return false;
					}
					if (!vm.resultVo.somlnkUrl) {
						alert('필수입력 - 링크');
						vm.$refs.somlnkUrl.focus();
						return false;
					}
					if (!vm.resultVo.postDt) {
						alert('필수입력 - 게시일');
						vm.$refs.postDt.focus();
						return false;
					}
					return true;
				},
				onList : function() {
					goList();
				},
				onchangeImageFile : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.imageAtchId = data.resultVo.atchId;
						vm.resultVo.imageFlpth = data.resultVo.physiclFlpth;

					});
				},
				onDeleteImage : function() {
					var vm = this;
					vm.resultVo.imageAtchId = null;
					vm.resultVo.imageFlpth = null;
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
		$listForm.attr('action', '/' + options.lang + '/main-news/list');
		$listForm.submit();
	};

	return {
		init : init,
	};

}(jQuery));
