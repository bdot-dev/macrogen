/*
 * Paging template
 * 	- methods : parent Vue method pageMove 선언 필수
 */
Vue.component('vue-pagination',{
	props: ['pagination'],
	data : function () {
		return {
		}
	},
	methods : {
		pageMove : function (page){
			page = page <= 0 ? 1 : page ;
			page = page > this.pagination.totalPageCount ? this.pagination.totalPageCount : page ;
			console.log("pageMove", page);
			/*this.currentPageNo = page;
			this.fetchData();*/
			if (this.pageMove) {
				this.$emit('page-move', page);
			} else {
				console.log("pagination componect parent 'pagemove(page)' method undefined!!!!");
			}
		}
	},
	template : '\
		<ul class="pagination">\
		<li>\
			<template v-if="pagination.totalPageCount > pagination.pageSize">\
				<a v-if="pagination.currentPageNo > 1" v-on:click="pageMove(pagination.firstPageNo)" class="first" style="cursor:pointer;" >← First</a>\
				<a v-if="pagination.currentPageNo > 1" v-on:click="pageMove(pagination.currentPageNo - 5)" class="prev" style="cursor:pointer;" >← Prev</a>\
			</template>\
			<template v-for="pg in (pagination.firstPageNoOnPageList, pagination.lastPageNoOnPageList)" v-if="pg >= pagination.firstPageNoOnPageList">\
				<template v-if="pagination.currentPageNo === pg">\
						<a v-on:click="pageMove(pg)"  class="active" style="cursor:pointer;" >{{pg}}</a>\
				</template>\
				<template v-if="pagination.currentPageNo != pg">\
						<a v-on:click="pageMove(pg)" style="cursor:pointer;" >{{pg}}</a>\
				</template>\
			</template>\
			<template v-if="pagination.totalPageCount > pagination.pageSize">\
				<a v-if="pagination.currentPageNo < pagination.lastPageNo" v-on:click="pageMove(pagination.currentPageNo + 5)" class="next" style="cursor:pointer;" >Next →</a>\
				<a v-if="pagination.currentPageNo < pagination.lastPageNo" v-on:click="pageMove(pagination.lastPageNo)" class="last" style="cursor:pointer;" >Last →</a>\
			</template>\
		</li>\
	</ul>'
});
