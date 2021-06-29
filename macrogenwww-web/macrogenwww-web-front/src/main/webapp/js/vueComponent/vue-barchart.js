const BarChart = Vue.component('vue-barchart', {
	template: '\
		<div class="widget-chart">\
			<!-- <p>serieslist:{{ serieslist }}</p> -->\
			<div :id="renderid" class="chart" style="border:0px !important;background-color:#ffffff;"></div>\
		</div>',
	props: ['serieslist', 'renderid'],
	data: function() {
		return{
			chart:undefined
		}
	},
	methods: {
		redraw: function() {
			var vm = this;
			console.log('this.serieslist:', vm.serieslist);
			// vm.chart.setSeries(vm.serieslist);
			
			// set x-label
			vm.chart.xAxis[0].setCategories(vm.xcategories);

			// set series data
			$.each(this.serieslist, function(index, item) {
				console.log(index, item);
				vm.chart.series[index].setData(item.data, true);
			});
		}
	},
	watch: {
		serieslist: function() {
			this.redraw(); 
		},
	},
	computed: {
		xcategories: function() {
			if (this.serieslist && this.serieslist.length > 0) {
				return $.map(this.serieslist[0].data, function(item) { 
					return item[0]; });
			} else {
				return null;
			}
		}
	},
	mounted: function() {
		var vm = this;
		console.log('mounted)this.serieslist:', this.serieslist);
		
		var highchartsOptions = {
			chart: {
				type: 'bar', renderTo: this.renderid
			},
		    series: vm.serieslist,
			xAxis: {
				categories: this.xcategories
			},
			title: { 
		    	text: '' 
		    },
			legend: {
				layout: 'vertical', align: 'right', verticalAlign: 'middle'
		    },
			plotOptions: {
				series: {
					minPointLength: 3
				}
			},
    	};
		console.log(highchartsOptions);
		this.chart = new Highcharts.chart(highchartsOptions);
	}
});
