/*
 * Paging template
 * 	- methods : parent Vue method pageMove 선언 필수
 */
/*<script type="text/x-template" id="template"></script> === <template id="template"></template>*/
/*
<template id="jstree-template">
	<div class="tree jstree" id="jstree"></div>
</template>
*/
<div class="tree jstree" id="jstree"></div>
Vue.component('vue-jstree',{
	template : '#jstree-template', 
	props: ['treedata'],
	data : function () {
		return {
			$jstree: null;
		}
	},
	methods : {
	},
	mounted: function() {
		var vm = this;
		vm.$jstree = $('#jstree');
		vm.$jstree.jstree({
			"plugins" : ["types", "contextmenu", "dnd"],
			"core" : {
				"check_callback" : true,
				"data" : vm.treedata
			},
			"contextmenu" : {
				"items" : function(node) {
					var tree = vm.$jstree.jstree(true);
					return {
						"Create" : {
							"separator_before" : false,
							"separator_after" : false,
							"label" : "Create",
							"action" : function(obj) {
								if (confirm('생성하시겠습니까?')) {
									node = vm.$jstree.jstree('create_node', node);
									vm.$jstree.jstree('edit', node);
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
		
		
	},
});
