var MainPeopleForm = (function($) {

	var options, $form;

	var init = function(_options) {
		options = _options;
		$form = $('#editForm');

		initVue();
	};

	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data: {
				peopleSn : options.peopleSn,
				resultVo : {},
				submitFlag : false,
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
						url : '/' + options.lang + '/main-people/form/data',
						data : JSON.stringify({ peopleSn : vm.peopleSn }),
					}).done(function (data){
						vm.resultVo = data.resultVo;
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
					if(!vm.validate()) {
						return false;
					}

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/main-people/form/submit',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;
						alert("저장되었습니다.");
						location.href = '/' + options.lang + '/main-people/list';
					});
				},
				onDelete : function() {
					var vm = this;

					if (!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/main-people/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				onList : function() {
					goList();
				},

				onchangeImageFile : function(e,mode) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						if(mode == "pc") {
							vm.resultVo.imageAtchIdPc = data.resultVo.atchId;
							vm.resultVo.imageFlpthPc = data.resultVo.physiclFlpth;
						} else {
							vm.resultVo.imageAtchIdMo = data.resultVo.atchId;
							vm.resultVo.imageFlpthMo = data.resultVo.physiclFlpth;
						}
					});
				},
				validate: function() {
					var vm = this;
					let result = vm.resultVo;
					if (!result.sortOrdr) {
						alert('필수 입력 부탁드립니다.(이름)');
						vm.$refs.peopleNm.focus();
						return false;
					}
					if (!result.peopleNm) {
						alert('필수 입력 부탁드립니다.(이름)');
						vm.$refs.peopleNm.focus();
						return false;
					}
					if (!result.peopleDept) {
						alert('필수 입력 부탁드립니다.(직함)');
						vm.$refs.peopleDept.focus();
						return false;
					}
					if (!result.cnPc) {
						alert('필수 입력 부탁드립니다.(내용 PC)');
						vm.$refs.cnPc.focus();
						return false;
					}
					if (!result.cnMo) {
						alert('필수 입력 부탁드립니다.(내용 MO)');
						vm.$refs.cnMo.focus();
						return false;
					}
					if (!result.imageAtchIdPc) {
						alert('필수 입력 부탁드립니다.(이미지Pc)');
						vm.$refs.imageFilePc.focus();
						return false;
					}
					if (!result.imageAtchIdMo) {
						alert('필수 입력 부탁드립니다.(이미지Mo)');
						vm.$refs.imageFileMo.focus();
						return false;
					}
					return true;
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

	var goList = function() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/' + options.lang + '/main-people/list');
		$listForm.submit();
	};

	return {
		init: init
	};

}(jQuery));
