var ipForm = (function($) {

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
				ipVo : {col : options.col},
				resultVo : {},
				submitFlag : false,
				useYnList			:	[],
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
						url : '/ip/form/data',
						contentType : 'application/json',
						data : JSON.stringify(vm.ipVo)
					}).done(function (data){
						vm.resultVo = data.resultVo;
						vm.useYnList = data.useYnList;
					});
				},
				onList : function() {
					goList();
				},
				onSubmit : function() {
					var vm = this;
					if (vm.submitFlag) {
						alert('처리중입니다....');
						return false;
					}

					if(!vm.resultVo.ip){
						alert("아이피를 입력하세요.");
						$("#ip").focus();
						return false;
					}else if(vm.resultVo.ip!=null) {
						var ipformat = /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/;
						
						if(!$("input[name=ip]").val().match(ipformat)){
							alert("유효하지 않은 아이피입니다");
							$("#ip").focus();
							$("#ip").val("");
							return false;
						}
					}
					
					if(!vm.resultVo.title){
						alert("접속지를 입력하세요.");
						$("#title").focus();
						return false;
					}
					
					if(!vm.resultVo.useYn){
						alert("사용여부를 선택하세요.");
						$("input[name=useYn]").focus();
						return false;
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
						url : '/ip/submit',
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
						url : '/ip/delete',
						data : JSON.stringify(vm.resultVo),
					}).done(function(data) {
						vm.submitFlag = false;

						alert('삭제되었습니다.');
						goList();
					});
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
		$listForm.attr('action', '/ip/list');
		$listForm.submit();
	};

	return {
		init : init
	};
}(jQuery));