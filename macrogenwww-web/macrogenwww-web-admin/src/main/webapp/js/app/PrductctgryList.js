var PrductctgryList = (function($) {

	// define variables
	var $jstree
	var options;

	var init = function(_options) {
		options = _options;

		// init variables
		$jstree = $('#jstree');

		// bind event
		$jstree.on('create_node.jstree', onCreateNode);
		$jstree.on('move_node.jstree', onMoveNode);
		$jstree.on('select_node.jstree', onSelectNode);
		//$jstree.on('rename_node.jstree', onRenameNode);
		$jstree.on('loaded.jstree', onloadedNode);

		// load data and init tree
		initTree();

		initCtgryVue();

	};

	var initCtgryVue = function() {
		ctgryVue = new Vue({
			el: '#ctgryLayer',
			data: {
				ctgry: {},
				expsrYnList: [],
			},
			methods: {
				onclickSave: function() {
					save();
				},
			}
		});
	};

	var save = function() {

		var $ctgryNm = $('#ctgryNm', '#ctgryLayer ');
		var $ctgryNmKo = $('#ctgryNmKo', '#ctgryLayer ');
		var $ctgryNmEn = $('#ctgryNmEn', '#ctgryLayer ');
		var $ctgryNmZh = $('#ctgryNmZh', '#ctgryLayer ');

		if (!$ctgryNm.val()) {
			alert('필수입력입니다.');
			$ctgryNm.focus();
			return false;
		}

		$.ajax({type: 'post', dataType: 'json',
			url: '/prductctgry/update',
			contentType: "application/json",
			data: JSON.stringify(ctgryVue.ctgry),
			success: function(data) {
				if (data && data.result === 'success') {
					// tree text 변경
					var node = $jstree.jstree(true).get_node(ctgryVue.ctgry.id);
					$jstree.jstree('rename_node', node, ctgryVue.ctgry.text);
					alert("저장되었습니다");
				} else {
					alert('데이터 처리 도중 에러가 발생하였습니다.');
					return false;
				}
			}
		});
	};

	var onSelectNode = function(e, treedata) {
		$.ajax({type: 'post', dataType: 'json',
			url: '/prductctgry/viewData',
			data: {ctgrySn: treedata.node.id},
			success: function(data) {
				if (data) {
					ctgryVue.ctgry = data.ctgry;
					ctgryVue.expsrYnList = data.expsrYnList;
					$.cookie("prductctgry.selectedNode.id", treedata.node.id);
				} else {
					alert('데이터 처리 도중 에러가 발생하였습니다.');
					return false;
				}
			}
		});


	};

	var onCreateNode = function(e, treedata) {
		var ctgryNm = 'New'
		$.ajax({type: 'post', dataType: 'json',
			url: '/prductctgry/insert',
			data: {upperCtgrySn:treedata.node.parent, ctgryNm:ctgryNm, expsrYn : 'N'},
			success: function(data) {
				if (data && data.result === 'success') {
					$jstree.jstree(true).set_id(treedata.node, data.ctgry.id);
					$jstree.jstree(true).set_text(treedata.node, data.ctgry.text);
				} else {
					alert('데이터 처리 도중 에러가 발생하였습니다.');
					$jstree.jstree('delete_node', treedata.node);
					return false;
				}
			}
		});
	};

	var deletNode = function(node) {
		if (!confirm('삭제하시겠습니까?')) {
			return false;
		}
		$.ajax({type: 'post', dataType: 'json',
			url: '/prductctgry/delete',
			data: {ctgrySn:node.id},
			success: function(data) {
				if (data && data.result === 'success') {
					$jstree.jstree('delete_node', node);
					ctgryVue.ctgry = "";
				} else if(data.result === 'faild'){
					alert("사용중인 카테고리입니다. (제품, 취급품목, 하위카테고리등 제거하시고 삭제해주세요 )");
					return false;
				} else {
					alert('데이터 처리 도중 에러가 발생하였습니다.');
					return false;
				}
			}
		});

	};

	var onMoveNode = function(e, treedata) {
		var ctgrySn = treedata.node.id;
		var upperCtgrySn = (treedata.parent == '#' ? null : treedata.parent);

		// get 하위노드 ID 구하기
		var parentNode = $jstree.jstree(true).get_node(treedata.parent);
		var childrenDom = $jstree.jstree(true).get_children_dom(parentNode);
		var children = [];
		$.each(childrenDom, function(index, item) {
			children.push({id: item.id});
		});
		console.log(childrenDom);

		$.ajax({type: 'post', dataType: 'json',
			url: '/prductctgry/move',
			contentType: "application/json",
			data: JSON.stringify({id: ctgrySn, parentId: upperCtgrySn, children: children}),
			success: function(data) {
			}
		});
	};

	// load data and init tree
	var initTree = function() {
		$.ajax({
			type : 'post', dataType : 'json',
			url : '/prductctgry/treeData',
			contentType: "application/json",
			data: JSON.stringify({topmostYn : "Y"})
		}).done(function(data) {
			$jstree.jstree({
				"plugins" : ["types", "contextmenu", "dnd"],
				/*"types" : { "default" : {"icon" : "icon-hdd"} },*/
				"core" : {
					"check_callback" : true,
					"data" : data.ctgryList
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
									deletNode(node);
								}
							}
						};
					}
				}
			});
		});

	};

	var onloadedNode = function() {
		// init selected from cookie
		if ($.cookie("prductctgry.selectedNode.id")) {
			var nodeId = $.cookie("prductctgry.selectedNode.id");
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
