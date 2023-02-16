var mngrAuthLogForm = (function($) {

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
				mngrAuthLogVo : {mngrHisSeq : options.mngrHisSeq},
				resultVo : {},
				menuList : [],
				urlList : [],
			},
			created : function (){
				var vm = this;
				vm.fetchDateInit();
			},
			methods : {
				fetchDateInit : function() {
					var vm = this;
					$.ajax({
						dataType : "json",
						type : "POST",
						contentType : 'application/json',
						data : JSON.stringify(vm.mngrAuthLogVo),
						url : '/authLog/form/data'
					}).done(function (data){
						vm.resultVo = data.resultVo;
						vm.menuList = data.menuList;
						vm.urlList = data.urlList;
						
						if(vm.urlList==null){
							console.info("null~~~~~~~~~~");
						}else if(vm.urlList!=null){
							console.info("not null~~~~~~~~~~");
						}
					});
				},
				onList : function (){
					goList();
				},

			}
		});
	},
	goList = function (){
		var $listForm = $('#listForm');
		$listForm.attr({
			'action' : '/authLog/list',
			"method" : "GET"
		}).submit();
	};

	return {
		init : init
	};
}(jQuery));
