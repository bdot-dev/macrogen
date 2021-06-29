var MngrmenuList = (function($) {

	// define variables
	var $jstree
	var options;

	var init = function(_options) {
		options = _options;

		// init variables
		$jstree = $('#jstree');

		// bind event
		$jstree.on('create_node.jstree', onCreateMenuNode);
		$jstree.on('move_node.jstree', onMoveMenuNode);
		$jstree.on('select_node.jstree', onSelectMenuNode);
		//$jstree.on('rename_node.jstree', onRenameMenuNode);
		$jstree.on('loaded.jstree', onloadedMenuNode);

		// load data and init tree
		initMenuTree();

		initMenuVue();
	};

	var initMenuVue = function() {
		menuVue = new Vue({
			el: '#menuLayer',
			data: {
				menu: {},
			},
			methods: {
				onclickSave: function() {
					save();
				}
			}
		});
	};

	var save = function() {
		console.log('menuVue.menu:', JSON.stringify(menuVue.menu));
		$.ajax({type: 'post', dataType: 'json',
			url: '/mngrmenu/update',
			contentType: "application/json",
			data: JSON.stringify(menuVue.menu),
			success: function(data) {
				if (data && data.result === 'success') {
					// tree text 변경
					var node = $jstree.jstree(true).get_node(menuVue.menu.id);
					$jstree.jstree('rename_node', node, menuVue.menu.text);
					alert("저장되었습니다");
				} else {
					alert('데이터 처리 도중 에러가 발생하였습니다.');
					return false;
				}
			}
		});
	};

	var onSelectMenuNode = function(e, treedata) {
		$.ajax({type: 'post', dataType: 'json',
			url: '/mngrmenu/viewData',
			data: {menuSn: treedata.node.id},
			success: function(data) {
				if (data && data.result === 'success') {
					menuVue.menu = data.mngrmenu;

					$.cookie("mngrmenu.selectedNode.id", treedata.node.id);
				} else {
					alert('데이터 처리 도중 에러가 발생하였습니다.');
					return false;
				}
			}
		});


	};

	var onCreateMenuNode = function(e, treedata) {
		var menuNm = 'New'
		$.ajax({type: 'post', dataType: 'json',
			url: '/mngrmenu/insert',
			data: {upperMenuSn:treedata.node.parent, menuNm:menuNm},
			success: function(data) {
				if (data && data.result === 'success') {
					$jstree.jstree(true).set_id(treedata.node, data.mngrmenu.id);
					$jstree.jstree(true).set_text(treedata.node, data.mngrmenu.text);
				} else {
					alert('데이터 처리 도중 에러가 발생하였습니다.');
					$jstree.jstree('delete_node', treedata.node);
					return false;
				}
			}
		});
	};

	var deletMenuNode = function(node) {
		if (!confirm('삭제하시겠습니까?')) {
			return false;
		}
		$.ajax({type: 'post', dataType: 'json',
			url: '/mngrmenu/delete',
			data: {menuSn:node.id},
			success: function(data) {
				if (data && data.result === 'success') {
					$jstree.jstree('delete_node', node);
					menuVue.menu = {};
				} else {
					alert('데이터 처리 도중 에러가 발생하였습니다.');
					return false;
				}
			}
		});

	};

	var onMoveMenuNode = function(e, treedata) {
		var menuSn = treedata.node.id;
		var upperMenuSn = (treedata.parent == '#' ? null : treedata.parent);

		// get 하위노드 ID 구하기
		var parentNode = $jstree.jstree(true).get_node(treedata.parent);
		var childrenDom = $jstree.jstree(true).get_children_dom(parentNode);
		var children = [];
		$.each(childrenDom, function(index, item) {
			children.push({id: item.id});
		});
		console.log(childrenDom);

		$.ajax({type: 'post', dataType: 'json',
			url: '/mngrmenu/move',
			contentType: "application/json",
			data: JSON.stringify({id: menuSn, parentId: upperMenuSn, children: children}),
			success: function(data) {
			}
		});
	};

	// load data and init tree
	var initMenuTree = function() {
		$.ajax({
			type : 'post', dataType : 'json',
			url : '/mngrmenu/treeData',
		}).done(function(data) {
			console.log('data.menuList:', JSON.stringify(data.menuList));
			$jstree.jstree({
				"plugins" : ["types", "contextmenu", "dnd"],
				/*"types" : { "default" : {"icon" : "icon-hdd"} },*/
				"core" : {
					"check_callback" : true,
					"data" : data.menuList
				},
				"contextmenu" : {
					"items" : function(node) {
						var tree = $jstree.jstree(true);
						return {
							"Create" : {
								"separator_before" : false,
								"separator_after" : false,
								"label" : "Create",
								"action" : function(obj) {
									if (confirm('생성하시겠습니까?')) {
										node = $jstree.jstree('create_node', node);
										$jstree.jstree('edit', node);
									} else {
										return false;
									}
								}
							},
							"Remove" : {
								"separator_before" : false,
								"separator_after" : false,
								"label" : "Remove",
								"action" : function(obj) {
									deletMenuNode(node);
								}
							}
						};
					}
				}
			});
		});

	};

	var onloadedMenuNode = function() {
		// init selected from cookie
		if ($.cookie("mngrmenu.selectedNode.id")) {
			var nodeId = $.cookie("mngrmenu.selectedNode.id");
			var node = $jstree.jstree(true).get_node(nodeId);
			if (node) {
				$jstree.jstree('select_node', node);
			}
		}

	};

	return {
		init: init
	};
}(jQuery));
