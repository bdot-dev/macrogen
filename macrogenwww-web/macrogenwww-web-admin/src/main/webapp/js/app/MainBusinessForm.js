var MainNttForm = (function($) {
	
	var options, $form;
	
	var init = function (_options){
		options = _options;
		$form = $("#editForm");

		initVue();
	}; 

	var initVue = function (){
		vue = new Vue({
			el : '.vuelayer',
			data : {
				mainNttSn : options.mainNttSn,
				resultVo : {},
				submitFlag : false,
				expsrYnList : [],
			},
			created : function (){
				var vm = this;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/main-' + options.mainBbsId + '/form/data',
						data : JSON.stringify({ mainNttSn : vm.mainNttSn }),
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
						url : '/' + options.lang + '/main-' + options.mainBbsId + '/form/submit',
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
						url : '/' + options.lang + '/main-' + options.mainBbsId + '/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				validate: function() {
					var vm = this;
					
					if(!vm.resultVo.expsrYn){
						alert('필수입력 - 노출여부');
						vm.$refs.expsrYn.focus();
						return false;
					}
					if(!vm.resultVo.expsrPrty){
						alert('필수입력 - 노출순서');
						vm.$refs.expsrPrty.focus();
						return false;
					}												
					if (!vm.resultVo.mainNttSjPc) {
						alert('필수입력 - 타이틀(PC)');
						vm.$refs.mainNttSjPc.focus();
						return false;
					}	
					if (!vm.resultVo.mainNttSjMo) {
						alert('필수입력 - 타이틀(MO)');
						vm.$refs.mainNttSjMo.focus();
						return false;
					}
					if (!vm.resultVo.mainNttCnMo) {
						alert('필수입력 - 설명문구(PC)');
						vm.$refs.mainNttCnPc.focus();
						return false;
					}
					if (!vm.resultVo.mainNttCnPc) {
						alert('필수입력 - 설명문구(MO)');
						vm.$refs.mainNttCnMo.focus();
						return false;
					}
					if (!vm.resultVo.imageAtchIdPc) {
						alert('필수입력 - PC 이미지');
						return false;
					}
					if (!vm.resultVo.imageAtchIdMo) {
						alert('필수입력 - MO 이미지');
						return false;
					}
					if(!vm.resultVo.linkUrl1){
						alert('필수입력 - 링크');
						vm.$refs.lickUrl1.focus();
						return false;
					}
					
					return true;
				},
				onList : function() {
					goList();
				},
				onchangeImageFilePc : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.imageAtchIdPc = data.resultVo.atchId;
						vm.resultVo.imageFlpthPc = data.resultVo.physiclFlpth;

					});
				},
				onchangeImageFileMobl : function(e) {
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.imageAtchIdMo = data.resultVo.atchId;
						vm.resultVo.imageFlpthMobl = data.resultVo.physiclFlpth;
						
						
					});
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
		$listForm.attr('action', '/' + options.lang + '/main-' + options.mainBbsId + '/list');
		$listForm.submit();
	};

	return {
		init : init,
	};
	
}(jQuery));