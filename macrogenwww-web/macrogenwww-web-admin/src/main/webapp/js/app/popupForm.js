var popupForm = (function($) {

	var options, $form, updateFlag = true;

	var init = function (_options){
		options = _options;
		$form = $("#editForm");
		initVue();
	};
	var initVue = function (){
		vue = new Vue({
			el : '.vuelayer',
			data : {
				popupVo : {},
				resultVo : {},
				popupLinkTrgtList : [],
				expsrYnList: [],
			},
			created : function (){
				var vm = this;
				vm.popupVo = options.popupVo;
				vm.fetchDateInit();
			},
			methods : {
				fetchDateInit : function() {
					var vm = this;
					$.ajax({
						dataType : "json",
						type : "POST",
						contentType : 'application/json',
						data : JSON.stringify(vm.popupVo),
						url : '/' + options.lang + '/popup/form/data'
					}).done(function (data){
						vm.resultVo = data.resultVo;
						vm.popupLinkTrgtList = data.popupLinkTrgtList;
						vm.expsrYnList = data.expsrYnList;
					});
				},
				onchangePopupImageFile : function(e){
					var vm = this;
					uploadImage($form, $(e.target), function(data) {
						vm.resultVo.popupImageAtchId = data.resultVo.atchId;
						vm.resultVo.popupImageFlpth = data.resultVo.physiclFlpth;
					});
				},
				onDeleteAtch : function (){
					var vm = this;
					vm.resultVo.popupImageAtchId = "";
					vm.resultVo.popupImageFlpth = "";
				},
				onList : function (){
					goList();
				},
				onSubmit : function (){
					var vm = this;
					if (!vm.resultVo.popupNm) {
						alert("제목을 입력해주세요.");
						vm.$refs.popupNm.focus();
						return false;
					}
					if(!vm.resultVo.sortOrdr){
						alert("정렬을 입력해주세요.");
						vm.$refs.sortOrdr.focus();
						return false;
					}

					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/popup/submit',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
				},
				lpad: function(num, width) {
					return pad(num, width);
				},

			},
			updated : function (){
				var vm = this;
				vueUpdated(vm);
			}
		});
	},
	goList = function (){
		var $listForm = $('#listForm');
		$listForm.attr({
			'action' : '/' + options.lang + '/popup/list',
			"method" : "GET"
		}).submit();
	};

	return {
		init : init
	};
}(jQuery));
