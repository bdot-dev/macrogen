var MainPeopleList = (function($) {
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
				listVo : {},
				resultList : [],
				paginationInfo : {},
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
						url : '/' + options.lang + '/main-people/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function(data) {
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
					});
				},
				onchangeImageFile : function(index,e) {
					console.log(index,e)
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultList[index].imageAtchId = data.resultVo.atchId;
						vm.resultList[index].imageFlpth = data.resultVo.physiclFlpth;

					});
				},

				validate: function(index) {
					var vm = this;
					let result = vm.resultList[index];
					result.sortOrdr = index;
					if (!result.cnPc) {
						alert('필수 입력 부탁드립니다.(내용 PC' +(index+1)+ ')');
						vm.$refs.cnPc[index].focus();
						return false;
					}
					if (!result.cnMo) {
						alert('필수 입력 부탁드립니다.(내용 MO' +(index+1)+ ')');
						vm.$refs.cnMo[index].focus();
						return false;
					}
					if (!result.peopleNm) {
						alert('필수 입력 부탁드립니다.(이름' +(index+1)+ ')');
						vm.$refs.peopleNm[index].focus();
						return false;
					}
					if (!result.peopleDept) {
						alert('필수 입력 부탁드립니다.(직함' +(index+1)+ ')');
						vm.$refs.peopleDept[index].focus();
						return false;
					}
					if (!result.imageAtchId) {
						alert('필수 입력 부탁드립니다.(이미지' +(index+1)+ ')');
						vm.$refs.imageFile[index].focus();
						return false;
					}
					/*if (!result.linkUrl) {
						alert('필수 입력 부탁드립니다.(링크' +(index+1)+ ')');
						vm.$refs.linkUrl[index].focus();
						return false;
					}*/
					return true;
				},
				onSubmit : function() {
					var vm = this;
					if (vm.submitFlag) {
						alert('처리중입니다....');
						return false;
					}

					// validate
					let valid = true;
					for(var i = 0;i<4;i++) {
						if (!vm.validate(i)) {
							valid = false; break;
						}
					}
					if(!valid) {
						return false;
					}

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/main-people/submit',
						//data : JSON.stringify({dataVoList: vm.resultList}),
						data : JSON.stringify(vm.resultList),
					}).done(function(data) {
						vm.submitFlag = false;
						alert("배너가 저장되었습니다.");
						location.href = "list";
					});
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
