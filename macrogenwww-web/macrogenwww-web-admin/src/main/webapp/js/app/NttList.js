var nttList = (function($) {

	var options, $form;

	var init = function (_options){
		options = _options;
		$form = $('#listForm');

		initVue();
	},
	initVue = function (){
		vue = new Vue({
			el : '.vuelayer',
			data : {
				paginationInfo : {},
				listVo : {},
				resultList : [],
				recordCountPerPageList : [],
				bbsCtgryList : [],
				expsrYnList : [],
				checkedPkList: [],
			},
			created : function (){
				var vm = this;
				vm.listVo = options.listVo;
				vm.fetchData();
			},
			methods : {
				fetchData : function (){
					var vm = this;
					$.ajax({
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json',
						url : '/' + options.lang + '/' + options.bbsId + '/list/data',
						data : JSON.stringify(vm.listVo)
					}).done(function (data){
						vm.resultList = data.resultList;
						vm.paginationInfo = data.paginationInfo;
						vm.recordCountPerPageList = data.recordCountPerPageList;
						vm.bbsCtgryList = data.bbsCtgryList;
						vm.expsrYnList = data.expsrYnList;
					});
				},
				onSearch : function() {
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onRecordCountPerPage : function (event){
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onOrderBy : function (event){
					var vm = this;
					vm.listVo.pageIndex = 1;
					vm.fetchData();
				},
				onViewLink : function (nttSn){
					$form.attr({
						action: '/' + options.lang + '/' + options.bbsId + '/form/' + nttSn ,
						method : 'POST'
					}).submit();
				},
				pageMove : function(page) {
					var vm = this;
					vm.listVo.pageIndex = page;
					vm.fetchData();
				},
				onAdd : function() {
					var vm = this;
					vm.listVo.nttSn = '';
					$form.attr({
						action: '/' + options.lang + '/' + options.bbsId + '/form/' ,
						method : 'POST'
					}).submit();
				},
				checkAll: function(e) {
					var vm = this;
					vm.checkedPkList = [];
					if (e.target.checked) {
						vm.resultList.forEach(function(result) {
							vm.checkedPkList.push(result.nttSn);
						});
					}
				},
				onDeleteChecked : function() {
					var vm = this;
					if (vm.checkedPkList.length <= 0) {
						alert('삭제할 항목을 선택해 주세요.');
						return false;
					}

					if (vm.checkedPkList.length > 0 &&
							!confirm('삭제된 데이터는 복구할 수 없습니다.\n삭제하시겠습니까?')) {
						return false;
					}
					$.ajax({dataType : 'json', type : 'post',
						contentType : 'application/json',
						url : '/' + options.lang + '/' + options.bbsId + '/deleteList',
						data : JSON.stringify({ nttSnList : vm.checkedPkList }),
					}).done(function(data) {
						vm.fetchData();
						vm.checkedPkList = [];
					});

				},
			}
		});
	};

	return {
		init : init
	};
}(jQuery));
