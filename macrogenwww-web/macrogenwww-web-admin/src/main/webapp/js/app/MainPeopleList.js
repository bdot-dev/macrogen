var MainPeopleList = (function($) {

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
				sortOrdrList : [],
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
						vm.sortOrdrList = data.sortOrdrList;
					});

				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onAdd : function() {
					$form.attr({
						action : '/' + options.lang + '/main-people/form',
						method : 'post'
					}).submit();
				},
				onSaveSort : function (){
					var vm = this;
					if (!vm.resultList || vm.resultList.length <= 0) return;

					for(var i=0; i < vm.resultList.length; i++){
						if(vm.resultList[i].sortOrdr == 0 || vm.resultList[i].sortOrdr == ''){
							alert("노출순서를 입력해주세요.");
							$("#sortOrdr" + i).focus();
							return false;
						}
					}

					$.ajax({
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json',
						url : '/' + options.lang + '/main-people/list/updateSortOrdr',
						data : JSON.stringify(vm.resultList)
					}).done(function (data){
						alert('노출순서가 저장되었습니다.');
					});
				},

				onViewLink : function(peopleSn) {
					$form.attr({
						action: '/' + options.lang + '/main-people/form/' + peopleSn,
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