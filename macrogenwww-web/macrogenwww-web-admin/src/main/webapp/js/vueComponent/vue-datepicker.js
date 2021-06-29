Vue.component('vue-datepicker', {
	props: ['value', 'buttonimage'],
	mounted: function() {
		var self = this;
		$(this.$el).datepicker({
			showOn: 'both',
			dateFormat: 'yy-mm-dd',
			buttonImage: self.buttonimage,
			onSelect: function(d) {
				self.$emit('input', d);
			},
		}).on('change', function() {
			self.$emit('input', $(this).val());
		});
	},
	methods: {
		formatDate: function(date) {
			return date ? moment(date).format('YYYY-MM-DD') : ''
		}
	},
	beforeDestroy: function() {
		$(this.$el).datepicker('hide').datepicker('destroy');
	},
	template : '<input :value="formatDate(value)" size="16" />'
});
