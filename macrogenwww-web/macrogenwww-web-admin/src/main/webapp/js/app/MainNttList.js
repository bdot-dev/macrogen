var MainNttList = (function($) {

	var options, $form;

	var init = function(_options) {
		options = _options;
		$form = $('#listForm');
		initVue();
	};
	
	var initVue = function() {
		vue = new Vue({
			el : '.vuelayer',
			data: {
				listVo : {},
				resultList : [],
				paginationInfo : {},
				expsrYnList : [],
			},
			created : function() {
				var vm = this;
				vm.listVo = options.listVo;
				vm.fetchData();
			},
			methods : {
				fetchData : function() {
					var vm = this;
					
					//console.log(vm.listVo);
					
					$.ajax({ dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/main-' + options.mainBbsId + '/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function(data) {
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
						vm.expsrYnList = data.expsrYnList;
					});
											
				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onAdd : function() {
					$form.attr({
						action : '/' + options.lang + '/main-' + options.mainBbsId + '/form',
						method : 'post'
					}).submit();
				},
				onSaveSort : function (){
					var vm = this;
					if (!vm.resultList || vm.resultList.length <= 0) return;
					
					for(var i=0; i < vm.resultList.length; i++){
						if(vm.resultList[i].expsrPrty == 0 || vm.resultList[i].expsrPrty == ''){
							alert("노출순서를 입력해주세요.");
							$("#expsrPrty" + i).focus();
							return false;
						}
					}
					
					$.ajax({
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json',
						url : '/' + options.lang + '/main-' + options.mainBbsId + '/expsrPrtySave',
						data : JSON.stringify(vm.resultList)
					}).done(function (data){
						alert('노출순서가 저장되었습니다.');
					});
				},
				
				onViewLink : function(mainNttsn) {
					$form.attr({
						action: '/' + options.lang + '/main-' + options.mainBbsId + '/form/' + mainNttsn,
						method : 'post'
					}).submit();
				},			
				pageMove : function(page) {
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
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