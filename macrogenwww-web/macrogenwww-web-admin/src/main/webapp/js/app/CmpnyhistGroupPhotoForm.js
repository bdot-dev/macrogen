var CmpnyhistGroupPhotoForm = (function($) {
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
				cmpnyhistGroupPhotoSn : options.cmpnyhistGroupPhotoSn,
				resultVo : {},
				submitFlag : false,
				cmpnyhistGroupList: [],
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
						url : '/' + options.lang + '/cmpnyhist/group/photo/form/data',
						data : JSON.stringify({
							cmpnyhistGroupPhotoSn : vm.cmpnyhistGroupPhotoSn,
						}),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.cmpnyhistGroupList = data.cmpnyhistGroupList;
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
						url : '/' + options.lang + '/cmpnyhist/group/photo/submit',
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
						url : '/' + options.lang + '/cmpnyhist/group/photo/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				validate: function() {
					var vm = this;
					if (!vm.resultVo.cmpnyhistGroupSn) {
						alert('필수입력 - 연혁 그룹');
						vm.$refs.cmpnyhistGroupSn.focus();
						return false;
					}
					if (!vm.resultVo.photoAtchId) {
						alert('필수입력 - 사진 (PC)');
						return false;
					}
					if (!vm.resultVo.photoMoblAtchId) {
						alert('필수입력 - 사진 (모바일)');
						return false;
					}
					if (!vm.resultVo.photoSjKo) {
						alert('필수입력 - 이미지 제목 국문');
						vm.$refs.photoSjKo.focus();
						return false;
					}
					if (!vm.resultVo.photoSjEn) {
						alert('필수입력 - 이미지 제목 영문');
						vm.$refs.photoSjEn.focus();
						return false;
					}
					return true;
				},
				onList : function() {
					goList();
				},

				onchangePhotoFile : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.photoAtchId = data.resultVo.atchId;
						vm.resultVo.photoFlpth = data.resultVo.physiclFlpth;

					});
				},
				onDeletePhoto : function() {
					var vm = this;
					vm.resultVo.photoAtchId = null;
					vm.resultVo.photoFlpth = null;
				},

				onchangePhotoMoblFile : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.photoMoblAtchId = data.resultVo.atchId;
						vm.resultVo.photoMoblFlpth = data.resultVo.physiclFlpth;

					});
				},
				onDeletePhotoMobl : function() {
					var vm = this;
					vm.resultVo.photoMoblAtchId = null;
					vm.resultVo.photoMoblFlpth = null;
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
			},

		});
	};

	var goList = function() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/' + options.lang + '/cmpnyhist/group/photo/list');
		$listForm.submit();
	};

	return {
		init : init,
	};

}(jQuery));
