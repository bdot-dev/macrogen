var nttForm = (function($) {

	var options, $form;

	var init = function (_options){
		options = _options;
		$form = $('#editForm');

		initVue();
	};
	var initVue = function (){
		vue = new Vue({
			el : '.vuelayer',
			data : {
				nttVo : {nttSn : options.nttSn},
				resultVo : {},
				bbsCtgryList: [],
				expsrYnList: [],
				submitFlag : false,
				thumbBassImageCodeList: [],
			},
			created : function (){
				var vm = this;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({
						dataType : 'json',
						type : 'POST',
						url : '/' + options.lang + '/' + options.bbsId + '/form/data',
						contentType : 'application/json',
						data : JSON.stringify(vm.nttVo)
					}).done(function (data){
						vm.resultVo = data.resultVo;
						vm.bbsCtgryList = data.bbsCtgryList;
						vm.expsrYnList = data.expsrYnList;
						vm.thumbBassImageCodeList = data.thumbBassImageCodeList;
					});
				},
				onList : function() {
					goList();
				},
				onchangeAddFile : function (e){
					var vm = this;
					uploadFile($form, $(e.target), function(data) {
						var atchData = {
							physiclFlpth : data.resultVo.physiclFlpth,
							atchId : data.resultVo.atchId,
							logicNm : data.resultVo.logicNm
						};
						if(!vm.resultVo.atchList)
							vm.resultVo.atchList = [];
						vm.resultVo.atchList.push(atchData);
					});
				},
				onDeleteAtch : function(index) {
					var vm = this;
					vm.resultVo.atchList.splice(index, 1);
				},
				onchangeAtch: function(e) {
					var vm = this;
					uploadFile($form, $(e.target), function(data) {
						var atchData = {
							physiclFlpth : data.resultVo.physiclFlpth,
							atchId : data.resultVo.atchId,
							logicNm : data.resultVo.logicNm
						};
						vm.resultVo.atchList = [];
						vm.resultVo.atchList.push(atchData);
					});
				},
				onchangeThumbFile : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.thumbAtchId = data.resultVo.atchId;
						vm.resultVo.thumbFlpth = data.resultVo.physiclFlpth;

					});
				},
				onDeleteThumb : function() {
					var vm = this;
					vm.resultVo.thumbAtchId = null;
					vm.resultVo.thumbFlpth = null;
				},
				onchangeImageListFile : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						if(!vm.resultVo.imageList)
							vm.resultVo.imageList = [];
						vm.resultVo.imageList.push({
							atchId : data.resultVo.atchId,
							physiclFlpth : data.resultVo.physiclFlpth,
						});
					});

				},
				onDeleteImageList : function(index) {
					var vm = this;
					vm.resultVo.imageList.splice(index, 1);
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

					if (options && options.thumbAtchIdRequired) {
						if (!vm.resultVo.thumbAtchId) {
							alert(!options.thumbAtchIdRequiredMessage ? '필수 입력 (리스트이미지)' : options.thumbAtchIdRequiredMessage);
							return false;
						}
					}
					if (options && options.imageListRequired) {
						if (!vm.resultVo.imageList || vm.resultVo.imageList.length < 1) {
							alert(options.imageListRequiredMessage);
							return false;
						}
					}

					if (vm.$refs.thumbBassImageUseYn) {
						if ('Y' == vm.resultVo.thumbBassImageUseYn) {
							if (!vm.resultVo.thumbBassImageCode) {
								alert('필수 입력 - 리스트이미지');
								return false;
							}
						} else {
							if (!vm.resultVo.thumbAtchId) {
								alert('필수 입력 - 리스트이미지');
								return false;
							}
						}
					}

					if (CKEDITOR) {
						for (var key in CKEDITOR.instances) {
							if (CKEDITOR.instances.hasOwnProperty(key)) {
								vm.resultVo[key] = CKEDITOR.instances[key].getData();
							}
						}
					}

					if (!confirm('저장하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}

					$.ajax({
						dataType : 'json',
						type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/' + options.bbsId + '/form/submit',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;

						if(data.result == 'success') {
							alert('저장되었습니다.');
							goList();
						}

					});
				},
				onDelete : function() {
					var vm = this;
					if (vm.submitFlag) {
						alert('처리중입니다....');
						return false;
					}

					if (!confirm('삭제하시겠습니까?')) {
						return false;
					} else {
						vm.submitFlag = true;
					}
					$.ajax({
						dataType : 'json',
						type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/' + options.bbsId + '/form/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;

						alert('삭제되었습니다.');
						goList();
					});
				},
				enterToBr: function(val) {
					if (!val) return val;
					return val.split('\n').join('<br />');
				},
				stripHtml: function(html) {
					if (!html) return html;
					return $(html).text();
				},
			},
			updated : function () {
				var vm = this;
				if('function' == typeof vueUpdated) {
					vueUpdated(vm);
				}
			}
		})
	};

	var goList = function (){
		var $listForm = $('#listForm');
		$listForm.attr('action', '/' + options.lang + '/' + options.bbsId + '/list');
		$listForm.submit();
	};

	return {
		init : init
	};
}(jQuery));