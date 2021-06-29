var PrductctgryAjaxHtml = (function ($) {

	var $jstree, options, ctgryList;

	var init = function (_options) {
		options = _options;

		$jstree = $("#jstree");

		// bind event
		$jstree.on('loaded.jstree', onloadedNode);
		$(".submitBtn").on("click", submitEvent);
		$(".cancelBtn").on("click", cancelEvent);

		initTree();
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

	var initTree = function() {
		var inData;
		$.ajax({
			type : 'post', dataType : 'json',
			url : '/prductctgry/treeData',
			contentType: "application/json",
			data: JSON.stringify({topmostYn : "Y"}),
		}).done(function(data) {
			ctgryList = data.ctgryList;
			$jstree.jstree({
				"core" : {
					"data" : data.ctgryList
				}
			});
		});

	};
	var submitEvent = function() {
		var callback = getFunctionByNm($('#popup_result').data('callback'));
		if (!callback) {
			closePopup();
			return false;
		}

		var selectedList = getSelectedCtgryList();
		console.log(selectedList);
		if (selectedList && selectedList.length > 0) {
			callback(selectedList);
		}

		closePopup();
	};
	var cancelEvent = function (){
		closePopup();
	};
	var getSelectedCtgryList = function() {
		var selectedCtgryList = [];
		var selectedIdList = $jstree.jstree('get_selected');
		$(selectedIdList).each(function(index, id) {
			var node = $jstree.jstree().get_node(id);
			console.log(node.id, node.text, node.original.ctgryNmPath);
			selectedCtgryList.push({
				ctgrySn : node.id,
				ctgryNm : node.text,
				ctgryNmPath : node.original.ctgryNmPath
			});
		});
		return selectedCtgryList;
	};

	return {
		init: init
	};
}(jQuery));
