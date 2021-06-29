var RoleForm = (function($) {

	var options, $form, $jstree;

	var init = function(_options) {
		options = _options;

		// init variables
		$form = $('#editForm');
		$jstree = $('#jstree');

		// bind event
		$form.find(".btnSave").on('click', onclickSave);
		$form.find(".btnDelete").on('click', onclickDelete);
		$form.find(".btnList").on('click', onclickList);
		
		$jstree.on('loaded.jstree', onloadedMenuNode);

		initMenuTree();
	};
	
	var onclickSave = function() {
		// validate
		validator = $form.validate(options.validateOptions);
		if (!$form.valid()) {
			return false;
		}
		
		if (!confirm('저장하시겠습니까?')) {
			return false;
		}

		var checkedList = $jstree.jstree('get_selected') || [];
		$('#menuSnList').val(checkedList.toString());

		var pendncyList = [];
		$jstree.find(".jstree-undetermined").each(function (index, item) {
			pendncyList.push($(item).parent().parent().attr("id"));
		});
		$('#pendncyMenuSnList').val(pendncyList.toString());
		console.log("pendncyList:", pendncyList)
		
		var accessSnList = [];
		$("input[name=accessSn]:checked").each(function (index, docs){
			accessSnList.push(docs.value)
		});
		$('#accessSnList').val(accessSnList.toString());
		console.log("accessSnList:", accessSnList);
		
		$form.ajaxSubmit({
			type: 'post', dataType: 'json',
			url: '/role/submit',
			success: function(data) {
				if (data && typeof data !== 'object') {
					data = $.parseJSON(data);
				}
				if (data && data.result === 'success') {
					alert('저장되었습니다.');
					goList();
				}
			}
		});
	};
	
	var onclickDelete = function() {
		if (!$form.find('#roleId').val()) {
			alert('비정상접근입니다.');
			return false;
		}
		
		if (!confirm('삭제하시겠습니까?')) {
			return false;
		}

		$form.ajaxSubmit({
			type: 'post', dataType: 'json',
			url: '/role/delete',
			success: function(data) {
				if (data && typeof data !== 'object') {
					data = $.parseJSON(data);
				}
				if (data && data.result === 'success') {
					alert('삭제되었습니다.');
					goList();
				}
			}
		});
	};
	
	var onclickList = function() {
		goList();
	};
	
	// load data and init tree
	var initMenuTree = function() {
		$.ajax({
			type : 'post', dataType : 'json',
			url : '/mngrmenu/treeData',
		}).done(function(data) {
			$jstree.jstree({
				plugins: ["checkbox"],
				core: {
					"data" : data.menuList
				},
			});
		});
	};

	var onloadedMenuNode = function() {
		var roleId = $('#roleId').val();
		if (!roleId) {
			return false;
		}
		
		// set checked
		$.ajax({
			type : 'post', dataType : 'json',
			url : '/mngrmenu/listData',
			data : { roleId: roleId }
		}).done(function(data) {
			if (!data.menuList || data.menuList.length < 1) {
				return false;
			}
			
			var checkedList = [];
			$.each(data.menuList, function(index, menu) {
				if (menu.pendncyYn === 'N') {
					var children = $jstree.jstree().get_node(menu.id).children;
					if (!children || children.length == 0) {
						checkedList.push(menu.id);
					}
				}
			});
			console.log('checked:', checkedList)
			$jstree.jstree(true).select_node(checkedList);
		});
		
	};

	var goList = function() {
		var $listForm = $('#listForm');
		$listForm.attr('action', '/role/list');
		$listForm.submit();
	};

	return {
		init: init
	};
}(jQuery));
