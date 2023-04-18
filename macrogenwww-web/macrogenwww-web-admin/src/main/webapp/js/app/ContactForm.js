var ContactForm = (function($) {
	
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
				contactSn : options.contactSn,
				resultVo : {},
				submitFlag : false,
				nationCodeList: [],
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
						url : '/' + options.lang + '/contact/form/data',
						data : JSON.stringify({ contactSn : vm.contactSn }),
					}).done(function(data) {
						vm.resultVo = data.resultVo;
						vm.nationCodeList = data.nationCodeList;
					});
				},
				onDelete : function() {
					var vm = this;
		
					if (!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/contact/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						goList();
					});
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
		$listForm.attr('action', '/' + options.lang + '/contact/list');
		$listForm.submit();
	};
	
	return {
		init : init,
	};
	
}(jQuery));