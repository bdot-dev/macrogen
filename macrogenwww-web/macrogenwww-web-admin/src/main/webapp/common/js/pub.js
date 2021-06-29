$(function(){
	$(document).ready(function(){
		$('.select_theme button').on('click', function() {
			$('body').removeClass();
			var changeTheme = $(this).attr('class').substr(4);
			$('body').addClass(changeTheme);
		});
		$('.tab_wrap li').on('click', function(){
			$('.tab_wrap li').removeClass('active');
			var liIdx = $(this).index();
			$('.tab_wrap li').eq(liIdx).addClass('active');
		});
		$( '.datepicker' ).datepicker({
			dateFormat: 'yy-mm-dd',
			prevText: '이전 달',
			nextText: '다음 달',
			monthNames: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
			monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
			dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			showAnim: "fadeIn",
			showOn: "button",
			buttonImage: "/images/calendar.png",
			buttonImageOnly: false,
			buttonText: "a"
		});
	});
});
